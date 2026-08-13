import React from "react";
import { NavLink, useLocation, useNavigate } from "react-router-dom";
import UserIcon from "./UserIcon";
import "../App.css";

export default function AppNavbar() {
    const navigate = useNavigate();
    const location = useLocation();
    const [itemAnalysisOpen, setItemAnalysisOpen] = React.useState(false);
    const itemAnalysisMenuRef = React.useRef(null);
    const [isAdmin, setIsAdmin] = React.useState(false);

    React.useEffect(() => {
        const handleOutsideClick = (event) => {
            if (itemAnalysisMenuRef.current && !itemAnalysisMenuRef.current.contains(event.target)) {
                setItemAnalysisOpen(false);
            }
        };

        document.addEventListener("mousedown", handleOutsideClick);
        return () => document.removeEventListener("mousedown", handleOutsideClick);
    }, []);

    React.useEffect(() => {
        try {
            const authRaw = localStorage.getItem("auth");
            const auth = authRaw ? JSON.parse(authRaw) : null;
            setIsAdmin(auth?.isAdmin === 1 || auth?.isAdmin === true);
            setItemAnalysisOpen(false);
        } catch {
            setIsAdmin(false);
        }
    }, [location.pathname]);

    return (
        <nav className="app-navbar" aria-label="Glavna navigacija">
            <div className="app-navbar-links">
                {isAdmin ? (
                    <>
                        <NavLink
                            to="/results-overview"
                            className={({ isActive }) => `app-navbar-link${isActive ? " active" : ""}`}
                        >
                            Pregled rezultata
                        </NavLink>

                        <div className="app-navbar-dropdown" ref={itemAnalysisMenuRef}>
                            <button
                                type="button"
                                className="app-navbar-link app-navbar-dropdown-toggle"
                                aria-haspopup="menu"
                                aria-expanded={itemAnalysisOpen}
                                onClick={() => setItemAnalysisOpen((open) => !open)}
                            >
                                Analiza čestica
                            </button>

                            {itemAnalysisOpen && (
                                <div className="app-navbar-dropdown-menu" role="menu" aria-label="Analiza cestica">
                                    <button
                                        type="button"
                                        className="app-navbar-dropdown-item"
                                        role="menuitem"
                                        onClick={() => {
                                            setItemAnalysisOpen(false);
                                            navigate("/item-analysis/ease-index");
                                        }}
                                    >
                                        Indeks lakoće
                                    </button>
                                    <button
                                        type="button"
                                        className="app-navbar-dropdown-item"
                                        role="menuitem"
                                        onClick={() => {
                                            setItemAnalysisOpen(false);
                                            navigate("/item-analysis/discrimination");
                                        }}
                                    >
                                        Diskriminativnost
                                    </button>
                                    <button
                                        type="button"
                                        className="app-navbar-dropdown-item"
                                        role="menuitem"
                                        onClick={() => {
                                            setItemAnalysisOpen(false);
                                            navigate("/item-analysis/distractor-analysis");
                                        }}
                                    >
                                        Analiza distraktora
                                    </button>
                                </div>
                            )}
                        </div>

                        <NavLink
                            to="/reliability"
                            className={({ isActive }) => `app-navbar-link${isActive ? " active" : ""}`}
                        >
                            Pouzdanost
                        </NavLink>

                        <NavLink
                            to="/question/new"
                            className={({ isActive }) => `app-navbar-link${isActive ? " active" : ""}`}
                        >
                            Pitanja
                        </NavLink>
                    </>
                ) : (
                    <>
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
                    </>
                )}
            </div>

            <div className="app-navbar-user">
                <UserIcon />
            </div>
        </nav>
    );
}
