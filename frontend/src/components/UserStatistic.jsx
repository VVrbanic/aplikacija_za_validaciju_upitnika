import React, { useMemo, useState } from "react";
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
import { CATEGORIES } from "../constants.js"

const DUMMY_EASE_PER_CATEGORY = {
    1: 0.62,
    2: 0.41,
    3: 0.68,
    4: 0.57,
    5: 0.32,
    6: 0.76,
    7: 0.46,
    8: 0.64,
    9: 0.55,
    10: 0.71,
    11: 0.29,
};

const DUMMY_USER_QUIZ_EASE = [
    { date: "2026-01-05", quiz: "Kviz #1", easeIndex: 0.56 },
    { date: "2026-01-06", quiz: "Kviz #2", easeIndex: 0.62 },
    { date: "2026-01-08", quiz: "Kviz #3", easeIndex: 0.48 },
    { date: "2026-01-10", quiz: "Kviz #4", easeIndex: 0.66 },
    { date: "2026-01-12", quiz: "Kviz #5", easeIndex: 0.61 },
    { date: "2026-01-15", quiz: "Kviz #6", easeIndex: 0.7 },
];

function clamp01(x) {
    return Math.max(0, Math.min(1, x));
}

export default function UserStatistic() {
    const [selectedCategoryId, setSelectedCategoryId] = useState(1);

    const categoryEaseData = useMemo(() => {
        return CATEGORIES.map((c) => ({
            category: c.name,
            easeIndex: Number(clamp01(DUMMY_EASE_PER_CATEGORY[c.id] ?? 0).toFixed(2)),
        }));
    }, []);

    const selectedCategory = useMemo(
        () => CATEGORIES.find((c) => c.id === selectedCategoryId),
        [selectedCategoryId]
    );

    const selectedCategoryEase = Number(
        clamp01(DUMMY_EASE_PER_CATEGORY[selectedCategoryId] ?? 0).toFixed(2)
    );

    const userQuizEaseData = useMemo(() => {
        return [...DUMMY_USER_QUIZ_EASE].sort((a, b) => a.date.localeCompare(b.date));
    }, []);

    const lastQuiz = userQuizEaseData[userQuizEaseData.length - 1];
    const avgQuizEase =
        userQuizEaseData.length > 0
            ? Number(
                userQuizEaseData.reduce((sum, x) => sum + clamp01(x.easeIndex), 0) /
                userQuizEaseData.length
            ).toFixed(2)
            : 0;

    return (
        <div className="charts-page">
            <div className="charts-header">
                <div>
                    <h2 className="charts-title">Statistika indeksa lakoće</h2>
                    <p className="charts-subtitle">
                        Prvi graf: indeks lakoće po kategoriji (1 vrijednost po kategoriji). Drugi graf: trend
                        indeksa lakoće kvizova koje je korisnik rješavao.
                    </p>
                </div>

                <div className="charts-tableWrap">
                    <div className="charts-tableTitle">Indeks lakoće po kategorijama</div>

                    <div className="charts-tableScroll">
                        <table className="charts-table">
                            <thead>
                            <tr>
                                <th style={{width: 200,  textAlign: "center"}}>ID</th>
                                <th style={{width: 400, textAlign: "center"}}>Kategorija</th>
                                <th style={{width: 400, textAlign: "right"}}>Indeks</th>

                            </tr>
                            </thead>

                            <tbody>
                            {categoryEaseData.map((row) => {
                                const cat = CATEGORIES.find((c) => c.name === row.category);
                                const rowId = cat?.id;

                                const isSelected = rowId === selectedCategoryId;

                                return (
                                    <tr
                                        key={row.category}
                                        className={isSelected ? "isSelected" : ""}
                                        onClick={() => rowId && setSelectedCategoryId(rowId)}
                                        role="button"
                                        tabIndex={0}
                                        onKeyDown={(e) => {
                                            if ((e.key === "Enter" || e.key === " ") && rowId) setSelectedCategoryId(rowId);
                                        }}
                                    >
                                        <td>{rowId ?? "-"}</td>
                                        <td>{row.category}</td>
                                        <td style={{textAlign: "right", fontVariantNumeric: "tabular-nums"}}>
                                            {row.easeIndex}
                                        </td>
                                    </tr>
                                );
                            })}
                            </tbody>
                        </table>
                    </div>

                    <div className="charts-smallStat">
                        Odabrano: <b>{selectedCategory?.name}</b> — indeks: <b>{selectedCategoryEase}</b>
                    </div>
                </div>
            </div>

            {/* 1) Bar */}
            <div className="charts-card">
                <div className="charts-cardHeader">
                    <h3 className="charts-cardTitle">Indeks lakoće po kategoriji</h3>
                    <span className="charts-badge">0.0 teško → 1.0 lako</span>
                </div>

                <div className="charts-chart charts-chart--bar">
                    <ResponsiveContainer>
                        <BarChart data={categoryEaseData} margin={{top: 10, right: 20, left: 0, bottom: 70}}>
                            <CartesianGrid strokeDasharray="3 3"/>
                            <XAxis
                                dataKey="category"
                                angle={-35}
                                textAnchor="end"
                                interval={0}
                                height={90}
                                axisLine={{stroke: "#6b7280"}}
                                tickLine={{stroke: "#6b7280"}}
                            />
                            <YAxis domain={[0, 1]}/>
                            <Tooltip
                                formatter={(value, name) => (name === "easeIndex" ? [value, "Indeks lakoće"] : [value, name])}
                                labelFormatter={(label) => `Kategorija: ${label}`}
                            />
                            <Legend />
                            <Bar dataKey="easeIndex" name="Indeks lakoće"/>
                        </BarChart>
                    </ResponsiveContainer>
                </div>

                <div className="charts-note">
                    Ulazni podaci su sada <b>jedna vrijednost po kategoriji</b> (nema liste i prosjeka).
                </div>
            </div>

            {/* 2) Line */}
            <div className="charts-card">
                <div className="charts-cardHeader">
                    <h3 className="charts-cardTitle">Trend indeksa lakoće kvizova (korisnik)</h3>
                    <span className="charts-smallStat-grey">
            Prosjek: <b>{avgQuizEase}</b>
                        {lastQuiz ? (
                            <>
                                {" "}
                                | Zadnji: <b>{Number(clamp01(lastQuiz.easeIndex).toFixed(2))}</b> ({lastQuiz.date})
                            </>
                        ) : null}
          </span>
                </div>

                <div className="charts-chart charts-chart--line">
                    <ResponsiveContainer>
                        <LineChart data={userQuizEaseData} margin={{ top: 10, right: 20, left: 0, bottom: 20 }}>
                            <CartesianGrid strokeDasharray="3 3" />
                            <XAxis dataKey="date"
                                   angle={-45}
                                   textAnchor="end"
                                   height={90}
                                   tickMargin={10}
                            />
                            <YAxis domain={[0, 1]} />
                            <Tooltip
                                formatter={(value, name) =>
                                    name === "easeIndex" ? [Number(value).toFixed(2), "Indeks lakoće"] : [value, name]
                                }
                                labelFormatter={(label) => `Datum: ${label}`}
                            />
                            <Legend />
                            <Line type="monotone" dataKey="easeIndex" name="Indeks lakoće kviza" dot />
                        </LineChart>
                    </ResponsiveContainer>
                </div>

                <div className="charts-note">
                    Svaka točka je jedan riješeni kviz (npr. po datumu ili pokušaju). Ovo je idealno za prikaz
                    napretka korisnika kroz vrijeme.
                </div>
            </div>
        </div>
    );
}
