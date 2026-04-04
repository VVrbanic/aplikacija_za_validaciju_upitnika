import React from "react";
import { useNavigate } from "react-router-dom";
import "../App.css";
import "../charts.css";
import UserStatistic from "../components/UserStatistic.jsx";


export default function QuizStatistic() {
    const navigate = useNavigate();


    return (
        <div className="register-form">
            <div className="title">Statistika</div>

            <UserStatistic />

            <button type="button" className="login-button" onClick={() => { navigate("/quiz/new")}}>
                Novi kviz
            </button>
        </div>
    );
}
