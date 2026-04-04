import React from "react";
import { useNavigate } from "react-router-dom";
import "../App.css";

export default function WelcomeScreen() {
    const navigate = useNavigate();

    return (
        <div>
            <div>
                <div className="title">Dobrodošli</div>

                <div>
                    <button className="button-primary" onClick={() => navigate("/login")}>
                        Login
                    </button>

                    <button className="button-primary" onClick={() => navigate("/register")}>
                        Registracija
                    </button>
                </div>
            </div>
        </div>
    );
}
