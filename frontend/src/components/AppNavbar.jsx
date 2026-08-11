import React from "react";
import { NavLink, useNavigate } from "react-router-dom";
import UserIcon from "./UserIcon";
import "../App.css";

export default function AppNavbar() {
    const navigate = useNavigate();
    const [questionsOpen, setQuestionsOpen] = React.useState(false);
    const questionsMenuRef = React.useRef(null);

    React.useEffect(() => {
        const handleOutsideClick = (event) => {
            if (questionsMenuRef.current && !questionsMenuRef.current.contains(event.target)) {
                setQuestionsOpen(false);
            }
        };

        document.addEventListener("mousedown", handleOutsideClick);
        return () => document.removeEventListener("mousedown", handleOutsideClick);
    }, []);

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
            </div>

            <div className="app-navbar-user">
                <UserIcon />
            </div>
        </nav>
    );
}
