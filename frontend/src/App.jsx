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
import AddQuestionPage from "./pages/AddQuestionPage.jsx";
import DeleteQuestionPage from "./pages/DeleteQuestionPage.jsx";
import ResultsOverviewPage from "./pages/ResultsOverviewPage.jsx";
import EaseIndexPage from "./pages/EaseIndexPage.jsx";
import DiscriminationPage from "./pages/DiscriminationPage.jsx";
import DistractorAnalysisPage from "./pages/DistractorAnalysisPage.jsx";
import ReliabilityPage from "./pages/ReliabilityPage.jsx";
import KnowledgeAreasPage from "./pages/KnowledgeAreasPage.jsx";

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
                    <Route path="/question/new" element={<AddQuestionPage />} />
                    <Route path="/question/delete" element={<DeleteQuestionPage />} />
                    <Route path="/results-overview" element={<ResultsOverviewPage />} />
                    <Route path="/item-analysis/ease-index" element={<EaseIndexPage />} />
                    <Route path="/item-analysis/discrimination" element={<DiscriminationPage />} />
                    <Route path="/item-analysis/distractor-analysis" element={<DistractorAnalysisPage />} />
                    <Route path="/reliability" element={<ReliabilityPage />} />
                    <Route path="/knowledge-areas" element={<KnowledgeAreasPage />} />
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
