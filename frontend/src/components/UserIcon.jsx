import React, { useEffect, useRef, useState } from "react";
import { useNavigate } from "react-router-dom";
import axios from "axios";
import { FaUserCircle } from "react-icons/fa";
import "../App.css";

export default function UserIcon() {
    const navigate = useNavigate();
    const menuRef = useRef(null);
    const [open, setOpen] = useState(false);
    const [confirmSignOutOpen, setConfirmSignOutOpen] = useState(false);

    useEffect(() => {
        const handleClickOutside = (event) => {
            if (menuRef.current && !menuRef.current.contains(event.target)) {
                setOpen(false);
            }
        };

        document.addEventListener("mousedown", handleClickOutside);
        return () => document.removeEventListener("mousedown", handleClickOutside);
    }, []);

    const goToProfile = () => {
        setOpen(false);
        navigate("/user-info");
    };

    const openSignOutConfirm = () => {
        setOpen(false);
        setConfirmSignOutOpen(true);
    };

    const cancelSignOut = () => {
        setConfirmSignOutOpen(false);
    };

    const confirmSignOut = async () => {
        const token = localStorage.getItem("token");

        try {
            if (token) {
                await axios.post("http://localhost:8080/users/logout", null, {
                    headers: {
                        Authorization: `Bearer ${token}`,
                    },
                });
            }
        } finally {
            localStorage.removeItem("token");
            localStorage.removeItem("auth");
            setConfirmSignOutOpen(false);
            navigate("/login", { replace: true });
        }
    };

    return (
        <div ref={menuRef} className="user-menu">
            <button
                type="button"
                className="user-icon-btn"
                onClick={() => setOpen((prev) => !prev)}
                aria-label="Open user menu"
                aria-expanded={open}
                aria-haspopup="menu"
                title="Open user menu"
            >
                <FaUserCircle size={24} />
            </button>

            {open && (
                <div className="user-menu-dropdown" role="menu" aria-label="User menu">
                    <button type="button" className="user-menu-item" onClick={goToProfile} role="menuitem">
                        Profil
                    </button>
                    <button type="button" className="user-menu-item" onClick={openSignOutConfirm} role="menuitem">
                        Sign Out
                    </button>
                </div>
            )}

            {confirmSignOutOpen && (
                <div className="signout-backdrop" role="presentation" onClick={cancelSignOut}>
                    <div
                        className="signout-modal"
                        role="dialog"
                        aria-modal="true"
                        aria-labelledby="signout-title"
                        onClick={(event) => event.stopPropagation()}
                    >
                        <p id="signout-title" className="signout-text">
                            Do you really want to sign out?
                        </p>
                        <div className="signout-actions">
                            <button type="button" className="qs-btn secondary" onClick={cancelSignOut}>
                                No
                            </button>
                            <button type="button" className="qs-btn" onClick={confirmSignOut}>
                                Yes
                            </button>
                        </div>
                    </div>
                </div>
            )}
        </div>
    );
}
