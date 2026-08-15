import React from "react";
import { useNavigate } from "react-router-dom";
import "../App.css";

export default function WelcomeScreen() {
    const navigate = useNavigate();

    return (
        <main className="welcome-page">
            <section className="welcome-card">
                <p className="welcome-kicker">SPREMNI ZA IGRU?</p>
                <h1>Quiz Arena</h1>
                <p className="welcome-copy">
                    Odaberi kategoriju, osvoji bodove i vidi koliko zapravo znas.
                </p>
                <div className="welcome-actions">
                    <button className="btn" onClick={() => navigate("/login")}>
                        Kreni igrati <span aria-hidden="true">→</span>
                    </button>
                    <button className="btn secondary" onClick={() => navigate("/register")}>
                        Izradi racun
                    </button>
                </div>
                <div className="welcome-stats" aria-label="Prednosti aplikacije">
                    <span>✦ Razne kategorije</span>
                    <span>✦ Tvoj napredak</span>
                    <span>✦ Novi izazovi</span>
                </div>
            </section>
        </main>
    );
}
