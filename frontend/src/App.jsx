import { BrowserRouter as Router, Navigate, Routes, Route, useLocation } from "react-router-dom";
import { useEffect, useState } from "react";

import AppNavbar from "./components/AppNavbar";
import WelcomeScreen from "./pages/WelcomeScreen";
import RegisterPage from "./pages/RegisterPage";
import Login from "./pages/Login";
import UserInfo from "./pages/UserInfo";
import QuizStatistic from "./pages/QuizStatistic.jsx";
import Quiz from "./pages/Quiz";
import QuizSetupPage from "./pages/QuizSetupPage.jsx";
import AddQuestionPage from "./pages/AddQuestionPage.jsx";
import DeleteQuestionPage from "./pages/DeleteQuestionPage.jsx";
import ResultsOverviewPage from "./pages/ResultsOverviewPage.jsx";
import EaseIndexPage from "./pages/EaseIndexPage.jsx";
import DiscriminationPage from "./pages/DiscriminationPage.jsx";
import DistractorAnalysisPage from "./pages/DistractorAnalysisPage.jsx";
import ReliabilityPage from "./pages/ReliabilityPage.jsx";
import { isAuthenticated } from "./api.js";

const THEME_STORAGE_KEY = "theme";

function ProtectedRoute({ children }) {
    const location = useLocation();

    if (!isAuthenticated()) {
        return <Navigate to="/login" replace state={{ from: location.pathname }} />;
    }

    return children;
}

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
                    <Route path="/quiz/statistic" element={<ProtectedRoute><QuizStatistic /></ProtectedRoute>} />
                    <Route path="/quiz/new" element={<ProtectedRoute><QuizSetupPage /></ProtectedRoute>} />
                    <Route path="/question/new" element={<ProtectedRoute><AddQuestionPage /></ProtectedRoute>} />
                    <Route path="/question/delete" element={<ProtectedRoute><DeleteQuestionPage /></ProtectedRoute>} />
                    <Route path="/results-overview" element={<ProtectedRoute><ResultsOverviewPage /></ProtectedRoute>} />
                    <Route path="/item-analysis/ease-index" element={<ProtectedRoute><EaseIndexPage /></ProtectedRoute>} />
                    <Route path="/item-analysis/discrimination" element={<ProtectedRoute><DiscriminationPage /></ProtectedRoute>} />
                    <Route path="/item-analysis/distractor-analysis" element={<ProtectedRoute><DistractorAnalysisPage /></ProtectedRoute>} />
                    <Route path="/reliability" element={<ProtectedRoute><ReliabilityPage /></ProtectedRoute>} />
                    <Route path="/quiz/play" element={<ProtectedRoute><Quiz /></ProtectedRoute>} />
                    <Route path="/user-info" element={<ProtectedRoute><UserInfo /></ProtectedRoute>} />
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
