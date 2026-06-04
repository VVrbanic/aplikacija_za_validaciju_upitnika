import React, { useEffect, useMemo, useState } from "react";
import axios from "axios";
import { useNavigate } from "react-router-dom";
import "../App.css";

export default function QuizSetupPage() {
    const navigate = useNavigate();
    const [categories, setCategories] = useState([]);
    const [selectedCategoryIds, setSelectedCategoryIds] = useState([]);
    const [questionCount, setQuestionCount] = useState("");
    const [loading, setLoading] = useState(true);
    const [error, setError] = useState("");

    useEffect(() => {
        const loadCategories = async () => {
            try {
                setLoading(true);
                setError("");
                const res = await axios.get("http://localhost:8080/categories");
                setCategories(res.data || []);
            } catch (e) {
                setError("Ne mogu dohvatiti kategorije za novi kviz.");
            } finally {
                setLoading(false);
            }
        };

        loadCategories();
    }, []);

    const selectedQuestionLimit = useMemo(() => {
        return categories
            .filter((category) => selectedCategoryIds.includes(category.id))
            .reduce((sum, category) => sum + Number(category.totalQuestionCount || 0), 0);
    }, [categories, selectedCategoryIds]);

    const canStartQuiz =
        selectedCategoryIds.length > 0 &&
        questionCount !== "" &&
        Number(questionCount) > 0 &&
        Number(questionCount) <= selectedQuestionLimit;

    const toggleCategory = (categoryId) => {
        setSelectedCategoryIds((prev) => {
            if (prev.includes(categoryId)) {
                return prev.filter((id) => id !== categoryId);
            }
            return [...prev, categoryId];
        });
    };

    const onQuestionCountChange = (event) => {
        const nextValue = event.target.value;

        if (nextValue === "") {
            setQuestionCount("");
            return;
        }

        const normalizedValue = Number(nextValue);
        if (Number.isNaN(normalizedValue)) {
            return;
        }

        setQuestionCount(Math.min(normalizedValue, selectedQuestionLimit || normalizedValue));
    };

    useEffect(() => {
        if (questionCount === "") {
            return;
        }

        if (selectedQuestionLimit === 0) {
            setQuestionCount("");
            return;
        }

        if (Number(questionCount) > selectedQuestionLimit) {
            setQuestionCount(selectedQuestionLimit);
        }
    }, [selectedQuestionLimit, questionCount]);

    const startConfiguredQuiz = () => {
        if (!canStartQuiz) return;

        const params = new URLSearchParams({
            limit: String(Number(questionCount)),
        });

        selectedCategoryIds.forEach((categoryId) => {
            params.append("categoryIds", String(categoryId));
        });

        navigate(`/quiz/play?${params.toString()}`);
    };

    const startRandomQuiz = () => {
        navigate("/quiz/play?limit=50");
    };

    return (
        <div className="register-form">
            <div className="title">Novi kviz</div>

            <div className="quiz-setup-page">
                <div className="quiz-setup-card">
                    <div className="quiz-setup-header">
                        <p className="quiz-setup-subtitle">
                            Odaberi kategorije koje želiš uključiti i koliko pitanja kviz treba imati.
                        </p>
                    </div>

                    {loading && <p>Učitavam kategorije...</p>}
                    {error && <p className="validation-error">{error}</p>}

                    {!loading && !error && (
                        <>
                            <div className="quiz-setup-section">
                                <div className="quiz-setup-sectionHeader">
                                    <h3>Kategorije</h3>
                                    <span>
                                        Maksimalno pitanja iz odabira: <b>{selectedQuestionLimit}</b>
                                    </span>
                                </div>

                                <div className="quiz-setup-categories">
                                    {categories.map((category) => {
                                        const checked = selectedCategoryIds.includes(category.id);

                                        return (
                                            <label key={category.id} className={`quiz-category-option${checked ? " selected" : ""}`}>
                                                <input
                                                    type="checkbox"
                                                    checked={checked}
                                                    onChange={() => toggleCategory(category.id)}
                                                />
                                                <span className="quiz-category-content">
                                                    <span className="quiz-category-name">{category.name}</span>
                                                    <span className="quiz-category-meta">
                                                        Ukupno pitanja: {category.totalQuestionCount}
                                                    </span>
                                                </span>
                                            </label>
                                        );
                                    })}
                                </div>
                            </div>

                            <div className="quiz-setup-section">
                                <div className="quiz-setup-sectionHeader">
                                    <h3>Broj pitanja</h3>
                                    <span>Unesi broj od 1 do {selectedQuestionLimit || 0}</span>
                                </div>

                                <input
                                    type="number"
                                    min="1"
                                    max={selectedQuestionLimit || 1}
                                    value={questionCount}
                                    onChange={onQuestionCountChange}
                                    placeholder="Broj pitanja"
                                    disabled={selectedQuestionLimit === 0}
                                />
                            </div>

                            <div className="quiz-setup-actions">
                                <button type="button" className="login-button" disabled={!canStartQuiz} onClick={startConfiguredQuiz}>
                                    Započni kviz
                                </button>
                                <button type="button" className="login-button" disabled={categories.length === 0} onClick={startRandomQuiz}>
                                    Započni random kviz
                                </button>
                            </div>
                        </>
                    )}
                </div>
            </div>
        </div>
    );
}
