import "../App.css";

export default function AdminToolPage({ title, description }) {
    return (
        <div className="admin-tool-page">
            <div className="title">{title}</div>
            <div className="admin-tool-card">
                <p className="admin-tool-description">{description}</p>
                <p className="admin-tool-note">
                    Ova stranica je dodana kao početna ruta za administratorski modul i spremna je za
                    daljnju implementaciju stvarne analize.
                </p>
            </div>
        </div>
    );
}
