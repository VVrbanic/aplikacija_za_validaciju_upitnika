import React, { useEffect, useMemo, useState } from "react";
import { useNavigate } from "react-router-dom";
import { api, getAuthToken } from "../api";
import QuestionManagementTabs from "../components/QuestionManagementTabs";
import "../App.css";

const INITIAL_FORM = {
    categoryId: "",
    question: "",
    answerA: "",
    answerB: "",
    answerC: "",
    answerD: "",
    correctAnswer: "",
};

const ANSWER_KEYS = [
    { key: "A", field: "answerA", label: "A" },
    { key: "B", field: "answerB", label: "B" },
    { key: "C", field: "answerC", label: "C" },
    { key: "D", field: "answerD", label: "D" },
];

export default function AddQuestionPage() {
    const navigate = useNavigate();
    const [categories, setCategories] = useState([]);
    const [loading, setLoading] = useState(true);
    const [saving, setSaving] = useState(false);
    const [form, setForm] = useState(INITIAL_FORM);
    const [fieldErrors, setFieldErrors] = useState({});
    const [generalError, setGeneralError] = useState("");
    const [successMessage, setSuccessMessage] = useState("");

    useEffect(() => {
        const loadCategories = async () => {
            try {
                setLoading(true);
                setGeneralError("");
                const res = await api.get("/categories");
                setCategories(res.data || []);
            } catch {
                setGeneralError("Ne mogu dohvatiti kategorije.");
            } finally {
                setLoading(false);
            }
        };

        loadCategories();
    }, []);

    const selectedCategory = useMemo(
        () => categories.find((category) => String(category.id) === String(form.categoryId)),
        [categories, form.categoryId]
    );

    const updateField = (name, value) => {
        setForm((prev) => ({ ...prev, [name]: value }));
        setFieldErrors((prev) => ({ ...prev, [name]: "" }));
        setGeneralError("");
        setSuccessMessage("");
    };

    const validate = () => {
        const errors = {};

        if (!form.categoryId) {
            errors.categoryId = "Kategorija je obavezna.";
        }

        if (!form.question.trim()) {
            errors.question = "Pitanje je obavezno.";
        } else if (form.question.trim().length > 1000) {
            errors.question = "Pitanje moze imati najviše 1000 znakova.";
        }

        ANSWER_KEYS.forEach(({ field, label }) => {
            const value = form[field].trim();
            if (!value) {
                errors[field] = `Odgovor ${label} je obavezan.`;
            } else if (value.length > 256) {
                errors[field] = `Odgovor ${label} može imati najvise 256 znakova.`;
            }
        });

        if (!form.correctAnswer) {
            errors.correctAnswer = "Točan odgovor je obavezan.";
        }

        if (form.correctAnswer && !["A", "B", "C", "D"].includes(form.correctAnswer)) {
            errors.correctAnswer = "Točan odgovor mora biti odabran.";
        }

        setFieldErrors(errors);
        return Object.keys(errors).length === 0;
    };

    const resetForm = () => {
        setForm(INITIAL_FORM);
        setFieldErrors({});
        setGeneralError("");
        setSuccessMessage("Pitanje je spremljeno.");
    };

    const handleSubmit = async (event) => {
        event.preventDefault();

        if (!validate()) {
            return;
        }

        const token = getAuthToken();
        setSaving(true);
        setGeneralError("");
        setSuccessMessage("");

        const payload = {
            categoryId: Number(form.categoryId),
            question: form.question.trim(),
            answerA: form.answerA.trim(),
            answerB: form.answerB.trim(),
            answerC: form.answerC.trim(),
            answerD: form.answerD.trim(),
            correctAnswer: { A: 1, B: 2, C: 3, D: 4 }[form.correctAnswer],
        };

        try {
            await api.post("/question", payload, {
                headers: token ? { Authorization: `Bearer ${token}` } : undefined,
            });
            resetForm();
        } catch (error) {
            const responseData = error?.response?.data;

            if (responseData && typeof responseData === "object" && !Array.isArray(responseData)) {
                if (responseData.message) {
                    setGeneralError(responseData.message);
                } else {
                    const mappedErrors = {};
                    Object.entries(responseData).forEach(([key, value]) => {
                        mappedErrors[key] = Array.isArray(value) ? value.join(", ") : String(value);
                    });
                    setFieldErrors(mappedErrors);
                }
            } else {
                setGeneralError("Greška pri spremanju pitanja.");
            }
        } finally {
            setSaving(false);
        }
    };

    return (
        <div className="admin-tool-page">
            <div className="title">Pitanja</div>
                <form className="question-editor-card" onSubmit={handleSubmit}>
                    <QuestionManagementTabs/>
                    {loading && <p>Učitavam kategorije...</p>}
                    {!loading && generalError && <p className="validation-error">{generalError}</p>}
                    {successMessage && <p className="question-success">{successMessage}</p>}

                    {!loading && (
                        <>
                            <label className="question-editor-field">
                                <span>Kategorija</span>
                                <select
                                    value={form.categoryId}
                                    onChange={(event) => updateField("categoryId", event.target.value)}
                                >
                                    <option value="">Odaberi kategoriju</option>
                                    {categories.map((category) => (
                                        <option key={category.id} value={category.id}>
                                            {category.name}
                                        </option>
                                    ))}
                                </select>
                                {fieldErrors.categoryId &&
                                    <small className="validation-error">{fieldErrors.categoryId}</small>}
                            </label>

                            <label className="question-editor-field">
                                <span>Pitanje</span>
                                <textarea
                                    rows={5}
                                    value={form.question}
                                    onChange={(event) => updateField("question", event.target.value)}
                                    placeholder="Upiši pitanje"
                                    maxLength={1000}
                                />
                                <div className="question-editor-meta">
                                    <small>{form.question.length}/1000 znakova</small>
                                </div>
                                {fieldErrors.question &&
                                    <small className="validation-error">{fieldErrors.question}</small>}
                            </label>

                            <div className="question-editor-answers">
                                {ANSWER_KEYS.map(({key, field, label}) => (
                                    <div key={key} className="question-answer-row">
                                        <label className="question-answer-label">
                                            <span>Odgovor {label}</span>
                                            <input
                                                type="text"
                                                value={form[field]}
                                                onChange={(event) => updateField(field, event.target.value)}
                                                placeholder={`Odgovor ${label}`}
                                                maxLength={256}
                                            />
                                        </label>

                                        <label className="question-answer-correct">
                                            <input
                                                type="radio"
                                                name="correctAnswer"
                                                value={key}
                                                checked={form.correctAnswer === key}
                                                onChange={(event) => updateField("correctAnswer", event.target.value)}
                                            />
                                            Točan
                                        </label>

                                        {fieldErrors[field] && (
                                            <small
                                                className="validation-error question-answer-error">{fieldErrors[field]}</small>
                                        )}
                                    </div>
                                ))}

                                {fieldErrors.correctAnswer &&
                                    <small className="validation-error">{fieldErrors.correctAnswer}</small>}
                            </div>

                            <div className="quiz-setup-actions">
                                <button type="submit" className="login-button" disabled={saving}>
                                    {saving ? "Spremam..." : "Spremi pitanje"}
                                </button>
                                <button type="button" className="login-button secondary"
                                        onClick={() => navigate("/quiz/new")}>
                                    Natrag
                                </button>
                            </div>

                            {selectedCategory && (
                                <div className="question-editor-note">
                                    Odabrana kategorija: <b>{selectedCategory.name}</b>
                                </div>
                            )}
                        </>
                    )}
                </form>
            </div>
            );
            }
