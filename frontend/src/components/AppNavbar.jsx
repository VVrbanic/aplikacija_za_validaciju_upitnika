import React from "react";
import { NavLink, useLocation, useNavigate } from "react-router-dom";
import UserIcon from "./UserIcon";
import "../App.css";

export default function AppNavbar() {
    const navigate = useNavigate();
    const location = useLocation();
    const [questionsOpen, setQuestionsOpen] = React.useState(false);
    const [itemAnalysisOpen, setItemAnalysisOpen] = React.useState(false);
    const questionsMenuRef = React.useRef(null);
    const itemAnalysisMenuRef = React.useRef(null);
    const [isAdmin, setIsAdmin] = React.useState(false);

    React.useEffect(() => {
        const handleOutsideClick = (event) => {
            if (questionsMenuRef.current && !questionsMenuRef.current.contains(event.target)) {
                setQuestionsOpen(false);
            }
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
            setQuestionsOpen(false);
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
                            to="/knowledge-areas"
                            className={({ isActive }) => `app-navbar-link${isActive ? " active" : ""}`}
                        >
                            Područja znanja
                        </NavLink>

                        <div className="app-navbar-dropdown" ref={questionsMenuRef}>
                            <button
                                type="button"
                                className="app-navbar-link app-navbar-dropdown-toggle"
                                aria-haspopup="menu"
                                aria-expanded={questionsOpen}
                                onClick={() => setQuestionsOpen((open) => !open)}
                            >
                                Pitanja
                            </button>

                            {questionsOpen && (
                                <div className="app-navbar-dropdown-menu" role="menu" aria-label="Pitanja">
                                    <button
                                        type="button"
                                        className="app-navbar-dropdown-item"
                                        role="menuitem"
                                        onClick={() => {
                                            setQuestionsOpen(false);
                                            navigate("/question/new");
                                        }}
                                    >
                                        Dodaj pitanje
                                    </button>
                                    <button
                                        type="button"
                                        className="app-navbar-dropdown-item"
                                        role="menuitem"
                                        onClick={() => {
                                            setQuestionsOpen(false);
                                            navigate("/question/delete");
                                        }}
                                    >
                                        Izbrisi pitanje
                                    </button>
                                </div>
                            )}
                        </div>
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
