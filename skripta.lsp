-- (opcionalno)
-- CREATE SCHEMA IF NOT EXISTS kviz;
-- SET search_path TO kviz;

-- 1) Šifrarnici
CREATE TABLE stupanj_obrazovanja (
  id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  naziv VARCHAR(45) NOT NULL
);

CREATE TABLE spol (
  id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  naziv VARCHAR(45) NOT NULL
);

CREATE TABLE kategorije (
  id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  naziv VARCHAR(45) NOT NULL
);

-- 2) Korisnici
CREATE TABLE korisnici (
  id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  ime VARCHAR(45) NOT NULL,
  prezime VARCHAR(45) NOT NULL,
  datum_rodenja DATE,
  is_admin INT NOT NULL DEFAULT 0,

  korisnicko_ime VARCHAR(45) NOT NULL,
  e_mail VARCHAR(45) NOT NULL,
  lozinka VARCHAR(45) NOT NULL,

  stupanj_obrazovanja_id INT NOT NULL,
  spol_id INT NOT NULL,

  CONSTRAINT uq_korisnici_korisnicko_ime UNIQUE (korisnicko_ime),
  CONSTRAINT uq_korisnici_email UNIQUE (e_mail),

  CONSTRAINT fk_korisnici_stupanj
    FOREIGN KEY (stupanj_obrazovanja_id)
    REFERENCES stupanj_obrazovanja(id)
    ON UPDATE CASCADE
    ON DELETE RESTRICT,

  CONSTRAINT fk_korisnici_spol
    FOREIGN KEY (spol_id)
    REFERENCES spol(id)
    ON UPDATE CASCADE
    ON DELETE RESTRICT
);

CREATE INDEX idx_korisnici_stupanj ON korisnici(stupanj_obrazovanja_id);
CREATE INDEX idx_korisnici_spol ON korisnici(spol_id);

-- 3) Upitnik
CREATE TABLE upitnik (
  id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  korisnici_id INT NOT NULL,

  CONSTRAINT fk_upitnik_korisnici
    FOREIGN KEY (korisnici_id)
    REFERENCES korisnici(id)
    ON UPDATE CASCADE
    ON DELETE RESTRICT
);

CREATE INDEX idx_upitnik_korisnik ON upitnik(korisnici_id);

-- 4) Pitanja
CREATE TABLE pitanja (
  id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  pitanje VARCHAR(256) NOT NULL,
  kategorije_id INT NOT NULL,
  aktivno INT NOT NULL DEFAULT 1,

  CONSTRAINT fk_pitanja_kategorije
    FOREIGN KEY (kategorije_id)
    REFERENCES kategorije(id)
    ON UPDATE CASCADE
    ON DELETE RESTRICT
);

CREATE INDEX idx_pitanja_kategorija ON pitanja(kategorije_id);

-- 5) Odgovori
CREATE TABLE odgovori (
  id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  odgovor VARCHAR(256) NOT NULL,

  aktivno VARCHAR(45) NOT NULL,        -- kao na slici; ako želiš bool, reci pa promijenim
  datum_unosa DATE,
  datum_azuriranja DATE,

  tocan_odgovor INT NOT NULL DEFAULT 0, -- 0/1
  pitanja_id INT NOT NULL,

  CONSTRAINT fk_odgovori_pitanja
    FOREIGN KEY (pitanja_id)
    REFERENCES pitanja(id)
    ON UPDATE CASCADE
    ON DELETE RESTRICT
);

CREATE INDEX idx_odgovori_pitanje ON odgovori(pitanja_id);

-- 6) Veza upitnik <-> odgovori (N:M)
CREATE TABLE upitnik_odgovori (
  id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  upitnik_id INT NOT NULL,
  odgovor_id INT NOT NULL,

  CONSTRAINT uq_uo_upitnik_odgovor UNIQUE (upitnik_id, odgovor_id),

  CONSTRAINT fk_uo_upitnik
    FOREIGN KEY (upitnik_id)
    REFERENCES upitnik(id)
    ON UPDATE CASCADE
    ON DELETE CASCADE,

  CONSTRAINT fk_uo_odgovor
    FOREIGN KEY (odgovor_id)
    REFERENCES odgovori(id)
    ON UPDATE CASCADE
    ON DELETE CASCADE
);

CREATE INDEX idx_uo_upitnik ON upitnik_odgovori(upitnik_id);
CREATE INDEX idx_uo_odgovor ON upitnik_odgovori(odgovor_id);
