import axios from "axios";

const API_BASE_URL = import.meta.env.VITE_API_BASE_URL ?? "http://localhost:8080";

export const api = axios.create({
    baseURL: API_BASE_URL,
});

api.interceptors.request.use((config) => {
    const token = getAuthToken();
    if (token && !config.headers?.Authorization) {
        config.headers.Authorization = `Bearer ${token}`;
    }
    return config;
});

export function getAuthToken() {
    return localStorage.getItem("token");
}

export function isAuthenticated() {
    return !!getAuthToken();
}
