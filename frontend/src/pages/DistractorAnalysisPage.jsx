import { Fragment, useEffect, useMemo, useState } from "react";
import { api, getAuthToken } from "../api.js";
import "../App.css";

function formatNumber(value, digits = 2) {
    return value === null || value === undefined ? "Nije moguće izračunati" : Number(value).toFixed(digits);
}

function formatSelectionPercentage(answer) {
    const percentage = `${formatNumber(answer.selectionPercentage)}%`;
    return !answer.correct && answer.selectionTotalCorrelation < 0 ? `-${percentage}` : percentage;
}

export default function DistractorAnalysisPage() {
    const [questions, setQuestions] = useState([]);
    const [selectedQuestion, setSelectedQuestion] = useState(null);
    const [answers, setAnswers] = useState([]);
    const [loading, setLoading] = useState(true);
    const [detailLoading, setDetailLoading] = useState(false);
    const [error, setError] = useState("");
    const [detailError, setDetailError] = useState("");
    const [category, setCategory] = useState("");
    const [questionText, setQuestionText] = useState("");
    const [functionalCount, setFunctionalCount] = useState("");

    useEffect(() => {
        const loadQuestions = async () => {
            try {
                setLoading(true);
                const response = await api.get("/quiz/admin/distractor-analysis", { headers: { Authorization: `Bearer ${getAuthToken()}` } });
                setQuestions(response.data);
            } catch {
                setError("Ne mogu dohvatiti analizu distraktora.");
            } finally {
                setLoading(false);
            }
        };
        loadQuestions();
    }, []);

    const categories = useMemo(() => [...new Set(questions.map((question) => question.categoryName))].sort((a, b) => a.localeCompare(b)), [questions]);
    const filteredQuestions = useMemo(() => questions.filter((question) => (
        (category === "" || question.categoryName === category)
        && question.questionText.toLocaleLowerCase().includes(questionText.toLocaleLowerCase())
        && (functionalCount === "" || question.functionalDistractorCount === Number(functionalCount))
    )), [questions, category, questionText, functionalCount]);

    const selectQuestion = async (question) => {
        if (selectedQuestion?.questionId === question.questionId) {
            setSelectedQuestion(null); setAnswers([]); setDetailError(""); return;
        }
        try {
            setSelectedQuestion(question); setAnswers([]); setDetailError(""); setDetailLoading(true);
            const response = await api.get(`/quiz/admin/distractor-analysis/${question.questionId}`, { headers: { Authorization: `Bearer ${getAuthToken()}` } });
            setAnswers(response.data);
        } catch {
            setDetailError("Ne mogu dohvatiti detalje odabira odgovora.");
        } finally { setDetailLoading(false); }
    };

    const resetFilters = () => { setCategory(""); setQuestionText(""); setFunctionalCount(""); };

    const detailRow = () => (
        <tr className="distractor-inline-detail"><td colSpan="5">
            <section className="distractor-details">
                {detailLoading && <p className="admin-tool-note">Učitavam odgovore...</p>}
                {detailError && <p className="validation-error">{detailError}</p>}
                {!detailLoading && !detailError && <div className="item-analysis-table-wrap">
                    <table className="item-analysis-table distractor-answer-table">
                        <thead><tr><th>Odgovor</th><th>Broj odabira</th><th>Udio odabira</th><th>Korelacija odabira s ukupnim rezultatom bez pitanja</th><th>Točan odgovor</th></tr></thead>
                        <tbody>{answers.map((answer) => <tr key={answer.answerId} className={!answer.correct && answer.selectionTotalCorrelation < 0 ? "negative-distractor" : ""}><td>{answer.answerText}</td><td>{answer.selectionCount}</td><td>{formatSelectionPercentage(answer)}</td><td>{formatNumber(answer.selectionTotalCorrelation, 3)}</td><td>{answer.correct ? "Da" : "Ne"}</td></tr>)}</tbody>
                    </table>
                </div>}
            </section>
        </td></tr>
    );

    return <div className="admin-tool-page">
        <div className="title">Analiza distraktora</div>
        <div className="admin-tool-card">
        {!loading && !error && questions.length > 0 && <div className="item-analysis-filters distractor-filters">
            <label>
                Kategorija
                <select value={category} onChange={(event) => setCategory(event.target.value)}>
                    <option value="">Sve kategorije</option>
                    {categories.map((name) =>
                        <option key={name} value={name}>{name}</option>)}
                </select>
            </label>
            <label>
                Tekst pitanja
                <input value={questionText} onChange={(event) => setQuestionText(event.target.value)} placeholder="Pretraži pitanje" />
            </label>
            <label>
                Broj funkcionalnih distraktora
                <select value={functionalCount} onChange={(event) => setFunctionalCount(event.target.value)}>
                    <option value="">Svi brojevi</option>
                    {[...new Set(questions.map((question) => question.functionalDistractorCount))].sort((a, b) => a - b).map((count) =>
                        <option key={count} value={count}>
                            {count}
                        </option>)}
                </select>
            </label>
            <button className="btn item-analysis-reset" type="button" onClick={resetFilters}>Poništi filtre</button>
        </div>}
        {loading &&
            <p className="admin-tool-note">Učitavam analizu...</p>}
                {error && <p className="validation-error">{error}
            </p>}
        {!loading && !error && questions.length === 0 &&
            <p className="admin-tool-note">
                Nema aktivnih pitanja za analizu.
            </p>}
        {!loading && !error && questions.length > 0 && filteredQuestions.length === 0 &&
            <p className="admin-tool-note">
                Nema pitanja koja odgovaraju odabranim filtrima.
            </p>}
        {!loading && !error && filteredQuestions.length > 0 &&
            <div className="item-analysis-table-wrap">
                <table className="item-analysis-table distractor-summary-table">
                    <thead>
                        <tr>
                            <th>Pitanje</th>
                            <th>Kategorija</th>
                            <th>Broj distraktora</th>
                            <th>Broj funkcionalnih distraktora</th>
                            <th>Učinkovitost funkcionalnih distraktora</th>
                        </tr>
                    </thead>
            <tbody>{filteredQuestions.map((question) => <Fragment key={question.questionId}>
                <tr className={selectedQuestion?.questionId === question.questionId ? "selected" : ""}>
                    <td>
                        <button type="button" className="question-detail-button" onClick={() => selectQuestion(question)}>{question.questionText}
                        </button>
                    </td>
                    <td>{question.categoryName}</td>
                    <td>{question.distractorCount}</td>
                    <td>{question.functionalDistractorCount}</td>
                    <td>{formatNumber(question.functionalDistractorEfficiency)}%</td>
                </tr>{selectedQuestion?.questionId === question.questionId && detailRow()}</Fragment>)}
            </tbody>
        </table>
    </div>}
    </div>
</div>;
}
