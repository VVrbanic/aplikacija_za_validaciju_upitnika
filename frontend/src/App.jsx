import { BrowserRouter as Router, Routes, Route, useLocation } from "react-router-dom";
import { useMemo } from "react";

import UserIcon from "./components/UserIcon";
import WelcomeScreen from "./pages/WelcomeScreen";
import RegisterPage from "./pages/RegisterPage";
import Login from "./pages/Login";
import UserInfo from "./pages/UserInfo";
import QuizStatistic from "./pages/QuizStatistic.jsx";
import Quiz from "./pages/Quiz";

function AppContent() {
    const location = useLocation();
    const isLoggedIn = useMemo(() => {
        return !!localStorage.getItem("token");
    }, [location.pathname]);

    return (
        <>
            {isLoggedIn && <UserIcon />}
            <Routes>
                <Route path="/" element={<WelcomeScreen />} />
                <Route path="/register" element={<RegisterPage />} />
                <Route path="/login" element={<Login />} />
                <Route path="/quiz/statistic" element={<QuizStatistic />} />
                <Route path="/quiz/new" element={<Quiz />} />
                <Route path="/user-info" element={<UserInfo />} />
            </Routes>
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