import { useEffect, useMemo, useState } from "react";
import { api, getAuthToken } from "../api.js";
import "../App.css";

function formatCorrelation(value) {
    return value === null || value === undefined
        ? "Nije moguće izračunati"
        : Number(value).toFixed(3);
}

function isWithinRange(value, min, max) {
    if (min === "" && max === "") return true;
    if (value === null || value === undefined) return false;

    const numericValue = Number(value);
    return (min === "" || numericValue >= Number(min))
        && (max === "" || numericValue <= Number(max));
}

export default function DiscriminationPage() {
    const [items, setItems] = useState([]);
    const [loading, setLoading] = useState(true);
    const [error, setError] = useState("");
    const [category, setCategory] = useState("");
    const [categoryCorrelationMin, setCategoryCorrelationMin] = useState("");
    const [categoryCorrelationMax, setCategoryCorrelationMax] = useState("");
    const [questionnaireCorrelationMin, setQuestionnaireCorrelationMin] = useState("");
    const [questionnaireCorrelationMax, setQuestionnaireCorrelationMax] = useState("");

    useEffect(() => {
        const loadDiscrimination = async () => {
            try {
                setLoading(true);
                setError("");
                const response = await api.get("/quiz/admin/item-discrimination", {
                    headers: { Authorization: `Bearer ${getAuthToken()}` },
                });
                setItems(response.data);
            } catch {
                setError("Ne mogu dohvatiti analizu diskriminativnosti čestica.");
            } finally {
                setLoading(false);
            }
        };

        loadDiscrimination();
    }, []);

    const categories = useMemo(
        () => [...new Set(items.map((item) => item.categoryName))].sort((first, second) => first.localeCompare(second)),
        [items]
    );

    const filteredItems = useMemo(
        () => items.filter((item) => (
            (category === "" || item.categoryName === category)
            && isWithinRange(item.categoryCorrectedItemTotalCorrelation, categoryCorrelationMin, categoryCorrelationMax)
            && isWithinRange(item.questionnaireCorrectedItemTotalCorrelation, questionnaireCorrelationMin, questionnaireCorrelationMax)
        )),
        [items, category, categoryCorrelationMin, categoryCorrelationMax, questionnaireCorrelationMin, questionnaireCorrelationMax]
    );

    const resetFilters = () => {
        setCategory("");
        setCategoryCorrelationMin("");
        setCategoryCorrelationMax("");
        setQuestionnaireCorrelationMin("");
        setQuestionnaireCorrelationMax("");
    };

    return (
        <div className="admin-tool-page">
            <div className="title">Diskriminativnost</div>
            <div className="admin-tool-card">
                {!loading && !error && items.length > 0 && (
                    <div className="item-analysis-filters">
                        <label>
                            Kategorija pitanja
                            <select value={category} onChange={(event) => setCategory(event.target.value)}>
                                <option value="">Sve kategorije</option>
                                {categories.map((categoryName) => (
                                    <option key={categoryName} value={categoryName}>{categoryName}</option>
                                ))}
                            </select>
                        </label>
                        <label>
                            Korelacija kategorije od
                            <input type="number" step="0.01" value={categoryCorrelationMin}
                                   onChange={(event) => setCategoryCorrelationMin(event.target.value)}/>
                        </label>
                        <label>
                            Korelacija kategorije do
                            <input type="number" step="0.01" value={categoryCorrelationMax}
                                   onChange={(event) => setCategoryCorrelationMax(event.target.value)}/>
                        </label>
                        <label>
                            Korelacija upitnika od
                            <input type="number" step="0.01" value={questionnaireCorrelationMin}
                                   onChange={(event) => setQuestionnaireCorrelationMin(event.target.value)}/>
                        </label>
                        <label>
                            Korelacija upitnika do
                            <input type="number" step="0.01" value={questionnaireCorrelationMax}
                                   onChange={(event) => setQuestionnaireCorrelationMax(event.target.value)}/>
                        </label>
                        <button className="btn item-analysis-reset" type="button" onClick={resetFilters}>Poništi
                            filtre
                        </button>
                    </div>
                )}

                {loading && <p className="admin-tool-note">Učitavam analizu...</p>}
                {error && <p className="validation-error">{error}</p>}
                {!loading && !error && items.length === 0 && (
                    <p className="admin-tool-note">Još nema riješenih pitanja za izračun.</p>
                )}
                {!loading && !error && items.length > 0 && filteredItems.length === 0 && (
                    <p className="admin-tool-note">Nema pitanja koja odgovaraju odabranim filtrima.</p>
                )}
                {!loading && !error && filteredItems.length > 0 && (
                    <div className="item-analysis-table-wrap">
                        <table className="item-analysis-table">
                            <thead>
                            <tr>
                                <th>Pitanje</th>
                                <th>Kategorija</th>
                                <th>Korigirana item-total korelacija kategorije</th>
                                <th>Korigirana item-total korelacija upitnika</th>
                            </tr>
                            </thead>
                            <tbody>
                            {filteredItems.map((item) => (
                                <tr key={item.questionId}>
                                    <td>{item.questionText}</td>
                                    <td>{item.categoryName}</td>
                                    <td>{formatCorrelation(item.categoryCorrectedItemTotalCorrelation)}</td>
                                    <td>{formatCorrelation(item.questionnaireCorrectedItemTotalCorrelation)}</td>
                                </tr>
                            ))}
                            </tbody>
                        </table>
                    </div>
                )}

                <div className="item-analysis-legend" aria-label="Legenda diskriminativnosti">
                    <strong>Legenda</strong>
                    <span>r &lt; 0 — problematično</span>
                    <span>r = 0–0,19 — slaba diskriminativnost</span>
                    <span>r = 0,20–0,29 — prihvatljiva diskriminativnost</span>
                    <span>r = 0,30–0,39 — dobra diskriminativnost</span>
                    <span>r ≥ 0,40 — vrlo dobra diskriminativnost</span>
                </div>
                <p className="admin-tool-description">
                    *Korigirana item-total korelacija je Pearsonova korelacija točnosti odgovora na pitanje i rezultata
                    bez tog pitanja.
                </p>
            </div>
        </div>
    );
}
