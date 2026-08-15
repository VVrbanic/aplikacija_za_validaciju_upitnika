import { useEffect, useState } from "react";
import axios from "axios";
import {useNavigate} from "react-router-dom";


const passwordRegex = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d).{8,}$/;
const isPasswordValid = (p) => passwordRegex.test(p);

export default function RegisterPage() {
    const navigate = useNavigate();
    const [form, setForm] = useState({
        firstName: "",
        lastName: "",
        dateOfBirth: "",
        userName: "",
        email: "",
        password: "",
        repeatPassword: "",
        ganderId: "",
        educationId: "",
    });

    const [errors, setErrors] = useState({});
    const [spolOptions, setSpolOptions] = useState([]);
    const [eduOptions, setEduOptions] = useState([]);
    const [loadingLookups, setLoadingLookups] = useState(true);
    const [lookupError, setLookupError] = useState("");

    useEffect(() => {
        const load = async () => {
            try {
                setLoadingLookups(true);
                setLookupError("");
                try {
                    const [spolRes, eduRes] = await Promise.all([
                        axios.get("http://localhost:8080/gender"),
                        axios.get("http://localhost:8080/education"),
                    ]);
                    setSpolOptions(spolRes.data);
                    setEduOptions(eduRes.data);

                } catch (err) {
                    throw new Error("Ne mogu dohvatiti spol ili obrazovanje.");
                }
            } catch (e) {
                setLookupError(e.message || "Greška pri dohvaćanju podataka.");
            } finally {
                setLoadingLookups(false);
            }
        };
        load();
    }, []);

    const onChange = (e) => {
        setForm((p) => ({ ...p, [e.target.name]: e.target.value }));
    };

    const validate = () => {
        const e = {};
        if (!form.firstName) e.firstName = "Ime je obavezno";
        if (!form.lastName) e.lastName = "Prezime je obavezno";
        if (!form.userName) e.userName = "Korisničko ime je obavezno";

        if (!form.email || !form.email.includes("@")) e.email = "Email nije ispravan";

        if (!form.dateOfBirth) e.dateOfBirth = "Datum rođenja je obavezan";

        if (!isPasswordValid(form.password)) {
            e.password = "Lozinka mora imati min. 8 znakova, veliko i malo slovo te broj";
        }

        if (form.password !== form.repeatPassword) {
            e.repeatPassword = "Lozinke se ne podudaraju";
        }

        if (!form.ganderId) e.ganderId = "Odaberi spol";
        if (!form.educationId) e.educationId = "Odaberi stupanj obrazovanja";

        setErrors(e);
        return Object.keys(e).length === 0;
    };

    const onSubmit = async (e) => {
        e?.preventDefault();

        if (!validate()) return;

        const payload = {
            firstName: form.firstName,
            lastName: form.lastName,
            dateOfBirth: form.dateOfBirth || null,
            userName: form.userName,
            email: form.email,
            password: form.password,
            ganderId: Number(form.ganderId),
            educationId: Number(form.educationId),
            isAdmin: false
        };

        try {
            await axios.post("http://localhost:8080/users", payload, {
                headers: { "Content-Type": "application/json" },
            });

            alert("Korisnik kreiran!");
            navigate("/login");
        } catch (err) {

            const msg =
                err?.response?.data?.message ||
                (typeof err?.response?.data === "string" ? err.response.data : null) ||
                err?.message ||
                "Greška pri registraciji.";

            alert(msg);
        }
    };


    return (
        <form onSubmit={onSubmit} className="register-form">
            <div className="title">Registracija</div>

            <input name="firstName" placeholder="Ime" value={form.firstName} onChange={onChange} />
            {errors.firstName && <small className="validation-error">{errors.firstName}</small>}

            <input name="lastName" placeholder="Prezime" value={form.lastName} onChange={onChange} />
            {errors.lastName && <small className="validation-error">{errors.lastName}</small>}

            <input name="userName" placeholder="Korisničko ime" value={form.userName} onChange={onChange} />
            {errors.userName && <small className="validation-error">{errors.userName}</small>}

            <input type="email" name="email" placeholder="Email" value={form.email} onChange={onChange} />
            {errors.email && <small className="validation-error">{errors.email}</small>}

            <input type="date" name="dateOfBirth" value={form.dateOfBirth} onChange={onChange} />
            {errors.dateOfBirth && <small className="validation-error">{errors.dateOfBirth}</small>}

            <input type="password" name="password" placeholder="Lozinka" value={form.password} onChange={onChange} />
            {errors.password && <small className="validation-error">{errors.password}</small>}

            <input type="password" name="repeatPassword" placeholder="Ponovi lozinku" value={form.repeatPassword} onChange={onChange} />
            {errors.repeatPassword && <small className="validation-error">{errors.repeatPassword}</small>}

            {lookupError && <small className="validation-error">{lookupError}</small>}

            <select name="ganderId" value={form.ganderId} onChange={onChange} disabled={loadingLookups}>
                <option value="">{loadingLookups ? "Učitavanje spola..." : "Odaberi spol"}</option>
                {spolOptions.map((s) => (
                    <option key={s.id} value={s.id}>
                        {s.name}
                    </option>
                ))}
            </select>
            {errors.ganderId && <small className="validation-error">{errors.ganderId}</small>}

            <select
                name="educationId"
                value={form.educationId}
                onChange={onChange}
                disabled={loadingLookups}
            >
                <option value="">{loadingLookups ? "Učitavanje edukacije..." : "Odaberi stupanj obrazovanja"}</option>
                {eduOptions.map((x) => (
                    <option key={x.id} value={x.id}>
                        {x.name}
                    </option>
                ))}
            </select>
            {errors.educationId && <small className="validation-error">{errors.educationId}</small>}

            <button className="login-button" type="submit" disabled={loadingLookups || !!lookupError}>
                Registriraj se
            </button>
            <button className="login-button secondary" type="button" onClick={() => navigate("/login")}>
                Povratak na prijavu
            </button>
        </form>
    );
}
