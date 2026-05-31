import { BrowserRouter as Router, Routes, Route, useLocation } from "react-router-dom";
import { useEffect, useState } from "react";

import AppNavbar from "./components/AppNavbar";
import WelcomeScreen from "./pages/WelcomeScreen";
import RegisterPage from "./pages/RegisterPage";
import Login from "./pages/Login";
import UserInfo from "./pages/UserInfo";
import QuizStatistic from "./pages/QuizStatistic.jsx";
import Quiz from "./pages/Quiz";
import QuizSetupPage from "./pages/QuizSetupPage.jsx";

const THEME_STORAGE_KEY = "theme";

function AppContent() {
    const location = useLocation();
    const [isLoggedIn, setIsLoggedIn] = useState(() => !!localStorage.getItem("token"));

    useEffect(() => {
        const savedTheme = localStorage.getItem(THEME_STORAGE_KEY) || "dark";
        document.documentElement.setAttribute("data-theme", savedTheme);
        localStorage.setItem(THEME_STORAGE_KEY, savedTheme);
    }, []);

    useEffect(() => {
        setIsLoggedIn(!!localStorage.getItem("token"));
    }, [location.pathname]);

    return (
        <>
            {isLoggedIn && <AppNavbar />}
            <div className={isLoggedIn ? "app-shell with-navbar" : "app-shell"}>
                <Routes>
                    <Route path="/" element={<WelcomeScreen />} />
                    <Route path="/register" element={<RegisterPage />} />
                    <Route path="/login" element={<Login />} />
                    <Route path="/quiz/statistic" element={<QuizStatistic />} />
                    <Route path="/quiz/new" element={<QuizSetupPage />} />
                    <Route path="/quiz/play" element={<Quiz />} />
                    <Route path="/user-info" element={<UserInfo />} />
                </Routes>
            </div>
        </>
    );
}

export default function App() {
    return (
        <Router>
            <AppContent />
        </Router>
    );
}
