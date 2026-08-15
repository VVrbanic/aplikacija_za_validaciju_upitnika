import { useEffect, useMemo, useState } from "react";
import { Bar, BarChart, CartesianGrid, Line, LineChart, ResponsiveContainer, Tooltip, XAxis, YAxis } from "recharts";
import { api, getAuthToken } from "../api.js";
import "../App.css";

const EASE_LEVELS = [
    { value: "very-hard", label: "Vrlo teško", min: 0, max: 0.2 },
    { value: "hard", label: "Teško", min: 0.2, max: 0.4 },
    { value: "medium-hard", label: "Srednje teško", min: 0.4, max: 0.6 },
    { value: "medium-easy", label: "Srednje lako", min: 0.6, max: 0.8 },
    { value: "easy", label: "Lako", min: 0.8, max: 0.9 },
    { value: "very-easy", label: "Vrlo lako", min: 0.9, max: 1 },
];

function getEaseLevel(easeIndex) {
    if (easeIndex === null || easeIndex === undefined) return "Nije moguće izračunati";
    const value = Number(easeIndex);
    if (value < 0.2) return "Vrlo teško";
    if (value < 0.4) return "Teško";
    if (value < 0.6) return "Srednje teško";
    if (value < 0.8) return "Srednje lako";
    if (value < 0.9) return "Lako";
    return "Vrlo lako";
}

function formatIndex(value) {
    return value === null || value === undefined ? "Nije moguće izračunati" : Number(value).toFixed(2).replace(".", ",");
}

function getEaseRowClass(easeIndex) {
    const level = getEaseLevel(easeIndex);
    if (level === "Vrlo teško" || level === "Vrlo lako") return "ease-index-row-alert";
    if (level === "Srednje teško" || level === "Srednje lako") return "ease-index-row-good";
    return "";
}

export default function EaseIndexPage() {
    const [items, setItems] = useState([]);
    const [quizIndexes, setQuizIndexes] = useState([]);
    const [activeTab, setActiveTab] = useState("questions");
    const [questionText, setQuestionText] = useState("");
    const [category, setCategory] = useState("");
    const [easeLevel, setEaseLevel] = useState("");
    const [loading, setLoading] = useState(true);
    const [error, setError] = useState("");

    useEffect(() => {
        const loadEaseIndexes = async () => {
            try {
                setLoading(true);
                setError("");
                const headers = { Authorization: `Bearer ${getAuthToken()}` };
                const [itemsResponse, quizzesResponse] = await Promise.all([
                    api.get("/quiz/admin/ease-index", { headers }),
                    api.get("/quiz/admin/ease-index/quizzes", { headers }),
                ]);
                setItems(itemsResponse.data);
                setQuizIndexes(quizzesResponse.data);
            } catch {
                setError("Ne mogu dohvatiti indekse lakoće pitanja.");
            } finally {
                setLoading(false);
            }
        };
        loadEaseIndexes();
    }, []);

    const categories = useMemo(
        () => [...new Set(items.map((item) => item.categoryName))].sort((first, second) => first.localeCompare(second)),
        [items]
    );

    const filteredItems = useMemo(() => items.filter((item) => (
        item.questionText.toLocaleLowerCase().includes(questionText.toLocaleLowerCase())
        && (category === "" || item.categoryName === category)
        && (easeLevel === "" || getEaseLevel(item.easeIndex) === EASE_LEVELS.find((level) => level.value === easeLevel)?.label)
    )), [items, questionText, category, easeLevel]);

    const categorySummary = useMemo(() => Object.values(items.reduce((groups, item) => {
        const group = groups[item.categoryName] ?? { categoryName: item.categoryName, totalAnswers: 0, correctAnswers: 0 };
        group.totalAnswers += item.totalAnswers;
        group.correctAnswers += item.correctAnswers;
        groups[item.categoryName] = group;
        return groups;
    }, {})).map((group) => ({
        ...group,
        easeIndex: group.totalAnswers === 0 ? null : group.correctAnswers / group.totalAnswers,
    })).sort((first, second) => first.categoryName.localeCompare(second.categoryName)), [items]);

    const quizChartData = useMemo(() => quizIndexes.map((quiz) => ({
        ...quiz,
        easeIndex: quiz.easeIndex === null || quiz.easeIndex === undefined ? null : Number(quiz.easeIndex),
    })), [quizIndexes]);

    const resetFilters = () => { setQuestionText(""); setCategory(""); setEaseLevel(""); };

    return (
        <div className="admin-tool-page">
            <div className="title">Indeks lakoće</div>
            <div className="admin-tool-card">
                <div className="item-analysis-tabs" role="tablist" aria-label="Prikaz indeksa lakoće">
                    <button type="button" role="tab" aria-selected={activeTab === "questions"}
                            className={activeTab === "questions" ? "active" : ""} onClick={() => setActiveTab("questions")}>Po pitanjima</button>
                    <button type="button" role="tab" aria-selected={activeTab === "categories"}
                            className={activeTab === "categories" ? "active" : ""} onClick={() => setActiveTab("categories")}>Po kategorijama</button>
                    <button type="button" role="tab" aria-selected={activeTab === "charts"}
                            className={activeTab === "charts" ? "active" : ""} onClick={() => setActiveTab("charts")}>Grafički prikaz</button>
                </div>

                {loading && <p className="admin-tool-note">Učitavam indekse lakoće...</p>}
                {error && <p className="validation-error">{error}</p>}

                {!loading && !error && activeTab === "questions" && <>
                    {items.length > 0 && <div className="item-analysis-filters ease-index-filters">
                        <label>Tekst pitanja
                            <input value={questionText} onChange={(event) => setQuestionText(event.target.value)} placeholder="Pretraži pitanje" />
                        </label>
                        <label>Kategorija
                            <select value={category} onChange={(event) => setCategory(event.target.value)}>
                                <option value="">Sve kategorije</option>
                                {categories.map((categoryName) => <option key={categoryName} value={categoryName}>{categoryName}</option>)}
                            </select>
                        </label>
                        <label>Indeks lakoće
                            <select value={easeLevel} onChange={(event) => setEaseLevel(event.target.value)}>
                                <option value="">Sve vrijednosti</option>
                                {EASE_LEVELS.map((level) => <option key={level.value} value={level.value}>{level.label}</option>)}
                            </select>
                        </label>
                        <button className="btn item-analysis-reset" type="button" onClick={resetFilters}>Poništi filtre</button>
                    </div>}
                    {items.length === 0 && <p className="admin-tool-note">Nema aktivnih pitanja za izračun.</p>}
                    {items.length > 0 && filteredItems.length === 0 && <p className="admin-tool-note">Nema pitanja koja odgovaraju odabranim filtrima.</p>}
                    {filteredItems.length > 0 && <div className="item-analysis-table-wrap">
                        <table className="item-analysis-table ease-index-table">
                            <thead><tr><th>Pitanje</th><th>Kategorija</th><th>Broj rješavanja</th><th>Indeks lakoće p</th><th>Opisna vrijednost</th></tr></thead>
                            <tbody>{filteredItems.map((item) => <tr key={item.questionId} className={getEaseRowClass(item.easeIndex)}>
                                <td>{item.questionText}</td><td>{item.categoryName}</td><td>{item.totalAnswers}</td><td>{formatIndex(item.easeIndex)}</td><td>{getEaseLevel(item.easeIndex)}</td>
                            </tr>)}</tbody>
                        </table>
                    </div>}
                    <div className="item-analysis-legend ease-index-legend" aria-label="Legenda indeksa lakoće">
                        <strong>Indeks lakoće</strong>
                        <span>0,00≤p&lt;0,20 — Vrlo teško</span>
                        <span>0,20≤p&lt;0,40 — Teško</span>
                        <span>0,40≤p&lt;0,60 — Srednje teško</span>
                        <span>0,60≤p&lt;0,80 — Srednje lako</span>
                        <span>0,80≤p&lt;0,90 — Lako</span>
                        <span>0,90≤p≤1,00 — Vrlo lako</span>
                    </div>
                </>}

                {!loading && !error && activeTab === "categories" && <>
                    {categorySummary.length === 0 ? <p className="admin-tool-note">Nema aktivnih pitanja za izračun.</p> : <div className="item-analysis-table-wrap">
                        <table className="item-analysis-table ease-index-table">
                            <thead><tr><th>Kategorija</th><th>Indeks lakoće p</th><th>Opisna vrijednost</th></tr></thead>
                            <tbody>{categorySummary.map((category) => <tr key={category.categoryName}>
                                <td>{category.categoryName}</td><td>{formatIndex(category.easeIndex)}</td><td>{getEaseLevel(category.easeIndex)}</td>
                            </tr>)}</tbody>
                        </table>
                    </div>}
                </>}

                {!loading && !error && activeTab === "charts" && <div className="ease-index-charts">
                    <section className="ease-index-chart-card">
                        <h2>Indeks lakoće po upitnicima</h2>
                        {quizChartData.length === 0 ? <p className="admin-tool-note">Nema predanih upitnika za prikaz.</p> :
                            <div className="ease-index-chart">
                                <ResponsiveContainer>
                                    <LineChart data={quizChartData} margin={{ top: 10, right: 24, left: 0, bottom: 60 }}>
                                        <CartesianGrid strokeDasharray="3 3" />
                                        <XAxis dataKey="label" angle={-40} textAnchor="end" height={80} />
                                        <YAxis domain={[0, 1]} />
                                        <Tooltip formatter={(value, _name, item) => [formatIndex(value), `Indeks lakoće (${item?.payload?.correctAnswers ?? 0}/${item?.payload?.totalAnswers ?? 0})`]} />
                                        <Line type="monotone" dataKey="easeIndex" name="Indeks lakoće" stroke="#6d5dfc" strokeWidth={2} dot />
                                    </LineChart>
                                </ResponsiveContainer>
                            </div>}
                    </section>
                    <section className="ease-index-chart-card">
                        <h2>Histogram indeksa lakoće po kategorijama</h2>
                        {categorySummary.length === 0 ? <p className="admin-tool-note">Nema riješenih odgovora za prikaz.</p> :
                            <div className="ease-index-chart">
                                <ResponsiveContainer>
                                    <BarChart data={categorySummary} margin={{ top: 10, right: 24, left: 0, bottom: 75 }}>
                                        <CartesianGrid strokeDasharray="3 3" />
                                        <XAxis dataKey="categoryName" angle={-40} textAnchor="end" interval={0} height={95} />
                                        <YAxis domain={[0, 1]} />
                                        <Tooltip formatter={(value, _name, item) => [formatIndex(value), `Indeks lakoće (${item?.payload?.correctAnswers ?? 0}/${item?.payload?.totalAnswers ?? 0})`]} />
                                        <Bar dataKey="easeIndex" name="Indeks lakoće" fill="var(--chart-ease-bar)" />
                                    </BarChart>
                                </ResponsiveContainer>
                            </div>}
                    </section>
                </div>}
            </div>
        </div>
    );
}
