import { useEffect, useState } from "react";
import { api, getAuthToken } from "../api.js";
import "../App.css";

function formatNumber(value) {
    return Number(value ?? 0).toFixed(2);
}

function formatPercent(value) {
    return `${formatNumber(value)}%`;
}

export default function ResultsOverviewPage() {
    const [summary, setSummary] = useState(null);
    const [loading, setLoading] = useState(true);
    const [error, setError] = useState("");

    useEffect(() => {
        const loadSummary = async () => {
            try {
                setLoading(true);
                setError("");

                const res = await api.get("/quiz/admin/results-summary", {
                    headers: {
                        Authorization: `Bearer ${getAuthToken()}`,
                    },
                });

                setSummary(res.data);
            } catch (e) {
                setError("Ne mogu dohvatiti sazetu analitiku rezultata.");
            } finally {
                setLoading(false);
            }
        };

        loadSummary();
    }, []);

    return (
        <div className="admin-tool-page">
            <div className="title">Pregled rezultata</div>

            <div className="admin-tool-card">

                {loading && <p className="admin-tool-note">Učitavam analitiku...</p>}
                {error && <p className="validation-error">{error}</p>}

                {!loading && !error && summary && (
                    <>
                        <div className="admin-summary-grid">
                            <div className="admin-summary-item">
                                <span className="admin-summary-label">Broj korisnika</span>
                                <strong className="admin-summary-value">{summary.userCount}</strong>
                            </div>
                            <div className="admin-summary-item">
                                <span className="admin-summary-label">Ukupni broj pitanja u bazi</span>
                                <strong className="admin-summary-value">{summary.questionCount}</strong>
                            </div>
                            <div className="admin-summary-item">
                                <span className="admin-summary-label">Prosječan broj pitanja po upitniku</span>
                                <strong className="admin-summary-value">{formatNumber(summary.averageQuestionsPerQuiz)}</strong>
                            </div>
                            <div className="admin-summary-item">
                                <span className="admin-summary-label">Prosječan rezultat</span>
                                <strong className="admin-summary-value">{formatPercent(summary.averageResultPercentage)}</strong>
                            </div>
                            <div className="admin-summary-item">
                                <span className="admin-summary-label">Medijan</span>
                                <strong className="admin-summary-value">{formatPercent(summary.medianPercentage)}</strong>
                            </div>
                            <div className="admin-summary-item">
                                <span className="admin-summary-label">Raspon postotka riješenosti</span>
                                <strong className="admin-summary-value">
                                    {formatPercent(summary.minPercentage)} - {formatPercent(summary.maxPercentage)}
                                </strong>
                            </div>
                        </div>
                    </>
                )}
            </div>
        </div>
    );
}
