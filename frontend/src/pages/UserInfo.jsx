import { useEffect, useMemo, useState } from "react";
import { useNavigate } from "react-router-dom";
import axios from "axios";
import "../App.css";

const viewFields = [
    ["id", "ID"],
    ["firstName", "Ime"],
    ["lastName", "Prezime"],
    ["dateOfBirth", "Datum rođenja"],
    ["isAdmin", "Admin"],
    ["userName", "Korisničko ime"],
    ["email", "Email"],
    ["isActive", "Aktivan"],
    ["educationName", "Stupanj obrazovanja"],
    ["ganderName", "Spol"],
];

function formatValue(key, value) {
    if (value === null || value === undefined || value === "") {
        return "Nije uneseno";
    }

    if (key === "dateOfBirth") {
        const date = new Date(value);
        return Number.isNaN(date.getTime())
            ? String(value)
            : new Intl.DateTimeFormat("hr-HR", { timeZone: "UTC" }).format(date);
    }

    if (typeof value === "boolean") {
        return value ? "Da" : "Ne";
    }

    if (key === "isAdmin") {
        return Number(value) === 1 ? "Da" : "Ne";
    }

    return String(value);
}

function toFormState(user) {
    return {
        firstName: user?.firstName ?? "",
        lastName: user?.lastName ?? "",
        dateOfBirth: user?.dateOfBirth ? String(user.dateOfBirth).slice(0, 10) : "",
        userName: user?.userName ?? "",
        email: user?.email ?? "",
        ganderId: user?.ganderId ? String(user.ganderId) : "",
        educationId: user?.educationId ? String(user.educationId) : "",
    };
}

export default function UserInfo() {
    const navigate = useNavigate();
    const [user, setUser] = useState(null);
    const [form, setForm] = useState(null);
    const [genders, setGenders] = useState([]);
    const [educations, setEducations] = useState([]);
    const [loading, setLoading] = useState(true);
    const [saving, setSaving] = useState(false);
    const [editing, setEditing] = useState(false);
    const [error, setError] = useState("");
    const [saveError, setSaveError] = useState("");
    const [deleteError, setDeleteError] = useState("");
    const [deleting, setDeleting] = useState(false);
    const [confirmDeleteOpen, setConfirmDeleteOpen] = useState(false);

    const cachedUser = useMemo(() => {
        const raw = localStorage.getItem("auth");
        if (!raw) {
            return null;
        }

        try {
            return JSON.parse(raw);
        } catch {
            return null;
        }
    }, []);

    useEffect(() => {
        const loadData = async () => {
            setLoading(true);
            setError("");

            try {
                const token = localStorage.getItem("token");
                if (!token) {
                    throw new Error("Nisi prijavljen.");
                }

                const [userRes, genderRes, educationRes] = await Promise.all([
                    axios.get("http://localhost:8080/users/me", {
                        headers: { Authorization: `Bearer ${token}` },
                    }),
                    axios.get("http://localhost:8080/gender"),
                    axios.get("http://localhost:8080/education"),
                ]);

                setUser(userRes.data);
                setForm(toFormState(userRes.data));
                setGenders(genderRes.data);
                setEducations(educationRes.data);
                localStorage.setItem("auth", JSON.stringify(userRes.data));
            } catch (err) {
                if (cachedUser) {
                    setUser(cachedUser);
                    setForm(toFormState(cachedUser));
                } else {
                    setError(err?.response?.data?.message || err.message || "Greška pri dohvaćanju korisnika.");
                }
            } finally {
                setLoading(false);
            }
        };

        loadData();
    }, [cachedUser]);

    const onChange = (e) => {
        const { name, value } = e.target;
        setForm((prev) => ({ ...prev, [name]: value }));
    };

    const startEdit = () => {
        setSaveError("");
        setDeleteError("");
        setEditing(true);
        setForm(toFormState(user));
    };

    const cancelEdit = () => {
        setSaveError("");
        setDeleteError("");
        setEditing(false);
        setForm(toFormState(user));
    };

    const saveUser = async (e) => {
        e.preventDefault();
        setSaving(true);
        setSaveError("");

        try {
            if (!form.firstName || !form.lastName || !form.userName || !form.email || !form.ganderId || !form.educationId) {
                throw new Error("Popuni sva obavezna polja.");
            }

            const token = localStorage.getItem("token");
            const payload = {
                firstName: form.firstName.trim(),
                lastName: form.lastName.trim(),
                dateOfBirth: form.dateOfBirth || null,
                userName: form.userName.trim(),
                email: form.email.trim(),
                ganderId: Number(form.ganderId),
                educationId: Number(form.educationId),
            };

            const res = await axios.put("http://localhost:8080/users/me", payload, {
                headers: {
                    Authorization: `Bearer ${token}`,
                    "Content-Type": "application/json",
                },
            });

            setUser(res.data);
            setForm(toFormState(res.data));
            localStorage.setItem("auth", JSON.stringify(res.data));
            setEditing(false);
        } catch (err) {
            setSaveError(err?.response?.data?.message || err.message || "Greška pri spremanju podataka.");
        } finally {
            setSaving(false);
        }
    };

    const openDeleteConfirm = () => {
        setDeleteError("");
        setConfirmDeleteOpen(true);
    };

    const cancelDelete = () => {
        if (deleting) {
            return;
        }

        setConfirmDeleteOpen(false);
    };

    const deleteProfile = async () => {
        setDeleting(true);
        setDeleteError("");

        try {
            const token = localStorage.getItem("token");
            if (!token) {
                throw new Error("Nisi prijavljen.");
            }

            await axios.delete("http://localhost:8080/users/me", {
                headers: {
                    Authorization: `Bearer ${token}`,
                },
            });

            localStorage.removeItem("token");
            localStorage.removeItem("auth");
            navigate("/login", { replace: true });
        } catch (err) {
            setDeleteError(err?.response?.data?.message || err.message || "Greška pri brisanju profila.");
        } finally {
            setDeleting(false);
            setConfirmDeleteOpen(false);
        }
    };

    if (loading) {
        return (
            <div className="user-info-page">
                <div className="user-info-card">
                    <h1 className="title">User info</h1>
                    <p>Učitavanje podataka...</p>
                </div>
            </div>
        );
    }

    if (error) {
        return (
            <div className="user-info-page">
                <div className="user-info-card">
                    <h1 className="title">User info</h1>
                    <p className="validation-error">{error}</p>
                </div>
            </div>
        );
    }

    return (
        <div className="user-info-page">
            <div className="user-info-card">
                <div className="user-info-header">
                    <div>
                        <h1 className="title">User info</h1>
                        <p className="user-info-subtitle">Pregled i uređivanje podataka prijavljenog korisnika.</p>
                    </div>
                    {!editing ? (
                        <button type="button" className="qs-btn" onClick={startEdit}>
                            Uredi
                        </button>
                    ) : (
                        <div className="user-info-actions">
                            <button type="button" className="qs-btn secondary" onClick={cancelEdit} disabled={saving}>
                                Odustani
                            </button>
                            <button type="submit" className="qs-btn" form="user-info-form" disabled={saving}>
                                {saving ? "Spremanje..." : "Spremi"}
                            </button>
                        </div>
                    )}
                </div>

                {saveError && <p className="validation-error">{saveError}</p>}
                {deleteError && <p className="validation-error">{deleteError}</p>}

                {editing ? (
                    <form id="user-info-form" className="user-info-form" onSubmit={saveUser}>
                        <label className="user-info-field">
                            <span className="user-info-label">Ime</span>
                            <input name="firstName" value={form.firstName} onChange={onChange} required />
                        </label>
                        <label className="user-info-field">
                            <span className="user-info-label">Prezime</span>
                            <input name="lastName" value={form.lastName} onChange={onChange} required />
                        </label>
                        <label className="user-info-field">
                            <span className="user-info-label">Datum rođenja</span>
                            <input type="date" name="dateOfBirth" value={form.dateOfBirth} onChange={onChange} />
                        </label>
                        <label className="user-info-field">
                            <span className="user-info-label">Korisničko ime</span>
                            <input name="userName" value={form.userName} onChange={onChange} required />
                        </label>
                        <label className="user-info-field">
                            <span className="user-info-label">Email</span>
                            <input type="email" name="email" value={form.email} onChange={onChange} required />
                        </label>
                        <label className="user-info-field">
                            <span className="user-info-label">Spol</span>
                            <select name="ganderId" value={form.ganderId} onChange={onChange} required>
                                <option value="">Odaberi spol</option>
                                {genders.map((gender) => (
                                    <option key={gender.id} value={gender.id}>
                                        {gender.name}
                                    </option>
                                ))}
                            </select>
                        </label>
                        <label className="user-info-field">
                            <span className="user-info-label">Stupanj obrazovanja</span>
                            <select name="educationId" value={form.educationId} onChange={onChange} required>
                                <option value="">Odaberi stupanj obrazovanja</option>
                                {educations.map((education) => (
                                    <option key={education.id} value={education.id}>
                                        {education.name}
                                    </option>
                                ))}
                            </select>
                        </label>
                    </form>
                ) : (
                    <>
                        <div className="user-info-grid">
                            {viewFields.map(([key, label]) => (
                                <div className="user-info-item" key={key}>
                                    <span className="user-info-label">{label}</span>
                                    <span className="user-info-value">{formatValue(key, user?.[key])}</span>
                                </div>
                            ))}
                        </div>
                        <div className="user-info-danger-zone">
                            <button type="button" className="qs-btn danger" onClick={openDeleteConfirm}>
                                Obriši profil
                            </button>
                        </div>
                    </>
                )}
            </div>

            {confirmDeleteOpen && (
                <div className="signout-backdrop" role="presentation" onClick={cancelDelete}>
                    <div
                        className="signout-modal"
                        role="dialog"
                        aria-modal="true"
                        aria-labelledby="delete-profile-title"
                        onClick={(event) => event.stopPropagation()}
                    >
                        <p id="delete-profile-title" className="signout-text">
                            Želiš li deaktivirati profil?
                        </p>
                        <div className="signout-actions">
                            <button type="button" className="qs-btn secondary" onClick={cancelDelete} disabled={deleting}>
                                Odustani
                            </button>
                            <button type="button" className="qs-btn danger" onClick={deleteProfile} disabled={deleting}>
                                {deleting ? "Brisanje..." : "Obriši profil"}
                            </button>
                        </div>
                    </div>
                </div>
            )}
        </div>
    );
}
