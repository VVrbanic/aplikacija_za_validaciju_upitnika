import React, { useState } from "react";
import { useNavigate, Link } from "react-router-dom";
import  "../App.css";

export default function Login() {
    const navigate = useNavigate();

    const [form, setForm] = useState({
        userName: "",
        email: "",
        password: "",
    });

    const [loading, setLoading] = useState(false);
    const [error, setError] = useState("");

    const handleChange = (e) => {
        const { name, value } = e.target;
        setForm((prev) => ({ ...prev, [name]: value }));
    };

    const handleSubmit = async (e) => {
        e.preventDefault();
        setError("");

        if (!form.userName || !form.password) {
            setError("Molim unesi email i lozinku.");
            return;
        }

        setLoading(true);
        try {

            const res = await fetch("http://localhost:8080/users/login", {
                method: "POST",
                headers: { "Content-Type": "application/json" },
                body: JSON.stringify(form),
            });

            if (!res.ok) {
                const msg = await res.text();
                throw new Error(msg || "Neuspješan login.");
            }

            const data = await res.json();

            if (data.token) {
                localStorage.setItem("token", data.token);
                localStorage.setItem("auth", JSON.stringify(data.user));
            }

            navigate("/quiz/statistic");
        } catch (err) {
            setError(err.message || "Greška pri loginu.");
        } finally {
            setLoading(false);
        }
    };

    return (
        <div>
            <div className="title">Login</div>

            {error && (
                <div style={{ marginBottom: 12 }}>
                    <p>{error}</p>
                </div>
            )}

            <form onSubmit={handleSubmit}>
                <div>
                    <input
                        id="userName"
                        name="userName"
                        type="userName"
                        value={form.userName}
                        onChange={handleChange}
                        placeholder="user name"
                        autoComplete="userName"

                    />
                </div>
                <div>
                    <input
                        id="password"
                        name="password"
                        type="password"
                        value={form.password}
                        onChange={handleChange}
                        placeholder="Upiši lozinku"
                        autoComplete="current-password"
                    />
                </div>

                <button type="submit" disabled={loading}>
                    {loading ? "Prijava..." : "Login"}
                </button>
            </form>

            <p style={{marginTop: 12}}>
                Nemaš račun? <Link to="/register">Registracija</Link>
            </p>
        </div>
    );
}
