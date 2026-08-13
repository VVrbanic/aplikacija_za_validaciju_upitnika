import { useNavigate } from "react-router-dom";

export default function QuestionManagementTabs() {
    const navigate = useNavigate();
    return (
        <div className="item-analysis-tabs" role="tablist" aria-label="Upravljanje pitanjima">
            <button onClick={() => navigate("/question/new")} role="tab" className={({ isActive }) => isActive ? "active" : ""}>
                Dodaj pitanje
            </button>
            <button onClick={() => navigate("/question/delete")} role="tab" className={({ isActive }) => isActive ? "active" : ""}>
                Izbriši pitanje
            </button>
        </div>
    );
}
