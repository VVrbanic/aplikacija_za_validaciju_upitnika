INSERT INTO kategorije (naziv) VALUES
   ('Ljudi'),
   ('Povijest'),
   ('Geografija'),
   ('Umjetnost'),
   ('Filozofija'),
   ('Vjera'),
   ('Svakodnevni život'),
   ('Sport'),
   ('Nutricionizam'),
   ('Društvo'),
   ('Zdravlje'),
   ('Znanost'),
   ('Tehnologija'),
   ('Matematika');

DELETE FROM kategorije
WHERE id IN (12, 13, 14, 15);

UPDATE kategorije
SET naziv = CASE id
                WHEN 1 THEN 'Ljudi'
                WHEN 2 THEN 'Povijest'
                WHEN 3 THEN 'Geografija'
                WHEN 4 THEN 'Kultura'
                WHEN 5 THEN 'Filozofija'
                WHEN 6 THEN 'Svakodnevni život'
                WHEN 7 THEN 'Društvo'
                WHEN 8 THEN 'Zdravlje'
                WHEN 9 THEN 'Znanost'
                WHEN 10 THEN 'Tehnologija'
                WHEN 11 THEN 'Matematika'
                ELSE naziv
    END
WHERE id BETWEEN 1 AND 11;

ALTER SEQUENCE kategorije_id_seq RESTART WITH 12;

INSERT INTO spol (naziv)
VALUES
    ('muški'),
    ('ženski'),
    ('ostalo');

INSERT INTO stupanj_obrazovanja (naziv)
VALUES
    ('Osnovna škola'),
    ('Srednja škola'),
    ('Viša stručna sprema'),
    ('Preddiplomski studij'),
    ('Diplomski studij'),
    ('Poslijediplomski studij'),
    ('Doktorat');