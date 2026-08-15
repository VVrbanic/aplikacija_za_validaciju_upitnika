import { useLocation, useNavigate } from "react-router-dom";

export default function QuestionManagementTabs() {
    const navigate = useNavigate();
    const location = useLocation();

    return (
        <div className="item-analysis-tabs" role="tablist" aria-label="Upravljanje pitanjima">
            <button
                type="button"
                onClick={() => navigate("/question/new")}
                role="tab"
                aria-selected={location.pathname === "/question/new"}
                className={location.pathname === "/question/new" ? "active" : ""}
            >
                Dodaj pitanje
            </button>
            <button
                type="button"
                onClick={() => navigate("/question/delete")}
                role="tab"
                aria-selected={location.pathname === "/question/delete"}
                className={location.pathname === "/question/delete" ? "active" : ""}
            >
                Izbriši pitanje
            </button>
        </div>
    );
}
