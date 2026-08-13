# AGENTS.md

## Opis projekta

Ovo je full-stack aplikacija za rješavanje kvizova. Registrirani korisnici mogu otvoriti račun i prijaviti se, urediti profil, odabrati kategorije i veličinu kviza, riješiti kviz te pregledati statistiku. Također mogu pregledavati kategorije i kreirati pitanja s četiri odgovora.

Glavni korisnici su krajnji korisnici koji rješavaju kvizove i upravljaju svojim profilom. Administrativne radnje nad pitanjima postoje kroz API i sučelje u skladu s postojećim ovlastima aplikacije.

Najvažnije funkcionalnosti su:

- registracija, prijava, odjava i deaktivacija računa
- JWT autentikacija i upravljanje trenutačnim korisnikom
- pregled kategorija, izrada pitanja i deaktivacija pitanja
- postavljanje, predaja i bodovanje kviza
- statistika kvizova i pitanja

## Tehnologije i verzije

- Backend: Java 17 i Spring Boot 4.0.1.
- Build alat: Gradle Wrapper (`gradlew` / `gradlew.bat`); ne uvoditi Maven.
- Baza: PostgreSQL i Spring Data JPA.
- Frontend: React 19.2, Vite 7 i JavaScript (nije TypeScript).
- HTTP klijent frontenda: axios; API pristup ostaje centraliziran u `frontend/src/api.js`.
- Paketni upravitelj frontenda: Yarn, jer repozitorij sadrži `frontend/yarn.lock`.
- Docker konfiguracija trenutačno nije dio repozitorija. Ne dodavati Docker, Node verziju ili dependencyje bez potrebe zadatka i provjere s korisnikom kada to mijenja razvojno okruženje. Node verzija nije eksplicitno pinana u repozitoriju.

## Struktura projekta

- Backend je u `src/main/java/com/example/zavrsni_rad`.
  - `config`: Spring Security, JWT i web/CORS konfiguracija.
  - `controller`: REST kontroleri i `ApiExceptionHandler`.
  - `dto`: modeli zahtjeva i odgovora.
  - `entity`: JPA entiteti mapirani na postojeću PostgreSQL shemu.
  - `mapper`: mapiranje entiteta u DTO-e.
  - `repository`: Spring Data repozitoriji i njihove implementacije.
  - `service`: poslovna logika.
- Konfiguracija backenda je u `src/main/resources/application.properties`.
- Backend testovi su u `src/test/java`.
- SQL shema i seed skripte su u `sql/`. Flyway i Liquibase nisu konfigurirani.
- Frontend je u `frontend/src`, s rutnim prikazima u `pages`, dijeljenim komponentama u `components` i API klijentom u `api.js`.
- Generirani direktoriji `build/`, `frontend/dist/` i `node_modules/` ne smiju se ručno mijenjati.

## Arhitektura i API

- Slijediti tok `Controller -> Service -> Repository`; kontroleri ostaju tanki i ne sadrže poslovnu logiku.
- Za nove ili izmijenjene API ugovore koristiti DTO-e. JPA entiteti se ne vraćaju izravno iz kontrolera.
- Mapiranje obaviti u postojećim mapperima ili jasno ograničenim metodama servisa/kontrolera, u skladu s obližnjim kodom. Ne uvoditi MapStruct bez prethodnog odobrenja.
- Validaciju ulaznih DTO-a obaviti Bean Validation anotacijama i `@Valid`; poslovnu validaciju obaviti u servisnom sloju.
- Za HTTP statuse koristiti `ResponseEntity` kada status ili tijelo odgovora nisu zadani podrazumijevanim Spring ponašanjem.
- Greške obrađivati preko postojećeg `ApiExceptionHandler` (`@RestControllerAdvice`). Zadržati postojeći API oblik greške: poruka je u polju `message`, a validacijske pogreške se vraćaju kao mapa polja i poruka.
- Kada se endpoint promijeni, provjeriti pozive u frontendu i route guardove te uskladiti validaciju i poruke na obje strane.

## Pravila pisanja koda

- Imena Java klasa, metoda, varijabli, paketa i React komponenti pisati na engleskom, u postojećem stilu (`PascalCase` za klase/komponente, `camelCase` za članove). Ne preimenovati postojeće domenske nazive bez punog usklađivanja baze, JPA mapiranja i klijenata.
- Lombok je već u uporabi; slijediti obrazac klase koju mijenjate (`@Data`, `@Getter`, `@Setter`, konstruktori i builderi). Ne prepravljati postojeće Lombok klase u ručno pisane bez jasnog razloga.
- Frontend koristiti kroz funkcionalne komponente, hookove i postojeće obične CSS datoteke. Ne uvoditi novi styling sustav.
- Komentari trebaju objašnjavati netrivijalnu namjeru ili ograničenje, ne prepričavati očit kod. Javni API i složenija poslovna pravila dokumentirati kratko i precizno kada nisu jasni iz imena i testova.
- Promjene držati malima i ciljanim; ne provoditi velike refaktore usput.

## Baza podataka

- Ne mijenjati shemu, nazive tablica/stupaca ni postojeća poslovna/seed pravila bez izričitog zahtjeva korisnika.
- Ako je promjena sheme izričito potrebna, ažurirati povezane SQL skripte u `sql/`, JPA anotacije/mapiranja, DTO-e i ovisni frontend u istom zadatku. Budući da Flyway/Liquibase nisu prisutni, ne uvoditi ih bez odobrenja.
- Sačuvati postojeće nazive i mapiranja. Ne mijenjati ili brisati postojeće podatke/seeds bez izričitog odobrenja.

## Domenska i sigurnosna pravila

- Korisničko ime i e-mail moraju biti jedinstveni; registracija zahtijeva valjane reference na spol i obrazovanje.
- Lozinke se uvijek kodiraju i nikad se ne vraćaju ili zapisuju kao čisti tekst.
- Prijaviti se može samo aktivan korisnik. Odjava i deaktivacija računa zahtijevaju Bearer token; aktualni token tada se stavlja na blacklistu.
- Kategorije, spol i obrazovanje su javno dostupni lookup podaci preko GET endpointa.
- Novo pitanje mora imati postojeću kategoriju, točno četiri odgovora i točno jedan točan odgovor. Tekst pitanja se trimma i ograničen je na 1000, a svaki odgovor na 256 znakova; nova pitanja i odgovori su aktivni.
- Predaja kviza zahtijeva prijavljenog korisnika i neprazan popis ID-jeva odgovora. Sprema se kviz i povezani odgovori, a točnost se broji po `tocan_odgovor = 1`.
- Kod promjene autentikacije ažurirati zajedno `SecurityConfig`, JWT obradu i korištenje tokena na frontendu. Ne zapisivati tajne, lozinke, JWT ključeve ni pristupne podatke u izvorni kod, testne izlaze ili dokumentaciju.
- Ne mijenjati `.env`, `application.properties` produkcijske vrijednosti, tajne ili produkcijsku konfiguraciju bez prethodnog pitanja korisniku.

## Testiranje i provjere

- Za svaku promjenu poslovne logike ili API-ja dodati ili prilagoditi relevantan JUnit 5 test. Za izolirane servisne testove koristiti Mockito kada je primjereno.
- Testcontainers i React Testing Library nisu trenutačno konfigurirani; ne uvoditi ih bez potrebe zadatka i odobrenja za novi dependency/alate.
- Nakon backend promjena pokrenuti relevantne testove, a kada je izvedivo `./gradlew test` i/ili `./gradlew build`.
- Nakon frontend promjena pokrenuti relevantnu provjeru: `cd frontend && yarn lint` i/ili `cd frontend && yarn build`.
- Dostupne naredbe:
  - `./gradlew bootRun`
  - `./gradlew test`
  - `./gradlew build`
  - `cd frontend && yarn dev`
  - `cd frontend && yarn lint`
  - `cd frontend && yarn build`

## Granice samostalnosti i završetak zadatka

- Ne dodavati dependencyje, vanjske servise, Docker konfiguraciju, migracijski alat ili velike refaktore bez prethodnog pitanja korisniku.
- Prvo pitati prije promjene sheme/podataka baze, autentikacijskog modela, produkcijske konfiguracije ili tajni, javnog API ugovora s nejasnim utjecajem, te prije brisanja ili preimenovanja većeg dijela koda.
- Ne dirati generirane direktorije, lock datoteku bez opravdane promjene dependencyja, ni nepovezane korisničke izmjene.
- Zadatak je završen kada se projekt uspješno builda u opsegu promjene, relevantni testovi/provjere prolaze, nema nepotrebnih izmjena i agent je pregledao vlastiti `git diff`.
- U završnom odgovoru uvijek navesti promijenjene datoteke i rezultate pokrenutih provjera, uključujući provjere koje nisu pokrenute i razlog.
