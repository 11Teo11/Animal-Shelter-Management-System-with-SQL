# Baza de date pentru gestionarea unui adăpost de animale — Oracle SQL

Proiect care implementează o **bază de date relațională completă** destinată gestionării unui **adăpost de animale**.  
Baza de date modelează relațiile dintre **animale, clienți, angajați, proceduri, diagnostice și adopții**, incluzând istoricul medical și aparițiile în reviste.

Dezvoltat în cadrul cursului **Baze de date**  
 *Facultatea de Matematică și Informatică, Universitatea din București*

---

## Descriere generală

Proiectul realizează o **schemă relațională completă** utilizând **Oracle SQL**, incluzând:

- Crearea tabelelor cu chei primare, chei străine și constrângeri logice  
- Crearea de **secvențe** pentru generarea automată a identificatorilor unici  
- Inserarea de date consistente și realiste  
- Modelarea relațiilor între entități (1:N, N:M, ierarhii de roluri)  
- Validarea datelor prin `CHECK`, `REGEXP_LIKE`, `REFERENCES` și alte constrângeri

---

## Entități și relații principale

| Entitate | Descriere |
|-----------|-----------|
| **SEDII** | Reprezintă locațiile (sediile) adăpostului |
| **ANGAJATI** | Angajații adăpostului, cu validări pentru nume, salariu și număr de telefon |
| **INGRIJITORI / MEDICI_VETERINARI / NOTARI** | Tabele derivate pentru roluri specifice de angajați |
| **CUSTI** | Cuști în care sunt adăpostite animalele |
| **ANIMALE** | Animalele cu cod CIP, nume, specie și stare |
| **CLIENTI** | Persoane care adoptă sau se abonează la revista adăpostului |
| **REVISTE** | Reviste periodice care prezintă animalele disponibile |
| **PROCEDURI / DIAGNOSTICE / MEDICAMENTE** | Informații medicale și operaționale |
| **ISTORIC_*** | Tabele de legătură care urmăresc istoricul medical, al adopțiilor și al publicațiilor |

---

## Funcționalități implementate

- ✅ Creare completă a tabelelor cu toate constrângerile logice  
- ✅ Definirea secvențelor pentru chei primare  
- ✅ Inserare de date pentru toate entitățile  
- ✅ Modelare ierarhică pentru rolurile angajaților  
- ✅ Validare a datelor (format număr de telefon, capitalizare nume etc.)  
- ✅ Respectarea integrității referențiale între entități  
