import React, { useEffect, useMemo, useState } from "react";
import "../charts.css";
import {
    BarChart,
    Bar,
    XAxis,
    YAxis,
    CartesianGrid,
    Tooltip,
    ResponsiveContainer,
    Legend,
    LineChart,
    Line,
} from "recharts";
import { api, getAuthToken } from "../api.js";

function clamp01(x) {
    const value = Number(x ?? 0);
    return Math.max(0, Math.min(1, Number.isFinite(value) ? value : 0));
}

export default function UserStatistic() {
    const [selectedCategoryId, setSelectedCategoryId] = useState(null);
    const [categoryStats, setCategoryStats] = useState([]);
    const [quizTrend, setQuizTrend] = useState([]);
    const [loading, setLoading] = useState(true);
    const [error, setError] = useState("");

    useEffect(() => {
        const loadStatistics = async () => {
            try {
                setLoading(true);
                setError("");

                const res = await api.get("/quiz/statistics", {
                    headers: {
                        Authorization: `Bearer ${getAuthToken()}`,
                    },
                });

                const nextCategoryStats = res.data?.categoryStats ?? [];
                const nextQuizTrend = res.data?.quizTrend ?? [];

                setCategoryStats(nextCategoryStats);
                setQuizTrend(nextQuizTrend);
                setSelectedCategoryId(nextCategoryStats[0]?.categoryId ?? null);
            } catch (e) {
                setError("Ne mogu dohvatiti statistiku kvizova.");
            } finally {
                setLoading(false);
            }
        };

        loadStatistics();
    }, []);

    const categoryEaseData = useMemo(() => {
        return categoryStats.map((row) => ({
            categoryId: row.categoryId,
            category: row.categoryName,
            easeIndex: Number(clamp01(row.easeIndex).toFixed(2)),
            totalAnswers: Number(row.totalAnswers ?? 0),
            correctAnswers: Number(row.correctAnswers ?? 0),
        }));
    }, [categoryStats]);

    const userQuizEaseData = useMemo(() => {
        return quizTrend.map((row) => ({
            quizId: row.quizId,
            label: row.label,
            easeIndex: Number(clamp01(row.easeIndex).toFixed(2)),
            totalAnswers: Number(row.totalAnswers ?? 0),
            correctAnswers: Number(row.correctAnswers ?? 0),
        }));
    }, [quizTrend]);

    const selectedCategory = useMemo(
        () => categoryEaseData.find((row) => row.categoryId === selectedCategoryId) ?? null,
        [categoryEaseData, selectedCategoryId]
    );

    const lastQuiz = userQuizEaseData[userQuizEaseData.length - 1] ?? null;
    const avgQuizEase =
        userQuizEaseData.length > 0
            ? (
                userQuizEaseData.reduce((sum, row) => sum + clamp01(row.easeIndex), 0) /
                userQuizEaseData.length
            ).toFixed(2)
            : "0.00";

    if (loading) {
        return <div className="charts-page"><p>Učitavam statistiku...</p></div>;
    }

    if (error) {
        return <div className="charts-page"><p className="validation-error">{error}</p></div>;
    }

    if (categoryEaseData.length === 0 && userQuizEaseData.length === 0) {
        return (
            <div className="charts-page">
                <p>Još nema riješenih kvizova za prikaz statistike.</p>
            </div>
        );
    }

    return (
        <div className="charts-page">
            <div className="charts-header">
                <div>
                    <h2 className="charts-title">Statistika indeksa lakoće</h2>
                    <p className="charts-subtitle">
                        Prvi graf prikazuje uspješnost po kategoriji, a drugi trend uspješnosti po svakom
                        riješenom kvizu prijavljenog korisnika.
                    </p>
                </div>

                <div className="charts-tableWrap">
                    <div className="charts-tableTitle">Indeks lakoće po kategorijama</div>

                    {categoryEaseData.length === 0 ? (
                        <div className="charts-note">Nema riješenih odgovora raspoređenih po kategorijama.</div>
                    ) : (
                        <>
                            <div className="charts-tableScroll">
                                <table className="charts-table">
                                    <thead>
                                    <tr>
                                        <th style={{ width: 120, textAlign: "center" }}>ID</th>
                                        <th style={{ width: 320, textAlign: "center" }}>Kategorija</th>
                                        <th style={{ width: 180, textAlign: "right" }}>Indeks</th>
                                    </tr>
                                    </thead>

                                    <tbody>
                                    {categoryEaseData.map((row) => {
                                        const isSelected = row.categoryId === selectedCategoryId;

                                        return (
                                            <tr
                                                key={row.categoryId}
                                                className={isSelected ? "isSelected" : ""}
                                                onClick={() => setSelectedCategoryId(row.categoryId)}
                                                role="button"
                                                tabIndex={0}
                                                onKeyDown={(event) => {
                                                    if (event.key === "Enter" || event.key === " ") {
                                                        setSelectedCategoryId(row.categoryId);
                                                    }
                                                }}
                                            >
                                                <td>{row.categoryId}</td>
                                                <td>{row.category}</td>
                                                <td style={{ textAlign: "right", fontVariantNumeric: "tabular-nums" }}>
                                                    {row.easeIndex.toFixed(2)}
                                                </td>
                                            </tr>
                                        );
                                    })}
                                    </tbody>
                                </table>
                            </div>

                            {selectedCategory && (
                                <div className="charts-smallStat">
                                    Odabrano: <b>{selectedCategory.category}</b> | indeks:{" "}
                                    <b>{selectedCategory.easeIndex.toFixed(2)}</b> | točno:{" "}
                                    <b>{selectedCategory.correctAnswers}</b> / <b>{selectedCategory.totalAnswers}</b>
                                </div>
                            )}
                        </>
                    )}
                </div>
            </div>

            <div className="charts-card">
                <div className="charts-cardHeader">
                    <h3 className="charts-cardTitle">Indeks lakoće po kategoriji</h3>
                    <span className="charts-badge">0.0 teško → 1.0 lako</span>
                </div>

                {categoryEaseData.length === 0 ? (
                    <div className="charts-note">Graf će se prikazati nakon prvih riješenih odgovora.</div>
                ) : (
                    <div className="charts-chart charts-chart--bar">
                        <ResponsiveContainer>
                            <BarChart data={categoryEaseData} margin={{ top: 10, right: 20, left: 0, bottom: 70 }}>
                                <CartesianGrid strokeDasharray="3 3" />
                                <XAxis
                                    dataKey="category"
                                    angle={-35}
                                    textAnchor="end"
                                    interval={0}
                                    height={90}
                                    axisLine={{ stroke: "#6b7280" }}
                                    tickLine={{ stroke: "#6b7280" }}
                                />
                                <YAxis domain={[0, 1]} />
                                <Tooltip
                                    formatter={(value, name, item) => {
                                        if (name === "easeIndex") {
                                            return [
                                                Number(value).toFixed(2),
                                                `Indeks lakoće (${item?.payload?.correctAnswers ?? 0}/${item?.payload?.totalAnswers ?? 0})`,
                                            ];
                                        }
                                        return [value, name];
                                    }}
                                    labelFormatter={(label) => `Kategorija: ${label}`}
                                />
                                <Legend />
                                <Bar dataKey="easeIndex" name="Indeks lakoće" />
                            </BarChart>
                        </ResponsiveContainer>
                    </div>
                )}
            </div>

            <div className="charts-card">
                <div className="charts-cardHeader">
                    <h3 className="charts-cardTitle">Trend indeksa lakoće kvizova (korisnik)</h3>
                    <span className="charts-smallStat-grey">
                        Prosjek: <b>{avgQuizEase}</b>
                        {lastQuiz ? (
                            <>
                                {" "}
                                | Zadnji: <b>{lastQuiz.easeIndex.toFixed(2)}</b> ({lastQuiz.label})
                            </>
                        ) : null}
                    </span>
                </div>

                {userQuizEaseData.length === 0 ? (
                    <div className="charts-note">Trend će se prikazati nakon prvog predanog kviza.</div>
                ) : (
                    <div className="charts-chart charts-chart--line">
                        <ResponsiveContainer>
                            <LineChart data={userQuizEaseData} margin={{ top: 10, right: 20, left: 0, bottom: 20 }}>
                                <CartesianGrid strokeDasharray="3 3" />
                                <XAxis
                                    dataKey="label"
                                    angle={-45}
                                    textAnchor="end"
                                    height={90}
                                    tickMargin={10}
                                />
                                <YAxis domain={[0, 1]} />
                                <Tooltip
                                    formatter={(value, name, item) => {
                                        if (name === "easeIndex") {
                                            return [
                                                Number(value).toFixed(2),
                                                `Indeks lakoće (${item?.payload?.correctAnswers ?? 0}/${item?.payload?.totalAnswers ?? 0})`,
                                            ];
                                        }
                                        return [value, name];
                                    }}
                                    labelFormatter={(label) => `Kviz: ${label}`}
                                />
                                <Legend />
                                <Line type="monotone" dataKey="easeIndex" name="Indeks lakoće kviza" dot />
                            </LineChart>
                        </ResponsiveContainer>
                    </div>
                )}
            </div>
        </div>
    );
}
