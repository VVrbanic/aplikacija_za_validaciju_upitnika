import React from "react";
import { useNavigate } from "react-router-dom";
import { FaUserCircle } from "react-icons/fa";
import "../App.css";

export default function UserIcon() {
    const navigate = useNavigate();

    return (
        <button
            type="button"
            className="user-icon-btn"
            onClick={() => navigate("/user-info")}
            aria-label="User info"
            title="User info"
        >
            <FaUserCircle size={24} />
        </button>
    );
}
