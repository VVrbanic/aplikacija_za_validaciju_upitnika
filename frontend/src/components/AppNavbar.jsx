import React from "react";
import { NavLink } from "react-router-dom";
import UserIcon from "./UserIcon";
import "../App.css";

export default function AppNavbar() {
    return (
        <nav className="app-navbar" aria-label="Glavna navigacija">
            <div className="app-navbar-links">
                <NavLink
                    to="/quiz/statistic"
                    className={({ isActive }) => `app-navbar-link${isActive ? " active" : ""}`}
                >
                    Statistika
                </NavLink>
                <NavLink
                    to="/quiz/new"
                    className={({ isActive }) => `app-navbar-link${isActive ? " active" : ""}`}
                >
                    Novi kviz
                </NavLink>
            </div>

            <div className="app-navbar-user">
                <UserIcon />
            </div>
        </nav>
    );
}
