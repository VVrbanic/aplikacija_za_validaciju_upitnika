import React, { useEffect, useState } from "react";
import axios from "axios";
import { useNavigate, useSearchParams } from "react-router-dom";
import { api, getAuthToken } from "../api.js";
import "../App.css";

export default function Quiz() {
    const navigate = useNavigate();
    const [searchParams] = useSearchParams();
    const [loading, setLoading] = useState(true);
    const [error, setError] = useState("");

    const [questions, setQuestions] = useState([]);
    // selections: { [questionId]: answerId }
    const [selections, setSelections] = useState({});
    const [submitted, setSubmitted] = useState(false);
    const [score, setScore] = useState(0);

    const loadQuiz = async () => {
        try {
            setLoading(true);
            setError("");
            setSubmitted(false);
            setScore(0);
            setSelections({});

            const limit = Number(searchParams.get("limit")) || 50;
            const categoryIds = searchParams
                .getAll("categoryIds")
                .map((value) => Number(value))
                .filter((value) => Number.isInteger(value) && value > 0);

            const res = await api.get("/question/random", {
                params: {
                    limit,
                    ...(categoryIds.length > 0 ? { categoryIds } : {}),
                },
                headers: {
                    Authorization: `Bearer ${getAuthToken()}`,
                },
            });
            setQuestions(res.data || []);
        } catch (e) {
            setError("Ne mogu dohvatiti kviz. Provjeri backend endpoint.");
        } finally {
            setLoading(false);
        }
    };

    useEffect(() => {
        loadQuiz();
    }, [searchParams]);

    const chooseAnswer = (questionId, answerId) => {
        if (submitted) return;
        setSelections((prev) => ({ ...prev, [questionId]: answerId }));
    };

    const onSubmit = async () => {
        // provjera da su sva pitanja odgovorena
        const unanswered = questions.filter((q) => !selections[q.id]);
        if (unanswered.length > 0) {
            alert("Molim te odgovori na sva pitanja prije predaje.");
            return;
        }

        let points = 0;
        for (const q of questions) {
            const selectedAnswerId = selections[q.id];
            const selectedAnswer = q.answers.find((a) => a.id === selectedAnswerId);
            if (selectedAnswer && (selectedAnswer.correctAnswer === 1 || selectedAnswer.correctAnswer === true)) {
                points += 1;
            }
        }
        setScore(points);
        setSubmitted(true);

        const answerIds = Object.values(selections);
        await axios.post("http://localhost:8080/quiz/submit",
            {answerIds},
            {headers: {Authorization: `Bearer ${localStorage.getItem("token")}`}}
        );

    };

    const getAnswerState = (q, a) => {
        // nakon submit-a: oboji točno / netočno
        if (!submitted) return "neutral";
        const isSelected = selections[q.id] === a.id;
        const isCorrect = a.correctAnswer === 1 || a.correctAnswer === true;

        if (isCorrect) return "correct"; // pokaži točan
        if (isSelected && !isCorrect) return "wrong"; // odabrani netočan
        return "neutral";
    };

    if (loading) return <div className="page"><p>Učitavanje kviza...</p></div>;
    if (error) return (
        <div className="page">
            <p style={{ color: "#ffb4b4" }}>{error}</p>
            <button className="btn" onClick={loadQuiz}>Pokušaj ponovno</button>
        </div>
    );

    return (
        <div className="quiz-page">
            <div className="quiz-header">
                <h2>Kviz</h2>
                <div className="quiz-actions">
                    <button className="btn secondary" onClick={() => navigate("/quiz/new")}>Novi kviz</button>
                    <button className="btn" onClick={onSubmit} disabled={submitted || questions.length === 0}>
                        Predaj
                    </button>
                </div>
            </div>

            {submitted && (
                <div className="score-box">
                    Rezultat: <b>{score}</b> / <b>{questions.length}</b>
                </div>
            )}

            <div className="quiz-list">
                {questions.map((q, idx) => (
                    <div className="question-card" key={q.id}>
                        <div className="question-title">
                            <span className="q-index">{idx + 1}.</span>
                            <span>{q.question}</span>
                        </div>

                        <div className="answers-grid">
                            {q.answers.map((a) => {
                                const state = getAnswerState(q, a);
                                const selected = selections[q.id] === a.id;

                                return (
                                    <button
                                        key={a.id}
                                        className={`answer-btn ${selected ? "selected" : ""} ${state}`}
                                        onClick={() => chooseAnswer(q.id, a.id)}
                                    >
                                        {a.answer}
                                    </button>
                                );
                            })}
                        </div>
                    </div>
                ))}
            </div>
        </div>
    );
}
