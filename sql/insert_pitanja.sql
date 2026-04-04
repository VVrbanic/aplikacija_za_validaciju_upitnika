BEGIN;
--KATEGORIJA 1--
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('U kojem od sljedećih filmova Steven Spielberg nije glumio?', 1, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Gremlini', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Room 666', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Zona sumraka', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Nebo boje vanilije', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koja pjevačica glumi u završnom dijelu postapokaliptične trilogije o drumskom ratniku Maxu?', 1, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Madonna', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Susan Sarandon', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Kim Basinger', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Tina Turner', 1, CURRENT_DATE, CURRENT_DATE, 1)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koje je puno ima Al Pacina?', 1, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Alfred James', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Albert James', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Alfredo James', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Augusto James', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Po čemu je poznat Mark Zuckerberg?', 1, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Osnovao je Facebook', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Osnovao je Twitter', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Osnovao je Instagram', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Osnovao je Reddit', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Obitelj Rockerfeller je stekla bogatstvo na kojoj vrsti industrije?', 1, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Industriji zlata', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Industriji nafte', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Industriji olova', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Industriji papira', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koliko je godina imao Coronel Hardnel Sanders kada je otvorio prvi KFC?', 1, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('23', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('63', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('53', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('33', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Vasco da Gama prvi je', 1, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Oplovio Beringov prolaz', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Oplovio od Europe do Indije', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Napravio brodsku vezu s Japanom', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Oplovio od Portugala do Falklandskog otočja', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Što od navedenog nije točno o Christopheru Columbusu?', 1, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('U dobi od 41 godine doživio je srčani udar', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Bio je Talijan po podrijetlu', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Imao je ukupno 6 velikih putovanja', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Vjerovao je u teoriju da je Zemlja ravna ploča', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koji je istraživač otkrio dijelove Sjeverne Amerike koji su danas poznatiji pod nazivom Newfoundland?', 1, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Vasco de Gama', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('James Cook', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Sir Francis Drake', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('John Cabot', 1, CURRENT_DATE, CURRENT_DATE, 1)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Što se od navedenog odnosi na Marca Pola?', 1, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Najpoznatiji je po putovanju do Asije i Kine', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Najpoznatiji je po putovanju preko Tihog Oceana', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Najpoznatiji je po istraživanju Afrike', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Najpoznatiji je po istraživanju Južne Amerike', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Znanstvenik Ivica Đikić je poznat po otkriću:', 1, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Mehanizma obrane ljudskog organizma od karcinoma', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Molekularne strukture tuberkuloze', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Lijeka protiv sifilisa', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Cijepiva protiv HIV-a', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koje je mjesto rođenja poznatog istraživača Nikole Tesle?', 1, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Smiljan', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Smiljanić', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Vučedol', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Šibenik', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koji je nobelovac 1910. otkrio Rh-faktor i 4 krvne grupe?', 1, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Karl Landesteiner', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Riccardo Giacconi', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Alphonse Laveran', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Hannes Alfvén', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Što od navedenog se ne odnosi na Louisa Pasteura?', 1, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Bavio se proučavanjem alkoholne i mlječne fermentacije', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Otkrio je uzročnike bolesti kod peradi', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Nakon bombardiranja Pariza je tražio da se briše njegovo ime s popisa počasnih doktorata u Sveučilišta u Bonnu', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Bio je prosječan učenik s darom za kemiju', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Robert Koch je otrkio uzročnike kojih bolesti?', 1, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Kolere, bedrenice i turbekuloze', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Tuberkuloze, karcinoma i sifilisa', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Sifilisa, bedrenice i HPV-a', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Sifilisa, HPV-a i HIV-a', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Što od navedenog nije istina o Stephanu Hawkingu?', 1, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Poznatiji je po doprinosu na poljima kozmologije', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Bio je dva puta oženjen', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Film Teorija svega prenosi priču braka između Hawkinga i njegove bivše žene Jane', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Stephan Hawking pati od rijetkog tipa multiple skleroze', 1, CURRENT_DATE, CURRENT_DATE, 1)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Tko je zaslužan za izum telefona?', 1, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Alexandar Bell', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Thomas Edison', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Samuel Morse', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Nikola Tesla', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koji par nije točan?', 1, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Count Alessandro Volta- prva baterija', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Humpary Davy- prva lampa', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('George Stephanson- prva lokomotiva', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Michael Faraday- prvi stratoskop', 1, CURRENT_DATE, CURRENT_DATE, 1)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koji par nije točan', 1, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Kripatrick Macmillan- prvi bicikl', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Elias Howe- prva pegla', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Joseph Gayetty- prvi toletni papir', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Samuel Colt- prvi revolver', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Tko je bio Walter Hunt?', 1, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Izumitelj prve ziherice', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Izumitelj prvog šivačeg stroja', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Izumitelj prve igle', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Izumitelj prve motalice za vunu', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koji od sljedećih izuma nisu izumili Hrvati?', 1, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Padobran', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Penkala', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('MP3 player', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Pisača mašina', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Tko je od navedenih matematičara prvi rođen?', 1, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Blaise Pascal', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Tales Milećanin', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Eratosten', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('George Boole', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koja od navedenih činjenica NIJE točna?', 1, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Pitagora je bio sin bogatog trgovca.', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Tales je bio učitelj Pitagori', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Pitagora je bio vrsan glazbenik i doprinio je matematičkoj teoriji glazbe', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Pitagora je poginio utapljanjem', 1, CURRENT_DATE, CURRENT_DATE, 1)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koja je od navedenih činjenica točna?', 1, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Leonhard Euler je rođen u Švicarskoj', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Arhimedovi principi objašnjavaju volumer kvadra', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Osnivač teorije relativnosti je Ahil', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Najpoznatija anegdota s Einsteinom ukljućuje jabuku', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Alan Turing je poznat po Turingovom testu, što je Turingov test?', 1, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Testira mogućnost kompjutera da izloži inteligentno ponašanje jednako čovjeku', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Testira indeks lakoće u testu sa odgovorima na zaokruživanje', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Testira kvalitetu guma pri velikim brzinama', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Testira kvalitetu pljesni u siru', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Za koji od sljedećih pojmova nije zaslužan Sigmund Freud?', 1, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Podsvjesno', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Analiza snova', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Psihoanaliza', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Analitička psihologija', 1, CURRENT_DATE, CURRENT_DATE, 1)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Što se od navedenog ne odnosi na Friedricha Nietzchea?', 1, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Zaslužan je za smjer u filozofiji koji se zove nihilizam', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Jedna od Nietzcheovih knjiga je Tako je govorio Zaratustra', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Nietzche je zaprosio istu osobu tri puta i ona ga je tri puta odbila', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Umro je od sifilisa', 1, CURRENT_DATE, CURRENT_DATE, 1)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Što od navedenog nije točno za Jean- Paul Satrea?', 1, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Bio je u otvorenoj vezi sa Simone de Beauvoir', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Branio je egzistencijalizam od kritičara', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Branio je začetnik konormizam', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Jedno vrijeme je radio kao meteorolog', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Jedan par ne postoji prema Hipokratovoj tipologji, koji?', 1, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Melankolik- melankolija', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Sangvinik- krv', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Flegmatik- flegma', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Kolerik- žuta žuć', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koji pojam najčešće vežemo za Kanta?', 1, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Transcendetalna metoda', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Transformalna metoda', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Transceformalna metoda', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Trensforcentralna metoda', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koji od potreba ne pripada Maslowljevoj hijerarhiji potreba?', 1, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Fiziološke potrebe', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Potreba za pripadnošću', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Samoaktualizacija', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Potreba za samopoštovanjem', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koji psiholog je poznat po tome da su ga pratile guske?', 1, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Karl Lorenz', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Ivan Pavlov', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Carl Jung', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Albert Bandura', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Burrhus Frederic Skinner je dio koje psihološke škole?', 1, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Geštaltizam', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Biheviorizam', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Kognitivnizam', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Konekcionizam', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Tko je bio glavni iniciator pri gradnji Đakovačke katedrale?', 1, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('J.J. Strossmayer', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('A.G. Matoš', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Starčević', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('J. Jelačić', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Tko je, po Bibliji, razgovarao s goručim grmom?', 1, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Isus', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Alah', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Mojsije', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Marija Magdalena', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Kako se zvao predvodnik Temple People-a?', 1, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Jim Jones', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Ron L. Hubbard', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Sun Myung Moon', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Bonnie Nettles', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koja od slijedećih bogova ne pripada hinduizmu?', 1, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Višna', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Rama', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Šiva', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Šakti', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koji par nije točan?', 1, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Sv. Donat- Split', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Majka Božija od kamenitih vrata- Zagreb', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Bono- Vukovar', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Sv. Eufemija- Poreč', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koje godine je rođen bivši predsjednik Stjepan Mesić?', 1, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('1934.', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('1940.', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('1942.', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('1930.', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Što od navedenog nije točno o Hammurabiju?', 1, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('On je bio jedan od kraljeva Babilonskog carstva', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Hammurabijev zakonik je prvi povijesni pisani zapisnik', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Hammurabi je živio na  prijelazu sa 19. na 18. stoljeće prije Krista', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Hammurabi je pokrštavao Babilonce', 1, CURRENT_DATE, CURRENT_DATE, 1)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koji od slijedećih osoba nije bio glavni tajnik UN-a?', 1, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Kofi Annan', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Ban Ki-mun', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('U Thant', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Emmanuel Marcon', 1, CURRENT_DATE, CURRENT_DATE, 1)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koji je od navedenih Hrvatskih kraljeva nije bio Trpimirović?', 1, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Kralj Tomislav', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Petar Krešimir IV.', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Trpimir II.', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Petar Snačić', 1, CURRENT_DATE, CURRENT_DATE, 1)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koji od slijedećih skupina ljudi Hitler nije smatrao inferiornima?', 1, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Arijevce', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Židove', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Homoseksualce', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Rome', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koji je spomendan Ivane Orleanske?', 1, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('30. svibnja', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('30. siječnja', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('30. travnja', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('30. listopada', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Kako se zvala prva njemačka predsjednica vlade?', 1, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Angela Merkel', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Käte Strobel', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Petra Roth', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Elizabeth Schwarzhaupt', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Na koju od slijedećih osoba nije nikada izvršen atentat?', 1, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Mahatma Gandi', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Papa Ivan Pavao II.', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('J. F. Kenndy', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Kraljica Viktorija', 1, CURRENT_DATE, CURRENT_DATE, 1)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Gdje je umro Nelson Mandela?', 1, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('U zatvoru', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('U bolnici', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('U obiteljskoj kući', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Tokom javnog govora', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koji od slijeći osoba nije jedan od Očeva osnivača Amerike?', 1, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('John Adams', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Alexandar Hamilton', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Tomas Jefferson', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('James Washington', 1, CURRENT_DATE, CURRENT_DATE, 1)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koje carstvo je vodio Gengihis Khan?', 1, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Mongolsko', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Perzijsko', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Tursko', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Arapsko', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koje godine je ubijen Saddam Husein?', 1, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('2004.', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('2006.', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('2010.', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('2008.', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Kako se zvala tajna služba u Sovjetskom savezu?', 1, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('CIA', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Stasi', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('KGB', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('CBC', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koja od slijedećih žena nije nikada bila udana za Henrika VII.?', 1, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Katarina Aragonska', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Kararina Medici', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Kararina Howard', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Katarina Parr', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);
-- 1
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koji slikar je autor ciklusa Gospođice iz Avignona?', 1, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Salvador Dali', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Clude Monet', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Francisco Goya', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Pablo Picasso', 1, CURRENT_DATE, CURRENT_DATE, 1)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 2
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Na kojem pariškom groblju počivaju Freferic Chopin, Georgies Bizet i Honore de Balzac?', 1, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Cimetiere du Pere Lachaise', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Cimetiere du Montparnasse', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Cimetiere de Montmartre', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Cimetiere de Paris', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 3
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Tko je 1889. u Saint-Remyju naslikao znamenitu "Zvjezdanu noć"?', 1, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Vincent van Gogh', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Andy Warhol', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Vasilij Kadinski ', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Oskar Kokoschka', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 4
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Tko je autor kipa „Mislilac“?', 1, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Auguste Rodin', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Ernst Barlach', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Henri Matisse', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Henry Moore', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 5
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koji je slikar autor djela „Stvaranje Adama“?', 1, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Leonardo Da Vinci', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Michelangelo', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Francesco Francia', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Donatello', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 6
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('U kojem razdoblju je živio Leonardo da Vinci?', 1, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Baroku', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Renesansi', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Realizmu', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Gotici', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 7
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koje je puno ime renesansnog umjetnika poznatog pod nazivom „El Greco“?', 1, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Doménikos Theotokópoulos', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Andreas Ritzos', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Katsushika Hokusai', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Suzuki Harunobu', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 8
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koje od navedenih slika je naslikala umjetnica Frida Khalo?', 1, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Košara kruha', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Autoportret s ogrlicom od trnja', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Polja riže i naranče', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Autoportret na plaži', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

COMMIT;

BEGIN;

-- 1) Tko je 1516. napisao "Utopiju"?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Tko je 1516. napisao "Utopiju"?', 1, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Erazmo Roterdamski', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Francis Bacon', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Robert Greene', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Thomas More', 1, CURRENT_DATE, CURRENT_DATE, 1)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 2) Tko je autor pripovijesti "Iz velegradskog podzemlja"?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Tko je autor pripovijesti "Iz velegradskog podzemlja"?', 1, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Vjenceslav Novak', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Ante Kovačević', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Vjekoslav Kaleb', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Miroslav Krleža', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 3) Koji pisac je sa 26 godina oženio svoju nećakinju u dobi od 13 godina?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koji pisac je sa 26 godina oženio svoju nećakinju u dobi od 13 godina?', 1, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Edgar Allan Poe', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Ernest Heminway', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Fjodor Mihajlovič Dostojevski', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Jarome David Salinger', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 4) Koji od sljedećih djela nije napisao Lav Nikolajevič Tolstoj?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koji od sljedećih djela nije napisao Lav Nikolajevič Tolstoj?', 1, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Rat i mir', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Ana Karenjina', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Djetinjstvo', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Djeca grada Moskve', 1, CURRENT_DATE, CURRENT_DATE, 1)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 5) U djelu Franza Kafke Preobražaj Gregor Samsa se probudi kao?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('U djelu Franza Kafke Preobražaj Gregor Samsa se probudi kao?', 1, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Lav', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Kukac', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Riba', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Crv', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 6) Što je karakteristično za Homerove epove?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Što je karakteristično za Homerove epove?', 1, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Didaskalije', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Heksametar', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Parna rima', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Metafora', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 7) Tko je napisao Eneidu?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Tko je napisao Eneidu?', 1, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Eshil', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Horacije', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Homer', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Vergilije', 1, CURRENT_DATE, CURRENT_DATE, 1)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 8) U kojoj eri je živio kineski pjesnik Li Bai?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('U kojoj eri je živio kineski pjesnik Li Bai?', 1, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Edu', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Tang dinastija', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Sui dinastija', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Jin dinastija', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 9) Tko je Danteovoj komediji dodao pridjev „božanstvena“?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Tko je Danteovoj komediji dodao pridjev „božanstvena“?', 1, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Dante', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Boccaccio', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Machiavelli', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Alberti', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 10) Voltaire je:
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Voltaire je:', 1, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('bio satiričar', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('pisao većinom tragedije', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('poznat po tome što je osnovao prvi Francusku političku stranku', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('otkrio bakterije', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 11) Goethe je sudjelovao u kojem književnom pokretu?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Goethe je sudjelovao u kojem književnom pokretu?', 1, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Sturm und Drang', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Suurm und Durm', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Strang und Dum', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Stranf und Dranf', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 12) Kako je umrla Virgina Wolf?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Kako je umrla Virgina Wolf?', 1, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Predozirala se tabletama', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Miješanjem tableta i heroina', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Bacila se s mosta sa zavezanim kamenom oko noge', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Utopila se u rijeci sa džepovima punim kamenja', 1, CURRENT_DATE, CURRENT_DATE, 1)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

COMMIT;


--KATEGORIJA 2--
BEGIN;

-- 1) Što od navedenog nije točno vezano za Bašćansku ploču?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Što od navedenog nije točno vezano za Bašćansku ploču?', 2, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Ponađana je u Jurandovu u blizini Baške', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Bašćanska ploča je darovnica kralja Dmitra Zvonimira franjevačkom samostanu', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Izgrađena je oko 1100. godine', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Pisana je prijelaznim tipom glagoljice (s oble na uglatu)', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 2) Tko od navedenih nije bio sudionik Hrvatskog proljeća?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Tko od navedenih nije bio sudionik Hrvatskog proljeća?', 2, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Dražen Budiša', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Vlado Gotovac', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Savka Dabčević-Kučar', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Marko Tripalo', 1, CURRENT_DATE, CURRENT_DATE, 1)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 3) Čije su posljednje riječi: "Noli turbare circulos meos"?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Čije su posljednje riječi: "Noli turbare circulos meos"?', 2, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Senekine', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Kantove', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Arhimedove', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Sokratove', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 4) Opasnosti od Scile i Haribde doživio je:
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Opasnosti od Scile i Haribde doživio je:', 2, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Heraklo', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Odisej', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Had', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Sizif', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 5) Kojoj egipatskoj dinastiji pripadaju Nefetiti i Tutankamon?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Kojoj egipatskoj dinastiji pripadaju Nefetiti i Tutankamon?', 2, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('20.', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('16.', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('18.', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('14.', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 6) Između koje dvije rijeke se nalazila Mezopotamija?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Između koje dvije rijeke se nalazila Mezopotamija?', 2, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Eufrat i Balikh', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Tigris i Murat', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Eufrat i Tigris', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Murat i Balikh', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 7) Koliko je bilo Peloponeskih ratova?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koliko je bilo Peloponeskih ratova?', 2, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('4', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('1', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('2', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('3', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 8) Što od navedenog nije točno?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Što od navedenog nije točno?', 2, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Spartanci su obično pili krv svoje prve žrtve', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('U Sparti dijete nikada nije pripadalo roditeljima nego državi', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('U Sparti nisu postojala vjenčanja', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Najstariji Spartanac je odlučivao o sudbini novorođenčeta (hoće li ga ostaviti na životu ili ostaviti da umre)', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 9) Inke su obitavale na području današnje koje države?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Inke su obitavale na području današnje koje države?', 2, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Argentine', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Urugvaja', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Paragvaja', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Perua', 1, CURRENT_DATE, CURRENT_DATE, 1)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 10) Koja je civilizacija zaslužna za čokoladu?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koja je civilizacija zaslužna za čokoladu?', 2, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Maje', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Inke', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Grci', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Asteci', 1, CURRENT_DATE, CURRENT_DATE, 1)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 11) Što ne pripada metalnom doba?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Što ne pripada metalnom doba?', 2, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Aluminijsko', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Bakreno', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Brončano', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Željesno', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 12) Koji događaj nije povezan s kamenim dobom?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koji događaj nije povezan s kamenim dobom?', 2, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Pojava čovjeka', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Vučedolska golubica je jedan primjer umjetnosti kamenog doba', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Pojava prvih ljudskih zajednica koje naseljavaju čvrste nastambe', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Hušnjakovo brdo je jedno od poznatih nalazišta iz kamenog doba', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 13) Što je točno za feudalizam?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Što je točno za feudalizam?', 2, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Osnovna vrijednost se procjenjivala prema broju robova', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Feudalizam je nastao u 2. stoljeću', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Zemljišni posjed se zvao feud', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('U to doba robove su nazivali kmetovima', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 14) Bomba se zvala Little Boy, a kako se zvao zrakoplov?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Bomba se zvala Little Boy, a kako se zvao zrakoplov?', 2, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Foxy Lady', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Red Ribbon', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Hey Jude', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Enola Gay', 1, CURRENT_DATE, CURRENT_DATE, 1)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 15) Tko je bio Hitlerov ministar propagande?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Tko je bio Hitlerov ministar propagande?', 2, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Heinrich Himmler', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Kurt von Schiecher', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Werner Maser', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Joseph Goebbels', 1, CURRENT_DATE, CURRENT_DATE, 1)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 16) U kojem je nacističkom logoru umrla Anna Franck?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('U kojem je nacističkom logoru umrla Anna Franck?', 2, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Gross-Rosen', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Bergen-Belsen', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Buchenwald', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Treblinka', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 17) Martin Luter je okačio koliko teza na vrata crkve u Wienbergu?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Martin Luter je okačio koliko teza na vrata crkve u Wienbergu?', 2, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('68', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('83', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('95', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('100', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 18) Koje godine je provedena Agrarna reforma u drugoj Jugoslaviji?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koje godine je provedena Agrarna reforma u drugoj Jugoslaviji?', 2, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('1945.', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('1918.', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('1987.', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('1933.', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 19) Koje godine je srušen Berlinski zid?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koje godine je srušen Berlinski zid?', 2, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('1990.', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('1989.', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('1991.', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('1987.', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 20) Zbog kojeg izuma je počela prva industrijska revolucija?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Zbog kojeg izuma je počela prva industrijska revolucija?', 2, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('pisaće mašine', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('parnog stroja', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('automobila', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('željeznice', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 21) Koje godine su provedene operacije Bljesak i Oluja?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koje godine su provedene operacije Bljesak i Oluja?', 2, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('1991.', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('1992.', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('1994.', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('1995.', 1, CURRENT_DATE, CURRENT_DATE, 1)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 22) Koji se događaj smatra početkom Drugog svjetskog rata?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koji se događaj smatra početkom Drugog svjetskog rata?', 2, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Napad Njemačke na Poljsku', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Atetntat austrougarskog prestolonasljednika Franju Ferdinanda', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Napad Amerike na Njemačku', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Napada Njemačke na Francusku', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 23) Koji od navedenih država nikad nije bila članica Antante?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koji od navedenih država nikad nije bila članica Antante?', 2, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Rusija', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Njemačka', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Francuska', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Velika Britanija', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 24) Sukob između koje dvije sile je obilježio napada na Pearl Harbor?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Sukob između koje dvije sile je obilježio napada na Pearl Harbor?', 2, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Njemačke i SAD-a', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Rusije i SAD-a', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Kine i SAD-a', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Japana i SAD-a', 1, CURRENT_DATE, CURRENT_DATE, 1)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 25) Koje je poredak točan (ako gledamo od najstarije do najmlađe države)?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koje je poredak točan (ako gledamo od najstarije do najmlađe države)?', 2, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Kraljevina Srba, Hrvata i Slovenaca- Nezavisna država Hrvatska- Socijalistička Jugoslavija', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Nezavisna država Hrvatska- Kraljevina Srba, Hrvata i Slovenaca- Monarhistička Jugoslavija', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Monarhistička Jugosavija. Nezavisna država Hrvatska- Kraljevina Srba Hrvata i Slovenaca', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Socijalistička Jugoslavija- Kraljevina Srba, Hrvata i Slovenaca- Nezavisna država Hrvatska', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 26) Kako se još zove pad Wall Streeta 1929. godine?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Kako se još zove pad Wall Streeta 1929. godine?', 2, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Crni ponedjeljak', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Crni utorak', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Crni četvrtak', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Crni petak', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 27) Između koje dvije države je bio takozvani Stogodišnji rat?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Između koje dvije države je bio takozvani Stogodišnji rat?', 2, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Kraljevine Italije i Kraljevine Francuske', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Kraljevine Francuske i Kraljevine Engleske', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Kraljevine Italije i Kraljevine Nizozemske', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Kraljevine Engleske i Kraljevine Nizozemske', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 28) Kako se zvao mirovinski ugovor između Mletačke Republike i Ludvika I. Anžuvinca kojim se Melatačka Republika morala odreći svojih posjeda u Dalmaciji?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Kako se zvao mirovinski ugovor između Mletačke Republike i Ludvika I. Anžuvinca kojim se Melatačka Republika morala odreći svojih posjeda u Dalmaciji?', 2, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Trogirski mir', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Šibenski mir', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Dubrovački mir', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Zadarski mir', 1, CURRENT_DATE, CURRENT_DATE, 1)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 29) Koji je bio glavni grad Habsburške Monarhije?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koji je bio glavni grad Habsburške Monarhije?', 2, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Graz', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Beč', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Bern', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Bonn', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 30) Florence Nightingale (1820. - 1910.) bila je:
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Florence Nightingale (1820. - 1910.) bila je:', 2, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Vojna bolničarka', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Balerina', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Matematičarka', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Osnivačica sufražetkinja', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 31) Al Capone je završio na jedanaestogodišnjoj robiji u Alcatrazu zbog:
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Al Capone je završio na jedanaestogodišnjoj robiji u Alcatrazu zbog:', 2, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Utaje poreza', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Krađe', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Otmice', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Prijetnja', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 32) Kako se zove francuz koji se borio na strani Hrvatske u domovinskom ratu te na kraju pogubljen na Ovčari u studenom 1991. godine?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Kako se zove francuz koji se borio na strani Hrvatske u domovinskom ratu te na kraju pogubljen na Ovčari u studenom 1991. godine?', 2, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Jean- Michel Nicolier', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Paul- Michel Nicolier', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Pierre. Michel Nicolier', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Pascal. Michel Nicolier', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 33) 1954. godine dogodila se jedna od najgorih tramvajskih nesreća na strmoj mirogojskoj prugi. Tramvaj koji je doživio nesreći nosio je koji broj?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('1954. godine dogodila se jedna od najgorih tramvajskih nesreća na strmoj mirogojskoj prugi. Tramvaj koji je doživio nesreći nosio je koji broj?', 2, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('15', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('10', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('13', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('16', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 34) Kako se zvala prva Hrvatska žrtva u domovinskom ratu?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Kako se zvala prva Hrvatska žrtva u domovinskom ratu?', 2, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Fran Jović', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Josip Jović', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Marin Jović', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Tomislav Jović', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

COMMIT;


--KATEGORIJA 3--
BEGIN;

-- 1) Što je enklava?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Što je enklava?', 3, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Dio države, regije ili teritorija koja je sa svih strana okružena nekom drugom državom', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Naziv riječnog područja u kojem se svije rijeke spajaju', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Drugi naziv za regiju', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Drugi naziv za gejzir', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 2) Za vrijeme kojeg solsticija je u Hrvatskoj najduži dan i najkraća noć?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Za vrijeme kojeg solsticija je u Hrvatskoj najduži dan i najkraća noć?', 3, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Za vrijeme proljetnog solsticija', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Za vrijeme ljetnog solsticija', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Za vrijeme jesenskog solsticija', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Za vrijeme zimskog solsticija', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 3) Na mjestu nekadašnjeg astečkog Tenochititlana danas se nalazi:
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Na mjestu nekadašnjeg astečkog Tenochititlana danas se nalazi:', 3, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Ciudad de Mexico', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Buenos Aires', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Rio de Jainero', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Brasilla', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 4) Kako se zvao polarni medvjed koji je rođen u zoološkom vrtu u Berlinu 2006. godine, a umro 2011.?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Kako se zvao polarni medvjed koji je rođen u zoološkom vrtu u Berlinu 2006. godine, a umro 2011.?', 3, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Knut', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Kurt', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Kant', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Knat', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 5) Koji je dio Italije glavni pokretač gospodarstva?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koji je dio Italije glavni pokretač gospodarstva?', 3, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Južni', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Sjeverni', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Istočni', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Zapadni', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 6) U kojoj državi je zabranjeno korištenje plastičnih vrečica?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('U kojoj državi je zabranjeno korištenje plastičnih vrečica?', 3, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Tibet', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Butan', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Tajvan', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Niti jedna', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 7) Koji od sljedećih jezika nije službeni u Švicarkoj?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koji od sljedećih jezika nije službeni u Švicarkoj?', 3, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Talijanski', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Francuski', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Engleski', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Njemački', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 8) Koji je službena valuta u Sjevernoj Koreji?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koji je službena valuta u Sjevernoj Koreji?', 3, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Sjevernokorejski von', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Sjevernokorejski jin', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Sjevernokorejski jang', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Sjevernokorejski renminbi', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 9) Koja od sljedećih država je teritorijalno najveća?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koja od sljedećih država je teritorijalno najveća?', 3, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Peru', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Ekvador', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Kolumbija', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Čile', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 10) Koji par nije točan?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koji par nije točan?', 3, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Australija- Melbourne', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Novi Zeland- Wellingtone', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Somoa- Apia', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Papua Nove Gvineja- Port Moresby', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 11) Koja od navedenih država ima najviše stanovnika?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koja od navedenih država ima najviše stanovnika?', 3, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Texas', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Kalifornija', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Ohio', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Alabama', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 12) Koja je najmlađa Američka savezna država?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koja je najmlađa Američka savezna država?', 3, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Aljaska', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Florida', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Georgia', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Hawaii', 1, CURRENT_DATE, CURRENT_DATE, 1)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 13) Kroz koliko vremenskih zona se proteže Rusija?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Kroz koliko vremenskih zona se proteže Rusija?', 3, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('8', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('9', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('7', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('6', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 14) Koja životinja je nacionalna životinja Australije?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koja životinja je nacionalna životinja Australije?', 3, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Dodo', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Panda', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Emu', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Poni', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 15) U kojoj državi se nalazi najviši vrh Alpa?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('U kojoj državi se nalazi najviši vrh Alpa?', 3, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Švicarskoj', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Italiji', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Francuskoj', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Njemačkoj', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 16) Kroz koju saveznu državu ne prolazi Yellowstone?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Kroz koju saveznu državu ne prolazi Yellowstone?', 3, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Wyoming', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Montana', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Idaho', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Oregon', 1, CURRENT_DATE, CURRENT_DATE, 1)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 17) List kojeg drveta se nalazi na zastavi Kanade?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('List kojeg drveta se nalazi na zastavi Kanade?', 3, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Javora', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Breze', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Hrasta', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Kestena', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 18) Koje od idućih parova nije točan?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koje od idućih parova nije točan?', 3, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Zagrebačka županije- Dugo selo', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Bjelovarsko-bilogorska županija- Čazma', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Splitsko- dalmatinska županija- Imotski', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Šibensko- Kninska županija- Korčula', 1, CURRENT_DATE, CURRENT_DATE, 1)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 19) Koja je najveća država u Africi (s obzirom na površinu)?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koja je najveća država u Africi (s obzirom na površinu)?', 3, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Južnoafrička Republika', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Alžir', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Angola', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Sudan', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 20) Kroz koju afričku državu ne prolazi ekvator?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Kroz koju afričku državu ne prolazi ekvator?', 3, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Gabon', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Kongo', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Somalija', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Centralna Afrička Republika', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 21) Na kojem kontinetnu se nalazi Madagaskar?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Na kojem kontinetnu se nalazi Madagaskar?', 3, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Južnoj Americi', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Australiji', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Africi', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Aziji', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 22) Koji je glavni grad Kenije?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koji je glavni grad Kenije?', 3, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Nairobi', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Lusaka', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Windhoek', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Lagos', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 23) Kroz koji grad, uz Zagreb teče rijeka Sava?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Kroz koji grad, uz Zagreb teče rijeka Sava?', 3, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Vukovar', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Slavonski brod', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Sisak', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Kutina', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 24) Kako se zove najveći otok na kojem leži Japan?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Kako se zove najveći otok na kojem leži Japan?', 3, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Honshu', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Hokaido', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Shikoku', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Kyushu', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 25) U kojoj je državi službeni jezik portugalski?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('U kojoj je državi službeni jezik portugalski?', 3, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Argentini', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Boliviji', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Brazilu', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Čileu', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 26) Koji je službeni naziv Urugvaja?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koji je službeni naziv Urugvaja?', 3, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Istočna Republika Urugvaj', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Demokratska Republika Urugvaj', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Socijaldemokratska Republika Urugvaj', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Južna Republika Urugvaj', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 27) Na koja dva dijela se često dijeli Cipar?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Na koja dva dijela se često dijeli Cipar?', 3, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Francuski i Grčki', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Turski i Francuski', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Nizozemski i Grčki', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Turski i Grčki', 1, CURRENT_DATE, CURRENT_DATE, 1)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 28) Na kojem polu žive pingvini?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Na kojem polu žive pingvini?', 3, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Južnom', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Sjevernom', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Na oba pola', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Na ni jednom polu', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 29) Koja od sljedećih gradova nije glavni grad neke Afričke države?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koja od sljedećih gradova nije glavni grad neke Afričke države?', 3, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Accra', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Kairo', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Nairobi', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Jakarta', 1, CURRENT_DATE, CURRENT_DATE, 1)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 30) Kojim oceanom/morem nije okružena Afrika?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Kojim oceanom/morem nije okružena Afrika?', 3, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Indskim oceanom', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Crvenim morem', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Tihim oceanom', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Sredozemnim morem', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 31) Koja od sljedećih životinja ne živi na Antartici?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koja od sljedećih životinja ne živi na Antartici?', 3, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Foka', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Pingvin', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Kit', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Polarni medvjed', 1, CURRENT_DATE, CURRENT_DATE, 1)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 32) Koja od sljedećih plemena nije Afričko?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koja od sljedećih plemena nije Afričko?', 3, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Dogoni', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Berberi', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Masai', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Cahuilla', 1, CURRENT_DATE, CURRENT_DATE, 1)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 33) Koliko saveznih država ima SAD?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koliko saveznih država ima SAD?', 3, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('47', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('48', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('50', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('51', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 34) Iz koje je države bila osoba koja je patentirala kikiriki maslac?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Iz koje je države bila osoba koja je patentirala kikiriki maslac?', 3, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Brazil', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Meksiko', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('SAD', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Kanada', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 35) Koliko Hrvatska ima nacionalnih parkova?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koliko Hrvatska ima nacionalnih parkova?', 3, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('9', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('11', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('6', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('8', 1, CURRENT_DATE, CURRENT_DATE, 1)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 36) Koji je naistočniji grad u Hrvatskoj?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koji je naistočniji grad u Hrvatskoj?', 3, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Ilok', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Vukovar', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Požega', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Virovitica', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 37) Koja je najrjeđe naseljena županija u Hrvatskoj poslije Ličko-senjske?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koja je najrjeđe naseljena županija u Hrvatskoj poslije Ličko-senjske?', 3, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Virovitičko-podravska', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Zadarska', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Šibensko-kninska', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Požeško-slavonska', 1, CURRENT_DATE, CURRENT_DATE, 1)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 38) Koji od sljedećih zaštićenih područja nije park prirode?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koji od sljedećih zaštićenih područja nije park prirode?', 3, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Lastovsko otočje', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Kopački rit', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Papuk', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Bijele i Samarske stijene', 1, CURRENT_DATE, CURRENT_DATE, 1)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 39) Koji su slapovi najviši na svijetu?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koji su slapovi najviši na svijetu?', 3, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Nijagarini slapovi u SAD i Kanadi', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Vodopadi Angel u Venezueli', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Langfoss u Norveškoj', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Sutherland slapovi na Novom Zelandu', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 40) Mramorno more nalazi se između:
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Mramorno more nalazi se između:', 3, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Labrador mora i Atlantskog oceana', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Jadranskog i Egejskog mora', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Japanskog i Žutog mora', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Crnog i Egejskog mora', 1, CURRENT_DATE, CURRENT_DATE, 1)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 41) Koja je najduža rijeka u Australiji?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koja je najduža rijeka u Australiji?', 3, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Darling', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Murray', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Murrumbidgee', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Cooper Creek', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 42) Kako se zovu dva najpoznatija jezera u Imotskoj krajni?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Kako se zovu dva najpoznatija jezera u Imotskoj krajni?', 3, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Crveno i Žuto jezero', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Modro i Zeleno jezero', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Crveno i Modro jezero', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Zeleno i Žuto jezero', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 43) Na kojem kontinentu se nalazi Viktorijino jezero?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Na kojem kontinentu se nalazi Viktorijino jezero?', 3, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Sjeverna Amerika', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Europa', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Afrika', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Australija', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 44) Kako se zove najveće slatkovodno jezero na svijetu?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Kako se zove najveće slatkovodno jezero na svijetu?', 3, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Kaspijsko jezero', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Jezero Superior', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Jezero Ladoga', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Jezero Volta', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 45) Koja rijeka ne teče kroz Karlovac?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koja rijeka ne teče kroz Karlovac?', 3, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Mrežnica', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Dobra', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Kupa', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Sava', 1, CURRENT_DATE, CURRENT_DATE, 1)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 46) Koja rijeka ima deltu u Hrvatskoj?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koja rijeka ima deltu u Hrvatskoj?', 3, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Neretva', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Dunav', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Sava', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Mrežnica', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 47) Koja je razlika između delte i estuarija?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koja je razlika između delte i estuarija?', 3, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Estuarij je dio gdje se rijeka ulijeva u more, dok je delta dio gdje se more ulijeva u rijeku', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Nema razlike, dvije riječi su istoznačnice', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Termin estuarij se koristi kod slatkovodnih rijeka, dok se temin delta koristi kod slanih rijeka', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Estuarij je ljevkasti zaljev na ušću rijeke koji je otvoren prema moru, dok je delta riječno ušće koje se neprekidnim nanosima širi u more ili jezero', 1, CURRENT_DATE, CURRENT_DATE, 1)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 48) U kojoj zemlji se nalazi Kilimandžaro?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('U kojoj zemlji se nalazi Kilimandžaro?', 3, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Tanzaniji', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Keniji', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Zanzibar', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Uganda', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 49) Koja se zemlja još zove zemlja s 1000 fjordova?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koja se zemlja još zove zemlja s 1000 fjordova?', 3, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Island', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Norveška', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Farski otoci', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Kanada', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 50) Kako se zovu ostaci jedine Hrvatske pustinje?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Kako se zovu ostaci jedine Hrvatske pustinje?', 3, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Bjelovarski prah', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Iločki rt', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Đurđevaćki peski', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Savski brod', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 51) Kako se zove najviši vrh Hrvatske?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Kako se zove najviši vrh Hrvatske?', 3, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Medvednica', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Kamešnica', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Sinjal', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Svilaja', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 52) Koja je od navedenih drveća zimzeleno?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koja je od navedenih drveća zimzeleno?', 3, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Jela', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Kesten', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Breza', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Hrast', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 53) Koja od navedenih biljka nije endemska vrsta u Hrvatskoj?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koja od navedenih biljka nije endemska vrsta u Hrvatskoj?', 3, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Velebitska degenija', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Teutin zvončić', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Dalmatinska iglica', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Dubrovačka pajunica', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

COMMIT;

--KATEGORIJA 4--
BEGIN;

-- 1) Gdje se nalazi The Museum of Modern Art poznat  još pod imenom MOMA?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Gdje se nalazi The Museum of Modern Art poznat  još pod imenom MOMA?', 4, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Los Angelesu', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('New Jeresy', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('St. Louis', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('New Yorku', 1, CURRENT_DATE, CURRENT_DATE, 1)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 2) Lanac muzeja Madame Tussauds je poznat po čemu?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Lanac muzeja Madame Tussauds je poznat po čemu?', 4, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Po iluzijama', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Po voštanim figurama', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Po svijećama', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Po smanjenim verzijama poznatih građevina svijeta', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 3) U kojem je stilu izgrađena Zagrebačka katedrala?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('U kojem je stilu izgrađena Zagrebačka katedrala?', 4, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Gotički stil', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Neogotički stil', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Predrenesansa', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Renesansa', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 4) Koja je vremenska crta točna, ako gledamo od najstarijeg razdoblja do najmlađeg?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koja je vremenska crta točna, ako gledamo od najstarijeg razdoblja do najmlađeg?', 4, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Gotika-Renesansa- Barok- Rokoko', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Renesansa- Barok- Rokoko- Gotika', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Rokoko- Renesansa- Gotika- Barok', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Barok- Gotika- Rokoko- Renesansa', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 5) Koje od idućih parova nije točno uparen?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koje od idućih parova nije točno uparen?', 4, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Klasicizam- vračanje na antiku', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Gotika- šiljasti lukovi', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Barok- tlocrti naglašeni kupolama', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Romanika- crkve oslikane freskama i žarkim bojama ', 1, CURRENT_DATE, CURRENT_DATE, 1)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 6) Koji os idućih parova nije točno uparen?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koji os idućih parova nije točno uparen?', 4, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Neogotika- Zagrebačka katedrala', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Neoromanika- Dakovačka katedrala', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Neobarok- Dioklecijanova palača u Splitu', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Predromanika- Crkva Sv. Donata u Zadru', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 7) Dvorac Versailles je građen u kojem stilu?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Dvorac Versailles je građen u kojem stilu?', 4, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Renesansni stil', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Barokni stil', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Romanički stil', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Sva tri navedena stila', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 8) Koji od sljedećih parova nije točan?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koji od sljedećih parova nije točan?', 4, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Pariz- Eiffelov toranj', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Washington- Empire State Building', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('New York- Brooklyn Bridge', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('London- Big Ben', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 9) Taj Mahal se nalazi u kojoj zemlji?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Taj Mahal se nalazi u kojoj zemlji?', 4, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Egiptu', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Indiji', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Kina', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Vietnam', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 10) Koji od sljedećih zamalja nema amfiteatar?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koji od sljedećih zamalja nema amfiteatar?', 4, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Bugarska', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Italija', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Hrvatska', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Belgija', 1, CURRENT_DATE, CURRENT_DATE, 1)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 11) Koja od sljedećih nacionalnih baština nije pod UNESCO zaštitom?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koja od sljedećih nacionalnih baština nije pod UNESCO zaštitom?', 4, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('a. Stari grad u Dubrovniku', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('b. Katedrala  Sv. Jakova u Šibeniku', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('c. Povijesni grad u Trogiru', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('d. Zagrebačka katedrala', 1, CURRENT_DATE, CURRENT_DATE, 1)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 12) U kojem od sljedećih Egipatskih gradova se ne nalaze piramide?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('U kojem od sljedećih Egipatskih gradova se ne nalaze piramide?', 4, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('GIza', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Abu Sir', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Saqqara ', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Kairo', 1, CURRENT_DATE, CURRENT_DATE, 1)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 13) Koji od slijedećih građevina nije u Abu Dhabiju?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koji od slijedećih građevina nije u Abu Dhabiju?', 4, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Capital Gate', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Marine Bay', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Etihad Towers', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('The Emirates Palace', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 14) Kojemu je književnom liku Dulcinea bila ideal ženske ljepote?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Kojemu je književnom liku Dulcinea bila ideal ženske ljepote?', 4, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Faustu', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Guliveru', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Nemu', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Don Qijoteu', 1, CURRENT_DATE, CURRENT_DATE, 1)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 15) Kroz koji se vulkan u središte zemlje spuštaju junaci Verneova romana?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Kroz koji se vulkan u središte zemlje spuštaju junaci Verneova romana?', 4, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Snaefell', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Kilauea', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Etnu', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Yasur', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 16) Kako se zove glavnik lik u romanu Ante Kovačića U registraturi?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Kako se zove glavnik lik u romanu Ante Kovačića U registraturi?', 4, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Ivica Kičmanović ', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Jakov Kosović ', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Jerko Pavletić', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Janko Sedar', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 17) Koje od navedenih djela nije nastalo u vrijeme realizma?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koje od navedenih djela nije nastalo u vrijeme realizma?', 4, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Kabanica', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Otac Goriot', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Germinal', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Lovčevi zapisi', 1, CURRENT_DATE, CURRENT_DATE, 1)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 18) U kojem razdoblju počinje književnost?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('U kojem razdoblju počinje književnost?', 4, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Antika', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Srednji vijek', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Renesansa', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Romantizam ', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 19) U kojem književnom razdoblju se ističe tzv. estetika ružnoće?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('U kojem književnom razdoblju se ističe tzv. estetika ružnoće?', 4, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Srednji vijek', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Realizam', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Naturalizam', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Dadaizam ', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 20) Koji od slijedećih romana nije SF roman?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koji od slijedećih romana nije SF roman?', 4, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Vrli novi svijet', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('1984.', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Ljudi bez ičega', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Žene su s Venere, a muškarci s Marsa', 1, CURRENT_DATE, CURRENT_DATE, 1)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 21) Koji je prvi album benda Guns N'' Roses?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koji je prvi album benda Guns N'' Roses?', 4, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('G N'' R Lies', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('„The Spaghetti Incident?“', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Appetite for Destruction', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Use Your Ilusion 1.', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 22) Koju je poznatu skladbu Bob Dylan napisao za vestern Sama Packinpaha "Pat Garret i Billy the Kid"?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koju je poznatu skladbu Bob Dylan napisao za vestern Sama Packinpaha "Pat Garret i Billy the Kid"?', 4, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Tempest', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Blonde on Blonde', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Knockin'' on Heaven''s Door', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Time Out of mind', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 23) Koji bed izvodi pjesmu „What is my age?“
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koji bed izvodi pjesmu „What is my age?“', 4, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Blink 182', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Sum 41', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Panic at the disco!', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('The Killers', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 24) Koji je od navedenih bendova “najstarijii” odnosno prvi  osnovan?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koji je od navedenih bendova “najstarijii” odnosno prvi  osnovan?', 4, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('The Platters', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('The Beatles', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Bijele strijele', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('The Penguins', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 25) Koji od sljedećih glazbenika nije dobro uparen s pjesmom koju izvodi?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koji od sljedećih glazbenika nije dobro uparen s pjesmom koju izvodi?', 4, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Eric Prytz- Call on me', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Avril- Girlfriend', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Madona- Hung up', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('James Blunt- Here there Delilah', 1, CURRENT_DATE, CURRENT_DATE, 1)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 26) Tko je skladatelj instrumentala Exodus?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Tko je skladatelj instrumentala Exodus?', 4, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Maxim Mrvica', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Ernest Gold', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Mack David', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Leonard Rosenman', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 27) Koji od navedenih navedenih instumenata nije dio gudačkog kvarteta?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koji od navedenih navedenih instumenata nije dio gudačkog kvarteta?', 4, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Viola', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Kontrabas', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Violončelo', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Violina', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 28) Koji od sljedećih instrumenta se ne svira prstima?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koji od sljedećih instrumenta se ne svira prstima?', 4, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Klavir', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Ksilofon', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Saksofon', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Klarinet', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 29) Koje je ime glavnog lika u seriji Mr. Robot?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koje je ime glavnog lika u seriji Mr. Robot?', 4, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Elliot Allderson', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Tyrell Wellick', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Phillip Price', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Gideon Goddard', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 30) Kako se zove film u kojem je glavnu ulogu imao pjevač Eminem?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Kako se zove film u kojem je glavnu ulogu imao pjevač Eminem?', 4, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('8 mile', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('5 mile ', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('6 mile', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('1 mile', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 31) Kako se zove fikcijski grad u kojem živi Superman?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Kako se zove fikcijski grad u kojem živi Superman?', 4, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Argo City', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Metropolis', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Doomstadt', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('The City', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 32) Koliko je Oscara osvojio Titanic?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koliko je Oscara osvojio Titanic?', 4, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('9', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('11', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('13', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('10', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 33) Iz kojeg filma je citati „Aleksa vrati se doma, skuvala sam ti paštašutu…“
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Iz kojeg filma je citati „Aleksa vrati se doma, skuvala sam ti paštašutu…“', 4, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Kako je počeo rat ma mom otoku', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Tko to tamo peva', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Što je muškarac bez brkova', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Fine mrtve djevojke', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 34) Koliko filmskih nastavaka ima saga o Harryu Potteru?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koliko filmskih nastavaka ima saga o Harryu Potteru?', 4, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('5', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('7', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('8', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('6', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 35) Kako se zvala prva Hrvatska opera?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Kako se zvala prva Hrvatska opera?', 4, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Ero s onoga svijeta', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Ljubav i zloba', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Porin', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Nikola Šubić Zrinski ', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 36) Koja od navedenih dijela nije balet?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koja od navedenih dijela nije balet?', 4, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Orašar', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Labuđe jezero', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Bajadera', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Nora', 1, CURRENT_DATE, CURRENT_DATE, 1)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 37) Koje godine je postavljen prvi javni zagrebački spomenik?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koje godine je postavljen prvi javni zagrebački spomenik?', 4, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('1856.', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('1865.', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('1845.', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('1854.', 1, CURRENT_DATE, CURRENT_DATE, 1)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 38) Koji od sljedećih spomenika nije dobro uparen sa gradom u kojem se nalazi?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koji od sljedećih spomenika nije dobro uparen sa gradom u kojem se nalazi?', 4, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Kip slobode- New York', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Abraham Lincoln- Washington', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('. Marine Corps War Memorial- Boston', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Birth of the New World- Arebioco', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 39) U kojem muzeju se čuva orginalna Mona Lisa?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('U kojem muzeju se čuva orginalna Mona Lisa?', 4, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Louvre', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Maison de Balzac', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Musee national Eugene-Delacroix', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Musee d''Orsay', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 40) Kako se zove glavni lik animea  Bilježnica smrti (Death Note)?
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Kako se zove glavni lik animea  Bilježnica smrti (Death Note)?', 4, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Light Yagami', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Touta Matsuda', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Kanzo Mogi', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Shuichi Aizawa', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

COMMIT;


--KATEGORIJA 5--
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Što je znanje prema Platonu?', 5, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Presjek istine i vjerovanja', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Unija istine i vjerovanja', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Razlika istine i vjerovanja', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Razlika vjerovanja i istine', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Što nije točno vezano za zaključivanje?', 5, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Negacija konsekvensa je vrsta valjanog zaključka', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Silogizam je vrsta deduktivnog zaključivanja', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Postoje linearni i nelinearni silogizmi', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Kauzualno zaključivanje je vrsta induktivnog zaključivanja', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Ako je prva premisa Svi ljudi su doktori, a druga premisa Neki doktori su zeleni, kako glasi konkluziija?', 5, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Neki ljudi su zeleni', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Svi ljudi su zeleni', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Neki zeleni su ljudi', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Premise nisu valjano postavljene', 1, CURRENT_DATE, CURRENT_DATE, 1)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koja od navedenih područja je područje filozofije?', 5, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Ontologija', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Onkologija', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Ontalogija', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Onkolologija', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Tko je od navedenih filozofa empirist?', 5, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Descartes', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Hume', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Spinoza', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Leibniz', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koji par nije točan?', 5, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Teorija korespondencije- istina je u podudaranju misli i stvari', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Teorija evidencije- istina je u slaganju suda sa samim sobom', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Logicistička teorija- istinitost se ne nalazi u odnosu prema nekoj objektivnoj realnosti negu u odnosu prema drugim izjavama', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Pragmatična teorija- istina se procjenjuje ovisno o kriteriju upotrebljivosti', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Što nije točno vezano za skeptike?', 5, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Nastali su u Grčkoj i Rimu', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Uz njih se veže pojam Epohé', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Najpoznatiji skeptici su Piron i Sekst Empirik', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('U novijem skepticizmu se ne dopušta da se neka opcija sagledava kao vjerojatnija', 1, CURRENT_DATE, CURRENT_DATE, 1)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koje od slijedećih djela nije napisao Voltaire?', 5, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Rasprava o toleranciji', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Emile', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Engleska pisma', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Candide', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Što od navedenog ne prpada Marxovoj filozofiji?', 5, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('U klasnom drušvu čovjek je otuđeno biće', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Revolucija je način preobrazbe društva', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Kada nestane nepravedno društvo nestati će i religija', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Sve navedeno je točno', 1, CURRENT_DATE, CURRENT_DATE, 1)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('U kojem filozofskom dobu pripada  Karl Popper?', 5, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Suvremenoj filozofiji', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Novovjekovnoj filozofiji', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Kršćanskoj filozofiji', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Helenističko-rimskoj filozofiji', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koja karakterisika ne odgovara Sartreovoj slobodi?', 5, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Čovjek je osuđen da bude slobodan', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Jedino ograničenje slobode je um', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Kroz slobodu dolazi do ništarenja', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Sloboda može biti više prokletstvo nego poklon', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Muharrem je', 5, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Mjesec u islamskom kalendaru', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Oznaka za pat poziciju u igri Go', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Grad u Omanu', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Vrsta jela od piletine i currya', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Kako se zvao Egipatski Bog Sunca?', 5, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Ra', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Ka', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Ma', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Fa', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koja od sljedećih nije jedna od 10 Božjih zapovjedi prema Bibliji?', 5, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Ljubi bližnjeg svoga kao samo sebe', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Ne ubij', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Ne sagriješi bludno', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Spomeni se da svetkuješ Dan Gospodnji', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('U kojoj mitologiji su bogovi dobi ime prema plantima?', 5, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Egipatska mitologija', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Grčka mitologija', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Japanska mitologija', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Rimska mitologija', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koja životnja nije uključena u kineski zodijak?', 5, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Zmija', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Pas', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Mačka', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Zmaj', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Iz koje zemlje potiče joga?', 5, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Kine', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Japana', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Tibeta', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Indije', 1, CURRENT_DATE, CURRENT_DATE, 1)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koja od slijedećih poza ne postoji u jogi?', 5, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Pas prema gore', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Drvo', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Položaj ruže', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Položaj bebe', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Gdje je bilo smješteno carstvo Inka?', 5, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('U današnjem Brazilu', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('U današnjem Paragvaju', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('U današnjem Peruu', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('U današnjem Urugvaju', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Što nije točno za Boga Marduka?', 5, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Bio je zaštitnik grada Babilona', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Postao je nadmoćan za vrijeme vladavine kralja Hamurabija', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Uz pomoć svoga oca Enkija je stvorio ljudsku rasu', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Ljude je stvorio u čast svoje pobjede nad Asircima', 1, CURRENT_DATE, CURRENT_DATE, 1)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koja od sljedećih tvrdnji nije točna?', 5, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('U religiji Sibira dominiraju šamani koji vjeruju da postoji Bog dobra i Bog zla', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Sjevernoamerički Indijanci smatraju kako sve nastoji biti pravilnog oblika, te u svim ceremonijama se pojavljuju pravilni oblici (kvadrat, krug, pravokutnik,..)', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Pleme Foe vjereruje u duhove mrtvih, hibu yii duhove, lutajuće duhove i “zle stvari”', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Mnogo Aboridžina je uslijed kolonizacije preško na kršćansvo', 1, CURRENT_DATE, CURRENT_DATE, 1)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koje od idućih pojmova ne vežemo za hinduizam?', 5, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Karma- samsara- moksha', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Mahabharata', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Dershane', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Vede', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Iz koje zemlje potiče Džainizam?', 5, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Butana', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Japana', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Tibeta', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Indije', 1, CURRENT_DATE, CURRENT_DATE, 1)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Što od slijedećeg, ne pripada pod 5 plavila života budista?', 5, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Suzdržavanje od nanošenja zla bilo kojem živom biću', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Suzdržavanje od lažnog govora', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Suzdržavanje od nedoličnog seksualnog ponašanja', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Suzdržavanje od novih tehnologija', 1, CURRENT_DATE, CURRENT_DATE, 1)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('U kojem mjesecu sikhijskog kalendara se ne nalazi niti jedna gurpurba?', 5, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Poh', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Sawan', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Chet', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Magh', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koje je značenje obreda navojte u Mazdaizmu?', 5, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Obrad navojte je obred u kojem svećenik uvodi dijete u vjeru', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Obred navojte je obred u kojem se sklapa bračni savez', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Obred navojte je obred kojim pojedinac postaje svećenik', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Obred navojte je obred koji se provodi prije pokapanja preminulog', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koja od slijedećih tvrdnji ne pripada među 13 načela vjere Judizma?', 5, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Vjera u jedinstvo Stvoritelja', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Vjera u riječi proroka', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Vjera u dan Gospodnji', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Vjera u dolazak Mesije', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koliko knjiga obučava Novi Zavjet?', 5, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('25', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('26', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('27', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('28', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Što od navedenog nije točno vezano za brak u Islamu?', 5, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Brak nije sakrament', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Savjetuje se sastanak mladenaca prije braka', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Islam dopušta rastavu', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Muška djeca se smatraju vrjednijom od ženske', 1, CURRENT_DATE, CURRENT_DATE, 1)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Od kada i od gdje  se vežu običaju vezani za Šintoizam', 5, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Prapovijesni Japan', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Prapovijesna Kina', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Starovjekovni Japan', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Starovjekovna Kina', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('U kojem je stoljeću osovana religija Bahamiza?', 5, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('16. stoljeću', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('17. stoljeću', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('18. stoljeću', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('19. stoljeću', 1, CURRENT_DATE, CURRENT_DATE, 1)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

--KATEGORIJA 6--
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Što od navedenog nije specifično za Aboridžane?', 6, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Aboridžani su domorodačko pleme iz  Australije', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Koplje i bumerang su ih glavna oružja', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Bave se poljoprivredom', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Zastava im je crno crvena sa žutim krugom u sredini', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koji odjevni predmet je specifičan za muslimansku ženu?', 6, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Suknja', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Hidžab', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Haljina', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Crna majca', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koja je razlika između spola i roda?', 6, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Spol je za razliku od roda biološki determiniran', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Rod se koristi kada se priča o životinjama, a spol o ljudima', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Rod nije Hrvatska riječ', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Nema razlike', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Kako se zove faza u kojoj sanjamo?', 6, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('REM', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('RAM', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('FEM', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('FAM', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koji je, prema psiholozima, najbolji stil roditeljstva?', 6, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Autoritativno', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Autoritarno', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Autoriterno', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Autoritarno', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Kako se još zove mamina sestra?', 6, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Ujna', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Teta', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Strina', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Baka', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koja od sljedećih boja nije primarna?', 6, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Crvena', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Zelena', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Žuta', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Plava', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koliko traje trudnoća?', 6, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('6 mjeseci', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('12 mjeseci', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('9 mjeseci', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('7 mjeseci', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Za koji namještaj nije uobičajno da se nalazi u kuhinji?', 6, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Hladnjak', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Stol', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Napa', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Krevet', 1, CURRENT_DATE, CURRENT_DATE, 1)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- SPORT

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koji od sljedećih nije teniski Grand Slam turnir?', 6, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Wimbledon', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Australian Open', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Roland Grros', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Monte Carlo', 1, CURRENT_DATE, CURRENT_DATE, 1)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Goran Ivanišević triput je poražen u finalu Wimbledonu, dvaput ga je porazio Pete Sampras, a jednom tko ?', 6, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Andre Agassi', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Boris Becker', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Tommy Haas', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Albert Costa', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koji je najstariji hrvatski nogometni klub?', 6, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Dinamo', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Zagreb', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Segesta', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Hajduk', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koje je drugo ima za baklju koju navijači znaju unositi na stadion?', 6, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Petarda', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Bengalka', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Zenga', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Mini pirat', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koja od navedenih bacačkih disciplina ne postoji?', 6, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Bacanje kladiva', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Bacanje diska', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Bacanje lopte', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Bacanje koplja', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Kako se zove najveći DOTA 2 turnir?', 6, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Galaxy Battles', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('DOTA Summit', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('The International', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('ZOTAC Cup Masters', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Kako se zove prvi debitant u Fromuli 1 koji je vodio u ukupnom poretku vozača?', 6, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Michael Schmcher', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Lewis Hamilton', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Ayrton Senna', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Nikki Lauda', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koji od pojmova se ne odnose na kriket?', 6, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Innings', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Pitch', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Bacač', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Rukavica', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- HRANA / PIĆE

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koje od navedene hrane ima najviše vitamina C?', 6, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Guava', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Avokado', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Naranča', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Kivi', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Gdje je nastao Staropramen?', 6, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Prag', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Bratislava', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Pariz', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Amsterdam', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koji od slijedećih proizvoda nije nastala u Hrvatskoj?', 6, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Cedevita', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Vegeta', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Bajadera', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Snikers', 1, CURRENT_DATE, CURRENT_DATE, 1)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koji umak je jedno vrijeme bio korišten kao medicinsko sredstvo?', 6, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Majoneza', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Kečap', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Senf', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Slatko-kiseli umak', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koje značenje stoji iza oblika pereca?', 6, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('oblik srca', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('ruke prekrižene u molitvi', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('tamni dio prve četvrti mjeseca', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('ne postoji značenje', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Što od slijedećeg nije naziv za vrstu tjestenine?', 6, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Paella', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Ravioli', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Lazanje', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Fusilli', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Tko narod je izumio karamelu?', 6, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Asteci', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Arapi', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Kinezi', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Amerikanci', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Ljudi imaju urođenu žudnju za čime?', 6, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Šećerom', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Soli', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Paprom', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Kiselom hranom', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koje meso se koristilo za prvu juhu u povijesti?', 6, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Kokošje', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Meso od zmije', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Meso od krokodila', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Meso od nilskog konja', 1, CURRENT_DATE, CURRENT_DATE, 1)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koje od slijedećih pića ne proizvodi Coca Cola kompanija?', 6, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Coca-Cola', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Fanta', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Smart Water', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('7up', 1, CURRENT_DATE, CURRENT_DATE, 1)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koje od slijedećih pića nije gazrano?', 6, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Nara', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Pepsi', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Coca-Cola life', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Studena', 1, CURRENT_DATE, CURRENT_DATE, 1)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koje od slijedećih izvorskih voda se ne puni u Hrvatskoj?', 6, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Jana', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Voda', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Studena', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Kala', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koji je od idućih sireva najpoznatiji Hrvatski sir?', 6, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Paški sir', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Šibenski sir', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Pulski sir', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Požeški sir', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);


--KATEGORIJA 7--
-- 1
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Za što od navedenog nije točno za Christophera Columbusa?', 7, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Ciljevi njegovih putovanja su bili pronaći zlato i robove', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('U svojim dnevnicima je opisivao kako su domoroci dobri, povjerljivi ljudi koji ne znaju za pojmove rat i oružje', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Smatrao je da je otkrio Ameriku', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Domorotkinje su često bile seksualne robkinje za vrijeme Columbusa', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 2
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koji je planet simbol transseksualne zajednice?', 7, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Venera', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Mars', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Uran', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Merkur', 1, CURRENT_DATE, CURRENT_DATE, 1)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 3
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Za vrijeme drugog svijetskog rata što su u nacističkim kampovima morali nositi homosekusalni muškarci?', 7, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Ružičasti krug', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Ružičasti trokut', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Ružičasti peterokut', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Ružičasti kvatdrat', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 4
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('U kojoj zemlji nije zabranjen homoseksualizam?', 7, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Nigerija', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Južnoafrička republika', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Jamajka', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Katar', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 5
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koja zemlja je prva zabranila ropstvo?', 7, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Dubrovačka republika', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Poljska', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Austro-ugarska republika', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Francuska', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 6
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Što je to antisemitizam?', 7, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Diskriminacija Amerikanaca', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Diskriminacija Azijata', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Diskriminacija Židova', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Diskriminacija Muslimana', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 8
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koji od navedenih logora se nije nalazio u Njemačkoj?', 7, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Bergen-Beslen', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Neuengamme', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Malchow', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Gros-Rossen', 1, CURRENT_DATE, CURRENT_DATE, 1)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 9
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Što nije točno vezano za genocid u Ruandi?', 7, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Smaknuti su bili ljudi plemena Tuti koji si došli kao imigranti', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Dogodio se tijekom građanskog rata 1994. godine', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Tokom rada su Huti gubili se su odlučili civile plemena Tuti odvoditi u logore', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Kwibuka je jedan od nacionalnih blagdana koji oblilježava spomen genocida', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 10
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Downov sindrom se događa zbog poremećaja u kojem hormonu?', 7, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('20.', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('12', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('13.', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('11.', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 11
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('U kojim od navedenih zemalja je abortus ilegalan osim u slučaju da se žena nalazi u životnoj opasnosti?', 7, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Rumunjska', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Mađarska', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Irska', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Grčka', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 12
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Sapere aude znači:', 7, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Slava svima', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Usudi se znati', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Pozdrav nadređeni', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Čast svakome', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 13
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Što je mujezin ?', 7, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Čuvar muzeja', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Carinik na granici', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Svećenik koji poziva vjernike na molitvu', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Zlatni kovčeg iz Izraela', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 14
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Što je ortoepija?', 7, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Pravogranica', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Pravogovor', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Pravopis', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Pravomoćnost', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 15
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koji se grad skriva iza keltskog naziva Vindobona?', 7, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Lyon', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Pula', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Beč', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Graz', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 16
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Kojoj skupini jezika pripada Mađarski jezik?', 7, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Kavkavskoj skupini jezika', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Ugrofinskoj skupini jezika', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Indoeuropskoj skupini jezika', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Germanskoj skupini  jezika', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 17
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('U kojoj od slijedećih zemalja se ne koristi latinica?', 7, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Srbiji', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('BIH', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Bugarskoj', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Albanija', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 18
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Na što se odnosi japanski sulfiks “-san”?', 7, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('gospodin / gospođa', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('prijatelj / prijateljica', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('tata / mama', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('učitelj / učiteljica', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 19
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koje od navedenih pisma se ne koristi u japanskom jeziku?', 7, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Katakana', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Hiragana', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Kanji', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Hangul', 1, CURRENT_DATE, CURRENT_DATE, 1)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 20
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Kojoj Koreji je službeni naziv Demokratksa Narodna Republika Koreja?', 7, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Sjeverna', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Zapadna', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Južna', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Istočna', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 21
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Kakva se djeca mogu čuti na "Radiju" 101', 7, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Stara djeca', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Mlada djeca', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Zločesta djeca', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Dobra djeca', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 22
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koji je poznati voditelj emisije Kolo sreće od 1993. do 2002. godine?', 7, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Marijan Ban', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Obrad Kosovac', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Oliver Mlakar', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Boris Mirković', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 23
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Od kuda potječe interakcijska televizijska igra „Hugo“?', 7, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Hrvatska', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Danska', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Estonija', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Grčka', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 24
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Glavno zanimanje Shanea Dawsona je:', 7, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('spisatelj', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('glumac', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Youtube ikona', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('režiser', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 25
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Tko je pokrenuo riječki "Novi list"?', 7, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Ante Trumbić', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Frano Supilo', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Franjo Rački', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Tin Ujević', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 26
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koja zemlja mora uvoziti gotovo sve svoje sirovine?', 7, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Japan', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Kina', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('SAD', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Njemačka', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 27
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koji predsjednik se nalazi na novčanici od 100 dolara?', 7, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Alexsandar Hamilton', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('George Washington', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Benjamin Franklin', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Thomas Jefferson', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 28
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Tko se nalazi na novčanici od 500 kuna?', 7, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Ban Josip Jelačić', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Marko Marulić', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Ante Starčević', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Juraj Dobrila', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 29
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koje godine je počelo povlačenje novčanica od 5 kuna?', 7, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('1999.', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('2002.', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('2006.', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('2004.', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 30
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('U čast koje prigode Hrvatska nije izdala kovanicu od 25 kuna?', 7, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('U povodu 2000. godine', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('U povodu puštanja Eura', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('U povodu člansta u EU', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('U povodu Univerzijade 1998.', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 31
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Tko je bio najveći proizvođač automobila za 2016. godinu?', 7, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Volkswagen', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Fiat', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Audi', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('BMW', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 32
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koja zemlja je najveći proizvođač nafte?', 7, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Saudijska Arabija', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Rusija', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('SAD', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Iran', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 33
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koja od navedenih tvrtki nema glavno sjedište u Njemačkoj?', 7, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Lidl', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Kaufland', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Edeka', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Spar', 1, CURRENT_DATE, CURRENT_DATE, 1)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 34
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Ukoliko se netko kladi na 1x što to znači?', 7, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Kladi se na pobjedu domaćina ili neriješeno', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Kladi se na jedan gol domaćina', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Kladi se na jedan gol domaćina ili da nema pogodaka', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Kladi se na pobjedu domaćina', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 35
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koja od navedenih država nije jedan od najvećih izvoznika banana?', 7, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Ekvador', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('SAD', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Filipini', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Kostarika', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 36
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Hrvatska je postala punopravna članica NATO saveza:', 7, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('2004.', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('1999.', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('2006.', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('2009.', 1, CURRENT_DATE, CURRENT_DATE, 1)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 37
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Skraćenica Međunarodne kriminalističko-policijske organizacije je:', 7, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('INTERPOL', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('CIA', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('WCO', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('WPO', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 38
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('U koja od navedenih država nije članica Europske unije?', 7, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Nizozemska', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Švedska', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Irska', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Island', 1, CURRENT_DATE, CURRENT_DATE, 1)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 39
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koje je radno vrijeme Hrvatskog sabora za stranke?', 7, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('radni dani od 7:30 do 15:30', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('radni dani od 8:30 do 16:30', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('radni dani od 9:00 do 17:00', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('prema dogovoru', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 40
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Na izborima za Američkog predsjednika kakvo je bilo koji je bio odnos glasova između D. Trumpa i H. Clinton?', 7, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Trump je imao više preferencijalnih glasova i glasova ukupno', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Clinton je imala više preferencijalnih glasova i glasova ukupno', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Trump je imao više preferencijalnih glasova, a Clinton ukupno glasova', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Clinton je imala više preferencijalnih glasova, a Trump glasova ukupno', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 41
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Kojoj zemlji pripada himna koja nema službenog teksta?', 7, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Nigeriji', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Čileu', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Španjolska', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Kina', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 42
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Na koliko se godina bira francuski predsjednik?', 7, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('6', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('8', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('5', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('7', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 43
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koja je Hrvatska bila članica EU?', 7, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('26.', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('28.', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('30.', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('32.', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 44
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koliko zvjezdica ima zastava EU?', 7, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('10', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('14', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('13', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('12', 1, CURRENT_DATE, CURRENT_DATE, 1)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 45
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koja od navedenih država nije postsovjetska država?', 7, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Gruzija', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Ukrajina', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Bugarska', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Estonija', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 46
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Kojoj od navedenih organizacija nije matična organizacija UN?', 7, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('FAO', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('WWF', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('UNESCO', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('IFAD', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 47
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koji od navedenih parova nije točan?', 7, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('JNA- Jugoslavenska narodna armija', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('SLV- Slovenska vojska', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('OSRH- Oružane snage Republike Hrvatske', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('MOTUSA- Vojska SAD-a', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 48
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Što od navedenog nije točno vezano za psihologe?', 7, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Nakon završenog fakulteta mogu raditi kao psihoterapeuti', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Nakon završenog fakulteta mogu raditi kao psiholozi u zatvoru', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Nakon završenog fakulteta mogu raditi kao klinički psiholozi', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Nakon završenog fakulteta mogu raditi u školama samo ako imaju završeno i dodatno pedagoško obrazovanja', 1, CURRENT_DATE, CURRENT_DATE, 1)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 49
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Što je to kvocijet inteligencije  prema Binetu?', 7, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Omjer kronološke dobi i mentalne dobi', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Omjer mentalne dobi i kronološke dobi', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Omjer kronološke dobi i mentalne dobi pomnoženo sa sto', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Omjer mentalne dobi i kronološke dobi pomnoženo sa sto', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 50
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Anja je odlučila provesti istraživanje, te je odlučila ispitivati ženske osobe od 12, 14 i 16 godina o njihovom poznavanju proizvoda za šminkanje. Kakvo istraživanje Anja planira provesti?', 7, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Longitudinalno', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Transverzalno', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Krossekvencionalno', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Sve od navedenog', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 51
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koji je točan raspored razdoblja prenatalnog razvoja (počevši od najmlađeg)?', 7, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Zigota-embrij-fetus', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Fetus-embij-zigora', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Embrij-zigota-fetus', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Embrij-fetus-zigota', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 52
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Što od navedenog ne spada u primarne emocije?', 7, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Tuga', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Ljutnja', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Ljubomora', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Gađenje', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

-- 53
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koji od navedenih faktora ne spadaju pod Petofaktorski model ličnosti (Costa i McCrae)', 7, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Neuroticizam', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Ugodnost', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Savjesnost', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Emocionalna stabilnost', 1, CURRENT_DATE, CURRENT_DATE, 1)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);


--KATEGORIJA 8--

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('EEG je kratica za:', 8, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Elektroencefalogram', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Elektroepidermogram', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Elektroepitelogram', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Elektroevokaciogram', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Gingiva je:', 8, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Nosna hrskavica', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Tetiva na koljenu', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Zubno meso', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Nadbubrežna žlijezda', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Španjolska gripa je 1919. uzrokovala smrt 20 milijuna ljudi .Koja je bolest znana i kao francuska bolest?', 8, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Ospice', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Žutica', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Tuberkuloza', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Sifilis', 1, CURRENT_DATE, CURRENT_DATE, 1)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Bolest variola ili variola vera također je poznata pod imenom:', 8, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Rubeola', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Vodene kozice', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Zaušnjaci', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Boginje', 1, CURRENT_DATE, CURRENT_DATE, 1)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koliko traju vodene kozice?', 8, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Oko 20 dana', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Između mjesec i 3 mjeseca', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Oko 7 dana', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Oko 40 dana', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Što od navedenog nije kožna bolest?', 8, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Psorijaza', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Vitiglio', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Hashimoto', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Dekubitus', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Marta je prije dva dana, bez ikakvog povoda, otišla u Rijeku. Nakon dva dana lutanja vratila se kući u Varaždin bez ikakvog sjećanja o događajima iz Rijeke. Ovo je bilo jedini put da joj ovo ili išta slično dogodilo. Što je Marta najvjerojatnije doživjela?', 8, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Sumračno stanje', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Sanovno bunilo', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Sopor', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Fugu', 1, CURRENT_DATE, CURRENT_DATE, 1)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Kako se zove poremećaj koji uzrokuje potpuni gubitak govora?', 8, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Afazija', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Disfazija', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Alogija', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Logoreja', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koji je najčešći karcinom kod muškaraca?', 8, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Prostate', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Testisa', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Debelog crijeva', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Štitnjače', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koji od navedenih slangova nije naziv za herion?', 8, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Gear', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Adam', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('h', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('junk', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koja od navedenih bolesti nije spolno prenosiva bolest?', 8, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Svrab', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Klamidija', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Meki čankir', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Eholalija', 1, CURRENT_DATE, CURRENT_DATE, 1)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koji od navedenih poremećaja tipova shizofrenija ne postoji?', 8, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Paranidna shizofrenija', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Katatona shizofrenija', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Ciklična shizofrenija', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Dezorganizirana shizofrenija', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koja droga se upotrebljava i u medicinske svrhe?', 8, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('MDMA', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Kokain', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Morfij', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Heroin', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Droga MDMA u kolokvijalnom govoru zove se i:', 8, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Trava', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Bombon', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Shit', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Plastika', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Kada se govori o indeksu tjelesne mase (BMI), njegova preporučena vrijednost iznosi:', 8, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('5,8-9,0', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('10,-14,5', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('18,5-25,0', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('45,5-50,2', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koliko kilometara ima maraton?', 8, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('oko 50 kilometara', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('oko 25 kilometara', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('oko 42 kilometara', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('oko 100 kilometara', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('U kojem razdoblju se najčešće javlja kriza srednjih godina?', 8, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('U pubertetu', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('U srednjoj odrasloj dobi', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('U mlađoj odrasloj dobi', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('U starijoj odrasloj dobi', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Što od navedenog nije točno za alkohol?', 8, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Loše utječe na jetru', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Trudnice koje često piju povećacaju vjerojatnost da rode djecu koja pate od fetalne alkoholne mučnine', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Sadrži etanol', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Alkohol može izazvati ovisnost', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koja država ima monopol nad alkoholom?', 8, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Srbija', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Finska', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Švedska', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Njemčka', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Jedan od poznatijih lijekova koji se daje prilikom liječenja malarije je:', 8, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Histamin', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Kinin', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Glutamin', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Serotonin', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Lijek Sumamed poznat je i pod imenom', 8, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Azitromicin', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Arivatin', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Amoxicilin', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Fluvacin', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Antabus ili disulfiram koristi se pri liječenju od:', 8, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Shizofrenije', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Alkoholizma', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Zatajenja bubrega', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Parkinsonove bolesti', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);


--KATEGORIJA 9--
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Kojim područjem se bavio Lovoslav Ružička?', 9, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Prirodnim spojevima', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Umjetnim spojevima', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Sintetskim spojevima', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Gramijskim spojevima', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('U kojem od navedenih gradova Vladimir Prelog nije počasni građanin?', 9, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Vinkovci', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Sarajevo', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Zagreb', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Osijek', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koji planet sunčeva sustava ima najviše prirodnih satelita?', 9, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Saturn', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Jupiter', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Merkur', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Neptun', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Do koje godine je Pluton službeno bio planet?', 9, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('2004.', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('2008.', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('2006.', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('2002.', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koji od sljedećih zviježđa ne postoji?', 9, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Šestar', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Volar', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Kist', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Eridan', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koje je godine pas Lajka lansirana u svemir iz kojeg se nikada nije vratila?', 9, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('1957.', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('1960.', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('1955.', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('1963.', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Kako se zvao prvi čovjek koji je išao u svemir?', 9, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Neil Amstrong', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Jurij Gagarin', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('John Glen', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Aleksej Leonov', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Kako nastaje Sunčeva energija?', 9, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('fuziom', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('pretvorbom helija u vodik', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('petvorbom vodika u helij', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('stalnim vuklanskim erupcijama', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koji do navedenih planeta nije dio jovijanskih planeta?', 9, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Uran', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Saturn', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Neptun', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Venera', 1, CURRENT_DATE, CURRENT_DATE, 1)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koliko 1 parsek ima svjetlosnih godina?', 9, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('1.2 svjetlosnih godina', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('3.2 svjetlosnih godina', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('2.3 svjetlosnih godina', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('2.1 svjetlosnih godina', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koja mjera nije točna?', 9, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Površina zemlje - 510 milijuna km2', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Duljina ekvatora- 60 000 km', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Duljina početnog merdijana 20 000 km', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Tropska godina 365. 2422 dana', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Kako zovemo događaj je Zemlja najbliža Suncu?', 9, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('ljetni solsticij', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('afel', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('perinel', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('zimski solsticij', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('U kojem zviježđu se nalazi zvijezda Sjevernjača?', 9, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Mali medvjed', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Veliki medvjed', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Kasiopeja', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Zmaj', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koliko traje godišnje doba na Uranu?', 9, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('10 godina', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('21 godinu', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('16 godina', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('27 godina', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koji planet u Sunčevom sustavu je najtopliji?', 9, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Merkur', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Zemlja', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Venera', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Mars', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koji planet u Sunčevom sustavu ima najveći mjesec?', 9, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Saturn', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Uran', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Jupiter', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Neptun', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Što od slijedećeg nije način istraživanja u biologiji?', 9, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Stanično frakcioniranje', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Autoradiofagija', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Kultura stanice', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Mikroskopiranje', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Što je od slijedeće najmanje?', 9, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Organ', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Stanica', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Organel', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Tkivo', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koji od slijedećih biogenih elemenata nije mirkoelement?', 9, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Kalij', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Sumpor', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Bor', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Željezo', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koja od navedenih razlika nije istinita?', 9, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Mitoza ima jednu diobu, dok mejoza ima dvije', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Produkt diobe stanice su dvije stanice kćeri dok su kod mejoza četiri stanica kćeri', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Kod mitoze nema nastajanja bivalenata dok kod mejoze ima', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Kod mejoze nema crossing overa dok kod mitoze ima', 1, CURRENT_DATE, CURRENT_DATE, 1)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koji je navedenih virusa DNA virus?', 9, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Virus gripe', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Virus rubeole', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Virus HIV-a', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Virus herpesa', 1, CURRENT_DATE, CURRENT_DATE, 1)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Što od navedenog na spada u klasifikaciju od vrste do carstva?', 9, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('broj', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('rod', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('vrsta', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('razred', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Što nije točno vezano za bakterije?', 9, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Prva prabakterija se zvala Archaebacteria', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Bakterije se razmožavaju nespolno diobom', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Autotrofne bakterije mogu biti fotosintetske i kemosintetske', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Neki od osnovnih oblika su koki, bacili i spirali', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koja od navedenih vrsta ne pripada pod skupinu zelenih algi?', 9, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Jadranski bračić', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Morska salata', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Kladofora', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Kaulerpa', 1, CURRENT_DATE, CURRENT_DATE, 1)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Što od navedeno nije točno?', 9, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Ameba spada u korjenonošce', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Krednjaci nemaju stezljive mjehuriće jer je koncentracija soli u njihovoj citoplazmi jedna kao u morskoj vodi', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Skupina trepetljikaša je malobrojna skupina praživotinja, ali je i najsloženija', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Papučica se razmnožava konjugacijom', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koja gljiva nije u skupini lističarka?', 9, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Bukovača', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Muhara', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Zelena pupavka', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Vrganj', 1, CURRENT_DATE, CURRENT_DATE, 1)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Muhara sadrži muskarin koji djeluje štetno na koji sustav?', 9, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Kardiovaskularni sustav', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Probavni sustav', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Živčani sustav', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Endokrini sustav', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Na što se dijeli carstvo biljaka?', 9, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Nevaskularne i vaskularne biljke', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Mahovine i paprtnjače', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Golosjemenjače i kritosjemenjače', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Na paprat i mahovine', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koja razlika nije točna?', 9, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Sporangij se kod golodjemenjača nalazi u češeru dok se dok kritosjemenjača nalazi u cvijetu.', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Kod jednosupnica je korijen čupav dok je kod dvosupnica postoji glavni korijen iz kojeg izlazi bočno korijene', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Ptice letčice imaju malu gustoću koštane srži dok neletačice imaju veliku gustoći koštane srž', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Kod čovjeka kubične kosti su kratke dok su cjevaste duge', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koja od navedenih biljaka nije dvosupnica?', 9, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Ruža', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Bukva', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Mahunarka', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Ljiljan', 1, CURRENT_DATE, CURRENT_DATE, 1)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Što je to plamoliza?', 9, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Proces prilikom kojeg dolazi do odvajanja citoplazme i membrane od stanične stjenke u stanici', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Proces na kraju kojeg stanica postane trugescentna', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Spomntano kretanje tvari iz područja više u područje niže koncentracije', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Proces pri kojem tijelo povećava svoj obujam uslijed ulaska vode u njega', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koja od slijedećih obilježja nisu istina za spužve?', 9, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Pupanjem nastaje gemula koja dobro preživljava u nepovoljnim uvijetima', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Većina ih živi u kolinijama', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Stjenku čini ektoderm koji je građen od bičastih stanica i endoderm koji je građen od pločastih stanica', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Mogu biti odvojenog spola ili hemafroditi', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koja od slijedećih rečenica nije točna?', 9, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Dok metilj i trakavica nemaju potrebu za kisikom, za oblića je on otrovan', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Mekušci se mogu podjeliti na puževe, školjkaše i glavonošce', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Jedna od razlika bezkolutićavca i kolutićavca je to što kolutićavci posjeduju organ za kretanje', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Vodeni kolutićavci dišu škrgama dok kopneni dišu plućima', 1, CURRENT_DATE, CURRENT_DATE, 1)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koji od slijedećih životinja nikada ne dožive potpunu metamorfozu?', 9, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Leptiri', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Komarci', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Vretenca', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Muhe', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koji od navedenih životinja je malokolutićavac?', 9, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Trp', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Pauk', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Gujavica', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Dagnja', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('20. Što je zajedničko svim svitkovcima?', 9, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Višeslojna koža', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Organi za kretanje', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Kralježnica', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Pravi bubreg', 1, CURRENT_DATE, CURRENT_DATE, 1)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('21. Koje od navedenih kiselina nije esencijalna?', 9, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Leucin', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Teronin', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Citrulin', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Lizin', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('22. Koja od sljedećih izjava nije točna?', 9, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Jedan od načina kako leukociti brane ogranizam je fagocitoza', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Rh- majka uzrokuje žuticu kod Rh+ djeteta', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Valvula je drugi naziv za arterije', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Fizički radnici i sportaši imaju srce veće mase od osobe koja nije fizički aktivna, npr. radi u uredu', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('23. Što od navedenog ne spada u gornji dišni put?', 9, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('nos', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('dušnik', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('ždrijelo', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('grkljan', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('24. Što od navedenog nije točno?', 9, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Timus i koštana moždina su središnji organi koji osiguravaju proizvodnju obrambenih imunosnih stanica', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Specifična imunost nastaje rođenjem djeteta', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Samo razmišljanje o hrani može pripremiti probavni sustav za mehaničku i kemijsku obradu', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Mliječni zubi se mogu podjeliti na sjekutiće. očnjake i kutnjake', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('25. Kako se zove reakcija u kojoj se razgradnjom hrane dobiva energija?', 9, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('anabolička reakcija', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('menobolička reakcija', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('katabolička reakcija', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('aniobolička rekacija', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('26.  Što od navedenog nije točno?', 9, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Lojna žlijezda se satoji od kolesterola i masti', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Manjak vitamina D može uzrokovati rahitis', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Mišična vlakna u citoplazmi sadrže miofibrile', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Gušterač ima samo  endokrinu ulogu', 1, CURRENT_DATE, CURRENT_DATE, 1)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('27. Što on navedenog nije točno?', 9, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Ekoločki minmun je najmanj intezitet nekog ekološkog čimbenika koji omogućava opstanak vrste', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Floru čine sve biljne zajednice', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Ukupan prostor na kojem je rasprostranjena neka vrsta naziva se areal', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Ernest Haeckel je prvi upotrijebio termin ekologija', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('28. Što od navedenog nije točno za reflekse?', 9, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Refleks je brza i nesvjesna reakcija na primljeni podražaj', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Održavanje ravnoteže je prirodni refleks', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Neuroni koji sudjeluju u nekom refleksu povezani su u refleksni luk', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('U refleksnoj radnji ne sudjeluje kora velikog mozga', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('29. Što od navedenog nie točno?', 9, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Bradikardija, trahikardija i ekstrasistola su aritmije srca', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Leukemija je nekontrolirana dioba maligno izmjenjenih leukocita.', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Karijest nastaje zbog djelovanja bakterija na ostatke hrane u ustima', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Dijarea nastaje zbog prebrzog gibanja sadržaja crijeva kroz tanko crijevo', 1, CURRENT_DATE, CURRENT_DATE, 1)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('30. Što od navedenog nije točno za sintezu mRNA molekule?', 9, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Dolazi do pucanja vodikovih veza između dva lanca DNA', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Ovaj proces se naziva još i translacija', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Nakon što se lanci DNA razdvoje RNA polimeraza čita jedan od tih lanaca', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Od 64 kodona 3 kodona su STOP kodoni', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('31. Što je to modifikacija?', 9, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Kratkotrajne promjene nastale utjecajem okoliša koje se ne nasljeđuju', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Promjene koje su se dogodile u spolnim stanicama te mogu utjecati na potomke', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Promjene koje su se dogodile u tjelesnim stanicama te mogu utjecati na potomke', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Dugotrajne promjene nastale utjecajem okoliša koje se nasljeđuju', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('32. U kojem se od navedenih križanja među potomcima mogu pojaviti jedinke s jednom recesivnom osobinom?', 9, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('AABB x aAbB', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Aabb x AABB', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('AaBb x aAbb', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('AaBB*aABb', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('1. Koja je formula ozona?', 9, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('CO', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('O3', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('CO2', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('O2', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('2. Na temelju čega je nastala temperaturna ljestvica za celzijus', 9, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Na temelju ledišta i vrelišta vode', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Na temelju samo vrelišta vode', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Na temelju samo tališta vode', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Na temelju dogovora', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('3. Što od navedenog nije točno?', 9, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Sumpor je nemetal', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('U periodičkom sustavu elemenata relativna atomska masa najčešće se označava ispod naziva atoma', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Alkaliski metali nalaze se u prvom periodu', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('As je oznaka za arsen', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('4. Što od navedenog nije izotop vodika?', 9, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Procij', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Deuterij', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Tricij', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Talij', 1, CURRENT_DATE, CURRENT_DATE, 1)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('5. U kojem bloku pripadaju svi nemetali osim vodika?', 9, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('p', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('f', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('d', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('g', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('6. Kako se određuje valencija elemenata u ionskom spoju?', 9, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Ona je jednaka broju protona koje atom primi ili otpusti', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Ona je jednaka broju neutrona koje atom primi ili otpusti', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Ona je jednaka broju elektrona koje atom primi ili otpusti', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Ništa od navedenog', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('7. Kakvu vrstu kovalentne veze imaju dva kisika?', 9, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Trostruku', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Dvostruku', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Jednostruku', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Sve tri veze', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('8. Što nam govori Hessov zakon?', 9, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Zbroj prirasta entalpija pojedinih koraka na koje se teorijski reakcija može prikazati', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Pretvorba jedne vrste energije u druge energije je neuništiva', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Sudaranje čestica je jedan od uvjeta kemijske reakcije', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Reakcijom plinova u zraku i vlažnog zraka dobivamo kiselinu', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('9. Koje od idućih oznaka ne označava agregatno stanje?', 9, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('g', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('s', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('l', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('c', 1, CURRENT_DATE, CURRENT_DATE, 1)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('10. Koji par nije točan?', 9, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Pretvorba iz krutog u plinovito agregatno stanje → sublimacija', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Pretvorba iz plinovitog  u kruto  agregatno stanje → kristalizacija', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Pretvorba iz tekućeg  u plinovito agregatno stanje → kondenzacija', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Pretvorba iz tekućeg u kruto agregatno stanje → kristalizacija', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('11. Kako možemo odjeliti heterogene smjese?', 9, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('destilacijom', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('ekstrakcijom', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('magnetom', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('kromatografijom', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('12. Što sve utječe na brzinu reakcije?', 9, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Građa molekule', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Agregatno stanje', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Površina reaktanta', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Sve navedeno', 1, CURRENT_DATE, CURRENT_DATE, 1)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('13. Koji par nije točan?', 9, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('HNO2- dušična kiselina', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('HCN- cijanovodična kiselina', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('HClO- hipoklorasta kiselina', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('H2SO3- sumporasta kiselina', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('14. Koji od navedenik indikatora pokriva područje indikacije od pH 6,0 - 6,7?', 9, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('metiloranž', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('bromtimol plavo', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('metilcrveno', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('fenoftalein', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('15. Što nije točno za oksidacijski broj?', 9, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('kisik je u spoju -2', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('atoma u elementarnoj tvari je 1', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('zemnoalkalijskih elemenata je +2', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('vodika u hidridu metala je -1', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Što je od navedenog obnovljivi galvanski članak?', 9, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('baterije', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('akumulator', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('svi', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('niti jedan', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koji par nije točan?', 9, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('molarna masa g*mol-1', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('množinska koncentracija mol*dm-3', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('molarnost mol*kg-1', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('gustoća kg*cm-1', 1, CURRENT_DATE, CURRENT_DATE, 1)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koliko 1 bar ima pascala?', 9, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('10 135 Pa', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('100 135 Pa', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('101 325 Pa', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('11 325 Pa', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koji element ne pripada skupini halogenih elemenata?', 9, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Flour', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Brom', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Bor', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Jod', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Što nije vezano za ugljikovu skupinu elemenata?', 9, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Atomi se povezuju u 3 kovelntne veze', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Kositar ima dvije altropijske modifikacije', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Dijamant, grafit i fulereni su modifikacije ugljika', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Porastom protonskog broja ovi elementi mijenjaju svojstva od kiselih prema bazičnim', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Ako je karta u mjerilu 1: 25 000 koliko m u prirodi prikazuje 4 cm karte?', 9, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('1 000 m', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('100 000 m', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('500 m', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('50 000 m', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Što uzrokuje pomicanje litosfernih ploča?', 9, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Konvekcijska strujanja magme u srednjem plaštu', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Pucanje magmaskih stijena u oceankoj kori', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Mješanje bazičnih sa magmatskih stijena', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Ne zna se točan uzrok', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koji je najzastupljeniji kemijski element u Zemljinoj kori?', 9, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Natrij', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Silicij', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Željezo', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Magnezij', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Tijekom kojeg eona je nastala Zemlja?', 9, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Fanerozoik', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Arhaik', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Protezoik', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Hadij', 1, CURRENT_DATE, CURRENT_DATE, 1)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Što je od navedenog nije  nastalo tijekom paleozojka?', 9, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Stjenovite planine', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Alpe', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Karpati', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Apalačko gorje', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koji od navedenih derazijskih procesa nije uzrokovan gravi...bom padine, sastavom podloge i/ili upijanjem padalinskih voda?', 9, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Spiranje', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Odronjavanje', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Klizište', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Pućenje', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koji par nije točan?', 9, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Fenovi- topli vjetrovi koji nastaju pri prelaženju zraka preko planina', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Bura- hladni padinski vjetar koji nastaje na obalama mora', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Pasati- stalni vjetrovi koji nastaju iz suptropskih minimuma', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Ciklonalni vjetrovi- vjetrovi u ciklonama i olujama', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koja od navedenih zemlja nema klimu tundre?', 9, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Finska', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Rusija', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Kanada', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Novi Zeland', 1, CURRENT_DATE, CURRENT_DATE, 1)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koje podvrste klime ne pripadaju pod umjerenu toplu kišnu klimu?', 9, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Oceanska klima', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Kineska klima', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Umjereno topla vlažna klima', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Savanska klima', 1, CURRENT_DATE, CURRENT_DATE, 1)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Demografi u zemlji XYZ su primjetili kako je u zadnjih p...nzicije, zemlja XYZ je najvjerojatnijie u kojoj fazi tranzicije?', 9, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Prvoj polovici druge', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Drugoj polovici druge', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Prvoj polovici treće', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Četvrtoj fazi', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Točka se giba po kružnici (jednoliko) i prijeđe 15 stupnjeva za 2 sekunde. Koliki je period gibanja?', 9, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('12 s', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('24 s', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('48 s', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('96 s', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Kako glasi treći Newtonov zakon?', 9, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Zakon inercije', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Sila je jednaka umnošku mase i ubrzanja', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('U  svim sluča...o silom F2. Te su sile jednakog iznosa i suprotne orijentacije', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Sila je jednaka promjeni količine gibanja u jedinici vremena', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koja je službena oznaka za snagu?', 9, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('S', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('P', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('W', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('N', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Kako možemo drugačije zapisati 1 Pa?', 9, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('1 N/m2', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('1 N/m', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('1 N*kg', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('1 N*g', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koja od navedenih pretpostavki modela idealnog plina je točna?', 9, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Broj sudara jedne molekuje s drugim molekulama je zanemariv', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Sudar svake molekule sa stijenkom posude je elastičan tj. imaju prosječnu kinetičku energiju i količinu gibanja', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Ukupni volumen molekula je zanemariv u odnosu na volumen posude', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Svi odgovori su točni', 1, CURRENT_DATE, CURRENT_DATE, 1)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Pri izotermnoj promjeni stanja plina koja je karakteristika konstantna?', 9, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Temperatura', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Tlak', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Volumen', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Gustoća', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('U kući je 18 °C, a vani 33 °C, što čini razliku od 15 °C. Koliko iznosi ta promjena u kelvinima?', 9, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('15 K', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('- 288 K', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('288 K', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('-15 K', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Što od navedenog nije točno?', 9, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Količina topline proporcionalna je specifičnom toplinskom kapacitetu tvari', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Masa je proporcionalna toplini', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Tak je obrnuto proporcionalan radu', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Tlak je proporcionalna temperaturi ', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('U čemu se ne razlikuju protoni i elektroni?', 9, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('položaju unutar atoma', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('masi', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('(apsolutnoj) vrijednosti elementarnog naboja', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('po predznaku elementarnog naboja', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koja je mjerna jedinica električnog potencijala?', 9, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Džul', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Kelvin', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Mol', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Volt', 1, CURRENT_DATE, CURRENT_DATE, 1)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Kako se definira jakost struje?', 9, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Kao omjer naboja proteklog kroz presjek vodiča i vremenskog intervala ', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Kao omjer broja protona proteklog kroz presjek vodiča i vremenskog intervala', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Kao zbroj naboja proteklog kroz presjek vodiča i vremenskog intervala ', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Kao zbroj broja protona proteklog kroz presjek vodiča i vremenskog intervala', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koja od slijedećih tvrdnji vazana za magnetsko polje nije točna?', 9, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Jaki magneti se zovu još i feromagneti', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Magnetska polja mogu, ali ne moraju biti homogena', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Silnice magnetskog polja izviru iz južnog i idu prema sjevernom polu', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Vektorska veličina kojom kvatitativno opisujemo magnetsko polje naziva se magnetska indukcija', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Kako se može mijenjati magnetski tok koji prolazi nekom površinom?', 9, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('promjenom orijentacije površine u odnosu na silnice polja', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('samo kombinacijom brzih i sporih promjena jakosti magnetskog polja', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('promjenom jakosti magnetskog polja ili promjenom orijentacije površine', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('niti jedan odgovori nije točan ', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Za što nije vezano Lenzovo pravilo?', 9, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Vezana je za zatvoreni strujni krug', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Inducirana struja se prekida kod promjene magnetskoga toga', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Ona iskazuje princip čuvanja energije', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Nije uvijek lagano odrediti predznak kod induciranog elektromotornog pravila', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Šahovska figura titra na oprugi, kada je elastična sila najveća?', 9, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Kada je pomak najveći', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Kada je brzina najveća', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Oba odgovora su točna', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Niti jedan odgovor nije točan ', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('O čemu ne ovisi frekvencija?', 9, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Periodu titranja', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Amplitudi', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('konstanti elastičnosti opruge', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('elongaciji', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Nakon koje frekvencije mehanički valovi spadaju u područje ultrazvuka?', 9, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('50 kHz', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('70 kHz', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('20 kHz', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('110 kHz', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koja karakteristika se ne slaže s teorijom relativnosti?', 9, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Eksperimentom', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Elektromagnetskom teorijom ', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Pretpostavkom o relativnosti vremena', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Pretpostavkom o konstantnosti vremena', 1, CURRENT_DATE, CURRENT_DATE, 1)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Kako se zovu leće koje su deblje na sredini nego na rubovima?', 9, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('biokonveksne', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('konkavne', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('konvergentne', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('sve navedene ', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Što je to fuzija?', 9, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('spajanje dvije lakše jezgre u jednu težu', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('spajanje dva  lakša  atoma u jedan teži', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('spajanje neutrona i protona', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('spajanje alfa zraka i gama zraka', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

--KATEGORIJA 10--
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('U kojoj zemlji se nalazi najveća nuklearna eleketrana na svijetu?', 10, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Japanu', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Kini', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Indiji', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Koreji', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Kroz koje dvije države prolazi hidroelektrana Itaipu Dam?', 10, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Brazil i Urugvaj', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Brazil i Paragvaj', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Paragvaj i Argentina', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Argentina i Urugvaj', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Što od navedenog nije fosilno gorivo?', 10, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Nafta', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Zemljin plin', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Treset', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Benzin', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koji od navedenih je najlošiji izvor energije?', 10, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Drvo', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Tekući plin', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Smeđi ugljen', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Prirodni plin', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koja je najmanja količina električnog naboja?', 10, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('1,6·10 na -19 C', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('1,6·10 na -19 N', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('-1,6·10 na 19 C', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('-1,6·10 na 19 N', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Što je jednako 1V?', 10, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('1 C/N', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('1 J/C', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('1 C/J', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('1 N/J', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koja je jedinica za kapacitet?', 10, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Džul', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Culon', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Farad', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Newton', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Kako se zove Microsoftov osobni asistent?', 10, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Siri', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Aleksa', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Cortana', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Bixby', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koji od navedenih kanala ne spaja dva mora?', 10, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Sueski kanal', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Magični kanal', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Korinstski kanal', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Panamski kanal', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koji most je najpogodni za prelazak preko velikih udaljenosti?', 10, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Viseći most', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Gradni most', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Lučni most', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Ovješeni most', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koji par nije točan?', 10, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('TV Tower - Berlin', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Sky Tower - Melbourne', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Sosruko tower - Nalchik', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('CN Tower – Toronto', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koja tvrtka je projektirala Yugo za Zastavu?', 10, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Fiat', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Opel', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Pagani', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Audi', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koliko otprilike vremenski traje put od Zagreba do Moskve?', 10, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Oko 12 sati', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Oko 6 i pol sati', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Oko 10 i pol sati', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Oko 8 sati i 45 minuta', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koliki je bio kapacitet Titanica?', 10, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('oko 3 500 putnika', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('oko 5 000 putnika', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('oko 2 500 putnika', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('oko 6 000 putnika', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Kako se zove tip šifriranja u kojem slovo C postaje slovo F?', 10, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Cezarova šifra', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('DES', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('AES', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Vigenèreova šifra', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koja od slijedećeg ne priprada umjetnoj inteligenciji?', 10, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('NLP', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Strojno učenje', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Kriptografija', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Neuronske mreže', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Kako se zove abacus koji je izumljenn kako bi pomagao slijepim osobama pri računanju?', 10, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Liber abacus', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Nemeth abacus', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Niper abacus', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Cranmer abacus', 1, CURRENT_DATE, CURRENT_DATE, 1)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Što od sljedećeg nije glavni dio svjetlosnog mikroskopa?', 10, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Zrcalo', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Srednji vijak', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Objektiv', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Tubus', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Zašto su laseri najčešće crvene?', 10, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Jer crvena boja ima najveću amplitudu', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Jer crvena boja ima najmanju amplitudu', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Jer crvena boja ima najveći valnu duljinu', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Jer crvena boja ima najmanju valnu duljinu', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koje je godine pušten u prodaju PlayStation1 (u Europi)?', 10, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('1994.', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('1995.', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('1996.', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('2007.', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koji par nije točan?', 10, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('China- .cn', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Hrvatska - .hr', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Bugarska- .ba', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Bjelorusija- .by', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Što još znači VHS?', 10, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Virtual home situation', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Video home system', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Video history scene', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Virtual history simulation', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Kako se zvala prva hrvatska radio drama?', 10, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Vatra', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Voda', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Zemlja', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Zrak', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Kako se zvala prvi hrvatski radiostanica?', 10, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Radio-stanica Zagreb', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Hrvatski radio', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Radio Varaždin', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Prvi hrvatski radio program', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Ruska alternativa GPS navigaciji zove se', 10, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('RTS', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('GLONASS', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('RUSSAT', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('SATSTA', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Osnovna svrha sekstanta je', 10, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Mjerenje kuta', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Mjerenje magnetizma', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Mjerenje udaljenosti', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Mjerenje brzine', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Kineski kalendar uglavnom ima', 10, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('12 mjeseci', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('13 mjeseci', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('10 mjeseci', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('16 mjeseci', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Precesija je', 10, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Inklinacija magnetne igle zbog devijacije u polovima', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Pomicanje Zemljine osi rotacije', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Brzina uspona Sunca na različitim geografskim dužinama', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Zakrivljenost horizonta pri različitim visinama', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Od 2013. godine najprecizniji satovi bazirani su na iterbiju. Do tada bili su bazirani na:', 10, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Molibdenu', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Indiju', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Ceziju', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Bariju', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('U kojoj zemlji se prvi puta pojavio tenk?', 10, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Njemačkoj', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Francuskoj', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Velikoj Britaniji', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Rusiji', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Kako se zove Japanski grad koje je prvo pogodila atomska bomba?', 10, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Kokuru', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Hirošimu', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Nagasaki', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Tokio', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Za koju svrhu je izmljen prvi Švicarski nožić?', 10, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Za bolju borbu u gerilskim ratovima', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Za preživljavanje u šumi', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Za otvaranje staklenih boca', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Za otvaranja konzervirane hrane', 1, CURRENT_DATE, CURRENT_DATE, 1)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Kako se zove mač koji su koristili samurai?', 10, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Katana', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Wakizashi', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Kitana', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Bankai', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Što od navedenog ne pripada kontejneru za rezikliranje papira?', 10, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Papirnate vrečice', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Novine', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Karton', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Fotografije', 1, CURRENT_DATE, CURRENT_DATE, 1)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koje molekule su većinski u sastavu stakla?', 10, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Kacijev oksid', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Silicijev dioksid', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Natrijev oksid', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Natrijev karbonat', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Što nije točno vezano za gume?', 10, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Počinju se topiti oko 150 stupnjeva celzijusa', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Uglavnom se rade od prirodnog kaučuka', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Azija je glavni proizvođač prirodne gume', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Kongo je nekada bio veliki proizvođač gume', 1, CURRENT_DATE, CURRENT_DATE, 1)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Kojoj skupini pripada plastika?', 10, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Metalima', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Nemetalima', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Polumealima', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Ništa od navedenog', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koji od navedenih drveta pripada skupini vrlo trajnih drveta?', 10, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Bor', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Bagrem', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Jela', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Bukva', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Što od navedenog ne priprada među 3 najveća makronutrijenta u procesu fertilizacije?', 10, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Dušik', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Fosfor', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Kalij', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Magnezij', 1, CURRENT_DATE, CURRENT_DATE, 1)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Što od navedenog nije točno za anesteziju?', 10, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Za vrijeme operacije pri kojoj je dana opća anestezija nužna je nazočnost anesteziologa', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Pozitivne strane inhalacijske anestezije su to da je brza, te ju je lako održavati', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Rektalna anestezija se najčešće primjenjuje na starijim osobama', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Pretilost povećava vjerojatnost komplikacija pri anesteziji', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Kolika je optimalna temeperatura hladnjaka?', 10, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('od 5 do 7 stupnjeva', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('od 1 do 3 stupnja', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('od -1 do +1 stupanj', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('od 7 do 10 stupnjeva', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Za koji od navedenih proizvoda nije uobičajno da prolazi proces pasterizacije?', 10, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Pivo', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Ulje', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Mlijeko', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Ocat', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Kako se zvala svemirska misija u kojoj su ljudi prvi put sletjeli na Mjesec?', 10, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Apollo 11', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Apollo 7', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Apollo 13', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Apollo 4', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koja je zemlja uspješno lanstirala prvi satelit?', 10, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Sjeverna Koreja', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('SAD', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Rusija', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Kina', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Kako se zove američka svemirska organizacija?', 10, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('NASA', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('NASSA', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('NAS', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('UNESCO', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Kako se zvala svemirska misija u kojoj je, 2003. godine, svih sedam članova posade poginulo?', 10, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Space shuttle Challenger', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Space shuttle Columbia', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Apollo 13', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Apollo 11', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);


--KATEGORIJA 11--
WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('U matematici broj i označava:', 11, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Lorenzovu konstantu', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Korijen iz -1', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('πe', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('integral', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Volumen valjka računa se po formuli', 11, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('2rπv', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('r2πv', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('(4/3)r3πv', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('2rπ2v', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Eulerov broj zapisuje se i kao:', 11, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('π', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('arc cos', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('λ', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('e', 1, CURRENT_DATE, CURRENT_DATE, 1)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Ako tvrdimo da je obodni kut kružnice jednak polovini pripadajućeg središnjeg kuta, zapravo govorimo o:', 11, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Euklidovoj tezi', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Talesovom teoremu', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Arhimedovom poučku', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Goldbachovoj slutnji', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('U matematici, veličina koja ima iznos, smjer i orijentaciju naziva se još i', 11, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Skalar', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Vektor', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Produkt', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Tangenta', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Zbroj kuteva u pravokutniku uvijek je', 11, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('180 stupnjeva', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('300 stupnjeva', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('360 stupnjeva', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('400 stupnjeva', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Jedan radijan ima približno', 11, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('45 stupnjeva', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('60 stupnjeva', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('120 stupnjeva', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('180 stupnjeva', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Jedan ar ima', 11, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('36 m2', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('100 m2', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('360 m2', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('500 m2', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Broj 4,58 pripada skupu', 11, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Prostih brojeva', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Prirodnih brojeva', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Cijelih brojeva', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Realnih brojeva', 1, CURRENT_DATE, CURRENT_DATE, 1)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('U heksadecimalnom zapisu broj C odgovara decimalnom:', 11, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('19', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('12', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('16', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('14', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Na trigonometrijskoj kružnici što predstavlja apscisu, a što ordinatu?', 11, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('apscisa je sinus, a ordinata kosinus', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('apscisa je tangens, a ordinata kosinus', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('apscisa je kosinus, a ordinata sinus', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('apscisa je tangens, a ordinata sinus', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('U kojem kvadrantu se nalazi točka T (2, 5)?', 11, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('I. kvadrantu', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('II. kvadrantu', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('III. kvadrantu', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('IV: kvadrantu', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Kako se još može napisati 28?', 11, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('82', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('22+22', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('2+2+2+2+2+2+2+2', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('2(2+4+2)', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Čemu je jednako (a+b)^2?', 11, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('a2 + 2ab + b2', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('(a+b)(a-b)', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('a2 + b2', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('a2 + ab + b2', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Što je točno za pravilni n-terokut?', 11, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('ima sve stranice jednake', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('ima sve kuteve jednake', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('središnji kut je omjer 360 stupnjeva sa brojem kuteva', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('sve je točno', 1, CURRENT_DATE, CURRENT_DATE, 1)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koja je jedinica predstavlja najveći udaljenost?', 11, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('1 stopa', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('1 kilometar', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('1 milja', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('1 inč', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Što je to stereometrija?', 11, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('dio geometrije koja se bavi poučavanjem geometrijskih likova', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('dio geometrije koji se bavi proučavanjem geometrijskih tijela', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('dio matematike koji se bavi proučavanjem realnih brojeva', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('dio matematike koji se bavi koordinatnim sustavom', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

/* Novija povijest */

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koje godine je započela invazija Iraka predvođena SAD-om?', 11, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('2007.', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('2004.', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('2006.', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('2003.', 1, CURRENT_DATE, CURRENT_DATE, 1)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koje godine se datuma 7. 7. dogodio teroristički napad u Londonu u kojem je sudjelovalo veći broj bombaša samoubijca koji su izvršavali napade u sustavu javnog prijevoza?', 11, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('2009.', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('2003.', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('2005.', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('2007.', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koje godine je proizveden prvi Iphone?', 11, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('2005.', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('2009.', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('2003.', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('2007.', 1, CURRENT_DATE, CURRENT_DATE, 1)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koje godine je umro Osama Bin Laden?', 11, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('2010.', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('2012.', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('2013.', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('2011.', 1, CURRENT_DATE, CURRENT_DATE, 1)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koji je niz kronološki točan (od najstarija inovacija prema najmlađoj)?', 11, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('iTunes- Facebook- Instagram- Windows 7- Xbox', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Facebook-Xbox- iTunes- Windows 7- Instagram', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('iTunes- Xbox- Fabeboook- Windows 7-Instagram', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Xbox- Facebook- iTunes- Instagram- Windows 7', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koje mjesto je pogodio uragan Katrina i ubio skoro 2 000 osoba?', 11, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('California', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Florida', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('New Jersey', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Oregon', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Između koje se dvije momčadi u finalu Lige prvaka 2005. godine dogodio jedan od najvećih preokreta u povijesti natjecanja (od 3-0 do 3-3 i pobjede 2:3 nakon jedanesteraca)?', 11, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Real Madrid- Juventus', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Barcelona- Arsenal', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Chelsea- Bayern', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Milan- Liverpool', 1, CURRENT_DATE, CURRENT_DATE, 1)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koje godine je Barack Obama prvi put bio izabran kao predsjenik SAD-a?', 11, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('2006.', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('2004.', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('2008.', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('2010.', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);

WITH q AS (
INSERT INTO pitanja (pitanje, kategorije_id, aktivno)
VALUES ('Koja je službena valuta u Kosovu?', 11, 1)
    RETURNING id
    )
INSERT INTO odgovori (odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor, pitanja_id)
SELECT v.odgovor, v.aktivno, v.datum_unosa, v.datum_azuriranja, v.tocan_odgovor, q.id
FROM q
         CROSS JOIN (
    VALUES
        ('Kosovski dinar', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Kosovski lek', 1, CURRENT_DATE, CURRENT_DATE, 0),
        ('Euro', 1, CURRENT_DATE, CURRENT_DATE, 1),
        ('Konvertibilna marka', 1, CURRENT_DATE, CURRENT_DATE, 0)
) AS v(odgovor, aktivno, datum_unosa, datum_azuriranja, tocan_odgovor);