# Sistem de gestiune pentru adăpostul de animale

## Descriere generală

Acest proiect reprezintă un **sistem informatic de gestionare a activităților unui adăpost pentru animale**, realizat în cadrul cursului de **Baze de Date**.  
Scopul sistemului este de a urmări informațiile legate de animale, angajați, clienți, adopții, tratamente medicale, vaccinuri și alte procese administrative.

Modelul propus permite:
- organizarea eficientă a informațiilor despre animale și starea lor medicală;
- urmărirea tratamentelor și procedurilor veterinare;
- evidența adopțiilor și gestionarea contractelor;
- gestionarea angajaților și a sediilor adăpostului;
- promovarea publică a animalelor prin reviste distribuite clienților.

---

## Structura proiectului

- **`creare_inserare.txt`** – conține comenzile SQL pentru crearea tabelelor, definirea cheilor primare/străine, constrângeri, secvențe și inserarea datelor de test.
- **`exemple.txt`** – include cereri SQL complexe (JOIN-uri, subcereri sincronizate/nesincronizate, funcții pe șiruri, funcții de grup, agregări, outer join, division, top-n etc.).
- **`documentatie_proiect.docx`** – documentul teoretic complet, care descrie modelul conceptual, entitățile, atributele, relațiile și normalizarea până la FN5.
---

## Modelul conceptual

Modelul de date se bazează pe următoarele entități principale:

- **Angajat** – include subentitățile *Medic veterinar*, *Îngrijitor* și *Notar*;
- **Sediu** – locațiile fizice ale adăpostului;
- **Cușcă** – fiecare cușcă dintr-un sediu, asociată cu un animal;
- **Animal** – animalele din adăpost, identificate printr-un CIP unic;
- **Client** – persoanele care adoptă animale sau primesc reviste;
- **Procedură** – acțiunile medicale efectuate de medici veterinari;
- **Revistă** – publicațiile adăpostului;
- **Istoric** – tabelele care stochează evoluția interacțiunilor (ex: `istoric_medical`, `istoric_cusca`, `istoric_adoptie`, `istoric_aparitie`, etc.).

---

## Reguli și constrângeri

- Fiecare animal are un **CIP unic**.
- Într-o cușcă se află un singur animal la un moment dat.
- Doar **medicii veterinari** pot administra medicamente.
- Doar **notarii** pot semna contracte de adopție.
- Doar **îngrijitorii** pot gestiona cuștile.
- Un **animal poate fi adoptat de mai mulți clienți** în momente diferite, dar nu de același client de două ori.
- Fiecare sediu are **cel puțin un angajat și o cușcă**.

---

## Cereri SQL implementate

Fișierul `exemple.txt` include următoarele tipuri de interogări:

- Subcereri sincronizate și nesincronizate (cu 3+ tabele)
- Funcții pe șiruri și pe date calendaristice
- Agregări și funcții de grup (AVG, COUNT, MAX, etc.)
- Clauze `CASE`, `NVL`, `DECODE`
- Outer Join și clauze `WITH`
- Cereri de tip *division* și *top-n analysis*
- Operații de actualizare și ștergere cu subcereri
- Crearea de *view-uri complexe* și exemple LMD permise/nepermise

---

## Normalizare

Modelul respectă formele normale:
- **FN1** – toate atributele sunt atomice;
- **FN2** – toate atributele non-cheie depind complet de cheia primară;
- **FN3** – nu există dependențe tranzitive;
- **BCNF**, **FN4**, **FN5** – tabelele au fost analizate și respectă constrângerile acestor forme normale;
- Sunt explicate și **cazurile de denormalizare justificată** pentru eficiența interogărilor.
