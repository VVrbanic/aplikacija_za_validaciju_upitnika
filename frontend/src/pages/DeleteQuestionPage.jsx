import React, { useEffect, useMemo, useState } from "react";
import { api, getAuthToken } from "../api";
import QuestionManagementTabs from "../components/QuestionManagementTabs";
import "../App.css";

export default function DeleteQuestionPage() {
    const [categories, setCategories] = useState([]);
    const [questions, setQuestions] = useState([]);
    const [selectedQuestionIds, setSelectedQuestionIds] = useState([]);
    const [categoryId, setCategoryId] = useState("");
    const [questionText, setQuestionText] = useState("");
    const [loadingCategories, setLoadingCategories] = useState(true);
    const [loadingQuestions, setLoadingQuestions] = useState(true);
    const [deleting, setDeleting] = useState(false);
    const [error, setError] = useState("");
    const [categoryError, setCategoryError] = useState("");
    const [success, setSuccess] = useState("");
    const [confirmOpen, setConfirmOpen] = useState(false);

    const token = getAuthToken();

    const categoryMap = useMemo(() => {
        return new Map(categories.map((category) => [Number(category.id), category.name]));
    }, [categories]);

    const loadQuestions = async (currentCategoryId = categoryId, currentQuestionText = questionText) => {
        if (!token) {
            setQuestions([]);
            setLoadingQuestions(false);
            setError("Potrebna je prijava za brisanje pitanja.");
            return;
        }

        try {
            setLoadingQuestions(true);
            setError("");

            const params = {};
            if (currentCategoryId) {
                params.categoryId = Number(currentCategoryId);
            }

            const trimmedText = currentQuestionText.trim();
            if (trimmedText) {
                params.text = trimmedText;
            }

            const res = await api.get("/question/manage", {
                params,
                headers: { Authorization: `Bearer ${token}` },
            });

            setQuestions(res.data || []);
        } catch {
            setError("Ne mogu dohvatiti pitanja za brisanje.");
        } finally {
            setLoadingQuestions(false);
        }
    };

    useEffect(() => {
        const loadCategories = async () => {
            try {
                setLoadingCategories(true);
                setCategoryError("");
                const res = await api.get("/categories");
                setCategories(res.data || []);
            } catch {
                setCategoryError("Ne mogu dohvatiti kategorije.");
            } finally {
                setLoadingCategories(false);
            }
        };

        loadCategories();
    }, []);

    useEffect(() => {
        const timeoutId = window.setTimeout(() => {
            setSelectedQuestionIds([]);
            setConfirmOpen(false);
            setSuccess("");
            loadQuestions(categoryId, questionText);
        }, 250);

        return () => window.clearTimeout(timeoutId);
    }, [categoryId, questionText]);

    const toggleSelection = (questionId) => {
        setSelectedQuestionIds((prev) => {
            if (prev.includes(questionId)) {
                return prev.filter((id) => id !== questionId);
            }
            return [...prev, questionId];
        });
    };

    const closeConfirm = () => {
        if (!deleting) {
            setConfirmOpen(false);
        }
    };

    const confirmDelete = async () => {
        if (selectedQuestionIds.length === 0) {
            setConfirmOpen(false);
            return;
        }

        try {
            setDeleting(true);
            setError("");
            await api.post(
                "/question/deactivate",
                { questionIds: selectedQuestionIds },
                { headers: { Authorization: `Bearer ${token}` } }
            );
            setConfirmOpen(false);
            setSelectedQuestionIds([]);
            setSuccess("Označena pitanja su izbrisana.");
            await loadQuestions();
        } catch {
            setError("Greška pri brisanju označenih pitanja.");
        } finally {
            setDeleting(false);
        }
    };

    const onRowKeyDown = (event, questionId) => {
        if (event.key === "Enter" || event.key === " ") {
            event.preventDefault();
            toggleSelection(questionId);
        }
    };

    return (
        <div className="admin-tool-page">
            <div className="title">Pitanja</div>

            <div className="question-delete-card">
                <QuestionManagementTabs />
                <div className="question-delete-toolbar">
                    <div className="question-delete-filters">
                        <label className="question-delete-field">
                            <span>Kategorija</span>
                            <select value={categoryId} onChange={(event) => setCategoryId(event.target.value)}>
                                <option value="">Sve kategorije</option>
                                {categories.map((category) => (
                                    <option key={category.id} value={category.id}>
                                        {category.name}
                                    </option>
                                ))}
                            </select>
                        </label>

                        <label className="question-delete-field">
                            <span>Tekst pitanja</span>
                            <input
                                type="text"
                                value={questionText}
                                onChange={(event) => setQuestionText(event.target.value)}
                                placeholder="Pretraži po tekstu pitanja"
                            />
                        </label>
                    </div>

                    <div className="question-delete-actions">
                        <button
                            type="button"
                            className="btn danger"
                            disabled={selectedQuestionIds.length === 0}
                            onClick={() => setConfirmOpen(true)}
                        >
                            Obriši pitanja
                        </button>
                    </div>
                </div>

                {(categoryError || error || success) && (
                    <div className="question-delete-messages">
                        {categoryError && <p className="validation-error">{categoryError}</p>}
                        {error && <p className="validation-error">{error}</p>}
                        {success && <p className="question-success">{success}</p>}
                    </div>
                )}

                {loadingCategories || loadingQuestions ? (
                    <p>Učitavanje pitanja...</p>
                ) : (
                    <div className="question-delete-tableWrap">
                        <table className="question-delete-table">
                            <thead>
                                <tr>
                                    <th aria-label="Označi" />
                                    <th>Pitanje</th>
                                    <th>Kategorija</th>
                                </tr>
                            </thead>
                            <tbody>
                                {questions.length === 0 ? (
                                    <tr>
                                        <td className="question-delete-empty" colSpan={3}>
                                            Nema pitanja koja odgovaraju filterima.
                                        </td>
                                    </tr>
                                ) : (
                                    questions.map((question) => {
                                        const selected = selectedQuestionIds.includes(question.id);
                                        return (
                                            <tr
                                                key={question.id}
                                                className={selected ? "selected" : ""}
                                                role="button"
                                                tabIndex={0}
                                                onClick={() => toggleSelection(question.id)}
                                                onKeyDown={(event) => onRowKeyDown(event, question.id)}
                                            >
                                                <td>
                                                    <input type="checkbox" checked={selected} readOnly />
                                                </td>
                                                <td>{question.question}</td>
                                                <td>{categoryMap.get(Number(question.categoryId)) || question.categoryId}</td>
                                            </tr>
                                        );
                                    })
                                )}
                            </tbody>
                        </table>
                    </div>
                )}
            </div>

            {confirmOpen && (
                <div className="question-delete-backdrop" role="dialog" aria-modal="true">
                    <div className="question-delete-modal">
                        <p className="question-delete-modalText">
                            Jeste li sigurni da želite izbrisati označena pitanja?
                        </p>
                        <div className="question-delete-modalActions">
                            <button type="button" className="btn secondary" onClick={closeConfirm} disabled={deleting}>
                                NE
                            </button>
                            <button type="button" className="btn danger" onClick={confirmDelete} disabled={deleting}>
                                {deleting ? "Brisanje..." : "DA"}
                            </button>
                        </div>
                    </div>
                </div>
            )}
        </div>
    );
}
