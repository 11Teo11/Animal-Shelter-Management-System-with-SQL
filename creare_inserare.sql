--secvente (ex 10)
create sequence seq_angajati start with 100 increment by 1 nocache;
create sequence seq_sedii start with 1 increment by 1 nocache;
create sequence seq_custi start with 1 increment by 1 nocache;
create sequence seq_animale start with 100 increment by 1 nocache;
create sequence seq_proceduri start with 1 increment by 1 nocache;
create sequence seq_diagnostice start with 1 increment by 1 nocache;
create sequence seq_medicamente start with 1 increment by 1 nocache;
create sequence seq_reviste start with 1 increment by 1 nocache;
create sequence seq_clienti start with 100 increment by 1 nocache;


--ex 11
--SEDIU
create table sedii (
    numar_sediu number(4,0) primary key,
    oras varchar2(50) not null);
    
insert into sedii (numar_sediu, oras)
    values (seq_sedii.nextval, 'Bucuresti');
insert into sedii (numar_sediu, oras)
    values (seq_sedii.nextval, 'Bucuresti');
insert into sedii (numar_sediu, oras)
    values (seq_sedii.nextval, 'Iasi');
insert into sedii (numar_sediu, oras)
    values (seq_sedii.nextval, 'Cluj');
insert into sedii (numar_sediu, oras)
    values (seq_sedii.nextval, 'Timisoara');


--ANGAJAT
create table angajati( 
    cod_angajat number(6,0) primary key,
    nume varchar2(50) not null check (regexp_like(nume, '^[A-Z][a-z]+$')),
    prenume varchar2(50) not null check (regexp_like(prenume, '^[A-Z][a-z]+$')),
    data_nastere date not null,
    data_angajare date not null,
    salariu number(7,2) not null check (salariu > 0),
    numar_telefon varchar2(10) check (regexp_like(numar_telefon, '^07[0-9]{8}$')),
    adresa varchar2(100),
    numar_sediu number(4,0) references sedii(numar_sediu) not null);
      

insert into angajati (cod_angajat, nume, prenume, data_nastere, data_angajare, 
                      salariu, numar_telefon, adresa, numar_sediu)
    values (seq_angajati.nextval, 'Ionescu', 'Maria', to_date('20/06/1992', 'DD/MM/YYYY'), to_date('15/05/2020', 'DD/MM/YYYY'), 
            4500.00, '0768254145', 'St. Independentei 12', 5);
insert into angajati (cod_angajat, nume, prenume, data_nastere, data_angajare, 
                      salariu, numar_telefon, adresa, numar_sediu)
    values (seq_angajati.nextval, 'Popescu', 'Andrei', to_date('01/09/1985', 'DD/MM/YYYY'), to_date('01/09/2018', 'DD/MM/YYYY'), 
            5200.00, '0734712800', 'Bd. Unirii 45', 2);
insert into angajati (cod_angajat, nume, prenume, data_nastere, data_angajare, 
                      salariu, numar_telefon, adresa, numar_sediu)
    values (seq_angajati.nextval, 'Georgescu', 'Ana', to_date('25/11/1990', 'DD/MM/YYYY'), to_date('22/03/2021', 'DD/MM/YYYY'), 
            3700.00, '0744254245', 'Calea Timisorii 8', 3);
insert into angajati (cod_angajat, nume, prenume, data_nastere, data_angajare, 
                      salariu, numar_telefon, adresa, numar_sediu)
    values (seq_angajati.nextval, 'Dumitru', 'Ionel', to_date('15/01/1998', 'DD/MM/YYYY'), to_date('10/04/2016', 'DD/MM/YYYY'), 
            3700.00, '0722119817', 'St. Lalelelor 10', 4);
insert into angajati (cod_angajat, nume, prenume, data_nastere, data_angajare, 
                      salariu, numar_telefon, adresa, numar_sediu)
    values (seq_angajati.nextval, 'Marin', 'Raluca', to_date('30/09/1993', 'DD/MM/YYYY'), to_date('20/01/2020', 'DD/MM/YYYY'), 
            4950.00, '0733112728', 'Bd. Revolutiei 22', 5);
insert into angajati (cod_angajat, nume, prenume, data_nastere, data_angajare, 
                      salariu, numar_telefon, adresa, numar_sediu)
    values (seq_angajati.nextval, 'Radu', 'Cristian', to_date('10/05/1982', 'DD/MM/YYYY'), to_date('18/06/2010', 'DD/MM/YYYY'), 
            5500.00, '0724556182', 'St. Cerbului 5', 1);
insert into angajati (cod_angajat, nume, prenume, data_nastere, data_angajare, 
                      salariu, numar_telefon, adresa, numar_sediu)
    values (seq_angajati.nextval, 'Neagu', 'Simona', to_date('21/07/1991', 'DD/MM/YYYY'), to_date('03/10/2019', 'DD/MM/YYYY'), 
            4300.00, '0774294174', 'Calea Moldovei 88', 2);
insert into angajati (cod_angajat, nume, prenume, data_nastere, data_angajare, 
                      salariu, numar_telefon, adresa, numar_sediu)
    values (seq_angajati.nextval, 'Iacob', 'Daniel', to_date('17/02/1987', 'DD/MM/YYYY'), to_date('05/12/2015', 'DD/MM/YYYY'), 
            4600.00, '0729462843', 'St. Parcului 9', 4);
insert into angajati (cod_angajat, nume, prenume, data_nastere, data_angajare, 
                      salariu, numar_telefon, adresa, numar_sediu)
    values (seq_angajati.nextval, 'Enache', 'Mihai', to_date('04/03/1989', 'DD/MM/YYYY'), to_date('12/02/2017', 'DD/MM/YYYY'), 
            3200.00, '0764381493', 'Bd. Basarabia 18', 3);
insert into angajati (cod_angajat, nume, prenume, data_nastere, data_angajare, 
                      salariu, numar_telefon, adresa, numar_sediu)
    values (seq_angajati.nextval, 'Constantin', 'Elena', to_date('22/08/1994', 'DD/MM/YYYY'), to_date('10/06/2022', 'DD/MM/YYYY'), 
            4800.00, '0717492743', 'St. Trandafirilor 3', 1);
insert into angajati (cod_angajat, nume, prenume, data_nastere, data_angajare, 
                      salariu, numar_telefon, adresa, numar_sediu)
    values (seq_angajati.nextval, 'Barbu', 'Andreea', to_date('09/12/1990', 'DD/MM/YYYY'), to_date('14/09/2014', 'DD/MM/YYYY'), 
            5300.00, '0724538491', 'Calea Bucuresti 112', 1);
insert into angajati (cod_angajat, nume, prenume, data_nastere, data_angajare, 
                      salariu, numar_telefon, adresa, numar_sediu)
    values (seq_angajati.nextval, 'Voicu', 'Anca', to_date('11/08/2002', 'DD/MM/YYYY'), to_date('01/06/2024', 'DD/MM/YYYY'), 
            3100.00, '0757329427', 'Calea Victoriei 10', 1);
insert into angajati (cod_angajat, nume, prenume, data_nastere, data_angajare, 
                      salariu, numar_telefon, adresa, numar_sediu)
    values (seq_angajati.nextval, 'Ilie', 'Florin', to_date('11/10/1985', 'DD/MM/YYYY'), to_date('25/11/2012', 'DD/MM/YYYY'), 
            5700.00, '0785328734', 'St. Libertatii 45', 1);
insert into angajati (cod_angajat, nume, prenume, data_nastere, data_angajare, 
                      salariu, numar_telefon, adresa, numar_sediu)
    values (seq_angajati.nextval, 'Petrescu', 'Ioana', to_date('29/03/1992', 'DD/MM/YYYY'), to_date('08/08/2018', 'DD/MM/YYYY'), 
            4600.00, '0726481032', 'Bd. Dacia 7', 1);
insert into angajati (cod_angajat, nume, prenume, data_nastere, data_angajare, 
                      salariu, numar_telefon, adresa, numar_sediu)
    values (seq_angajati.nextval, 'Oprea', 'George', to_date('14/04/2001', 'DD/MM/YYYY'), to_date('11/09/2023', 'DD/MM/YYYY'), 
            3200.00, '0785327384', 'St. Muncii 70', 1);
            
 
--INGRIJITOR, MEDIC_VETERINAR, NOTAR
create table ingrijitori (cod_angajat number(6,0) primary key references angajati(cod_angajat));
create table medici_veterinari (cod_angajat number(6,0) primary key references angajati(cod_angajat));
create table notari (cod_angajat number(6,0) primary key references angajati(cod_angajat));

insert into ingrijitori (cod_angajat) values (111);
insert into ingrijitori (cod_angajat) values (108);
insert into ingrijitori (cod_angajat) values (114);
insert into ingrijitori (cod_angajat) values (102);
insert into ingrijitori (cod_angajat) values (103);

insert into medici_veterinari (cod_angajat) values (104);
insert into medici_veterinari (cod_angajat) values (101);
insert into medici_veterinari (cod_angajat) values (110);
insert into medici_veterinari (cod_angajat) values (105);
insert into medici_veterinari (cod_angajat) values (112);

insert into notari (cod_angajat) values (106);
insert into notari (cod_angajat) values (100);
insert into notari (cod_angajat) values (107);
insert into notari (cod_angajat) values (113);
insert into notari (cod_angajat) values (109);


--CUSCA
create table custi( numar_cusca number(6,0) primary key, 
                    marime char(1) not null check (marime in ('S', 'M', 'L')),
                    numar_sediu number(4,0) not null references sedii(numar_sediu));

insert into custi(numar_cusca, marime, numar_sediu) values (seq_custi.nextval, 'S', 1);
insert into custi(numar_cusca, marime, numar_sediu) values (seq_custi.nextval, 'S', 1);
insert into custi(numar_cusca, marime, numar_sediu) values (seq_custi.nextval, 'S', 1);
insert into custi(numar_cusca, marime, numar_sediu) values (seq_custi.nextval, 'S', 2);
insert into custi(numar_cusca, marime, numar_sediu) values (seq_custi.nextval, 'S', 3);
insert into custi(numar_cusca, marime, numar_sediu) values (seq_custi.nextval, 'S', 4);
insert into custi(numar_cusca, marime, numar_sediu) values (seq_custi.nextval, 'S', 5);
insert into custi(numar_cusca, marime, numar_sediu) values (seq_custi.nextval, 'M', 1);
insert into custi(numar_cusca, marime, numar_sediu) values (seq_custi.nextval, 'M', 1);
insert into custi(numar_cusca, marime, numar_sediu) values (seq_custi.nextval, 'M', 1);
insert into custi(numar_cusca, marime, numar_sediu) values (seq_custi.nextval, 'M', 2);
insert into custi(numar_cusca, marime, numar_sediu) values (seq_custi.nextval, 'M', 3);
insert into custi(numar_cusca, marime, numar_sediu) values (seq_custi.nextval, 'M', 4);
insert into custi(numar_cusca, marime, numar_sediu) values (seq_custi.nextval, 'M', 5);
insert into custi(numar_cusca, marime, numar_sediu) values (seq_custi.nextval, 'L', 1);
insert into custi(numar_cusca, marime, numar_sediu) values (seq_custi.nextval, 'L', 1);
insert into custi(numar_cusca, marime, numar_sediu) values (seq_custi.nextval, 'L', 1);
insert into custi(numar_cusca, marime, numar_sediu) values (seq_custi.nextval, 'L', 2);
insert into custi(numar_cusca, marime, numar_sediu) values (seq_custi.nextval, 'L', 3);
insert into custi(numar_cusca, marime, numar_sediu) values (seq_custi.nextval, 'L', 4);
insert into custi(numar_cusca, marime, numar_sediu) values (seq_custi.nextval, 'L', 5);


--ANIMAL
create table animale (cod_cip number(6,0) primary key, nume varchar2(50), 
                      data_nastere date not null,tip varchar2(50) not null, 
                      stadiu varchar2(20) not null check (stadiu in ('Adapost', 'Adoptat', 'Decedat'))); 
                      
insert into animale (cod_cip, nume, data_nastere, tip, stadiu)
    values (seq_animale.nextval, 'Max', to_date('20/02/2020', 'DD/MM/YYYY'), 'Caine', 'Adapost');
insert into animale (cod_cip, nume, data_nastere, tip, stadiu)
    values (seq_animale.nextval, 'Rex', to_date('12/05/2021', 'DD/MM/YYYY'), 'Caine', 'Adapost');
insert into animale (cod_cip, nume, data_nastere, tip, stadiu)
    values (seq_animale.nextval, 'Miti', to_date('03/08/2021', 'DD/MM/YYYY'), 'Caine', 'Adoptat');
insert into animale (cod_cip, nume, data_nastere, tip, stadiu)
    values (seq_animale.nextval, 'Azor', to_date('21/03/2019', 'DD/MM/YYYY'), 'Caine', 'Adapost');
insert into animale (cod_cip, nume, data_nastere, tip, stadiu)
    values (seq_animale.nextval, 'Tom', to_date('10/11/2022', 'DD/MM/YYYY'), 'Pisica', 'Adapost');
insert into animale (cod_cip, nume, data_nastere, tip, stadiu)
    values (seq_animale.nextval, 'Bella', to_date('14/01/2018', 'DD/MM/YYYY'), 'Caine', 'Decedat');
insert into animale (cod_cip, nume, data_nastere, tip, stadiu)
    values (seq_animale.nextval, 'Luna', to_date('20/06/2021', 'DD/MM/YYYY'), 'Pisica', 'Adoptat');
insert into animale (cod_cip, nume, data_nastere, tip, stadiu)
    values (seq_animale.nextval, 'Rocky', to_date('01/12/2019', 'DD/MM/YYYY'), 'Caine', 'Adapost');
insert into animale (cod_cip, nume, data_nastere, tip, stadiu)
    values (seq_animale.nextval, 'Cleo', to_date('25/04/2022', 'DD/MM/YYYY'), 'Caine', 'Adoptat');
insert into animale (cod_cip, nume, data_nastere, tip, stadiu)
    values (seq_animale.nextval, 'Yoyo', to_date('13/09/2017', 'DD/MM/YYYY'), 'Caine', 'Adapost');
insert into animale (cod_cip, nume, data_nastere, tip, stadiu)
    values (seq_animale.nextval, 'Oscar', to_date('30/07/2020', 'DD/MM/YYYY'), 'Pisica', 'Adoptat');
insert into animale (cod_cip, nume, data_nastere, tip, stadiu)
    values (seq_animale.nextval, 'Zeus', to_date('28/12/2018', 'DD/MM/YYYY'), 'Caine', 'Adapost');
insert into animale (cod_cip, nume, data_nastere, tip, stadiu)
    values (seq_animale.nextval, 'Lilly', to_date('11/01/2023', 'DD/MM/YYYY'), 'Pisica', 'Adapost');
insert into animale (cod_cip, nume, data_nastere, tip, stadiu)
    values (seq_animale.nextval, 'Sofi', to_date('20/02/2022', 'DD/MM/YYYY'), 'Caine', 'Adapost');
insert into animale (cod_cip, nume, data_nastere, tip, stadiu)
    values (seq_animale.nextval, 'Bebe', to_date('25/03/2017', 'DD/MM/YYYY'), 'Caine', 'Adoptat');
insert into animale (cod_cip, nume, data_nastere, tip, stadiu)
    values (seq_animale.nextval, 'Aluna', to_date('20/06/2020', 'DD/MM/YYYY'), 'Caine', 'Adoptat');
insert into animale (cod_cip, nume, data_nastere, tip, stadiu)
    values (seq_animale.nextval, 'Kiwi', to_date('15/02/2019', 'DD/MM/YYYY'), 'Caine', 'Adapost');


--REVISTA
create table reviste(numar number(4,0) primary key, data_aparitie date not null);

insert into reviste(numar, data_aparitie) values (seq_reviste.nextval, to_date('02/06/2024', 'DD/MM/YYYY'));
insert into reviste(numar, data_aparitie) values (seq_reviste.nextval, to_date('09/06/2024', 'DD/MM/YYYY'));
insert into reviste(numar, data_aparitie) values (seq_reviste.nextval, to_date('16/06/2024', 'DD/MM/YYYY'));
insert into reviste(numar, data_aparitie) values (seq_reviste.nextval, to_date('23/06/2024', 'DD/MM/YYYY'));
insert into reviste(numar, data_aparitie) values (seq_reviste.nextval, to_date('30/06/2024', 'DD/MM/YYYY'));
insert into reviste(numar, data_aparitie) values (seq_reviste.nextval, to_date('07/07/2024', 'DD/MM/YYYY'));
insert into reviste(numar, data_aparitie) values (seq_reviste.nextval, to_date('14/07/2024', 'DD/MM/YYYY'));


--CLIENT
create table clienti(cod_client number(6,0) primary key, nume varchar2(50) not null check (regexp_like(nume, '^[A-Z][a-z]+$')),
                     prenume varchar2(50) not null check (regexp_like(prenume, '^[A-Z][a-z]+$')), 
                     numar_telefon varchar2(10) check (regexp_like(numar_telefon, '07[0-9]{8}$')),
                     adresa varchar2(100) not null, abonare_revista char(2) not null check (abonare_revista in ('DA', 'NU')));
                     
insert into clienti (cod_client, nume, prenume, numar_telefon, adresa, abonare_revista)
    values (seq_clienti.nextval, 'Vasile', 'Dan', '0747385517', 'Bucuresti, Calea Victoriei 14', 'DA');
insert into clienti (cod_client, nume, prenume, numar_telefon, adresa, abonare_revista)
    values (seq_clienti.nextval, 'Ionescu', 'Mihai', '0742345352', 'Bucuresti, Bd. Independentei 33', 'NU');
insert into clienti (cod_client, nume, prenume, numar_telefon, adresa, abonare_revista)
    values (seq_clienti.nextval, 'Georgescu', 'Elena', '0775927457', 'Bucuresti, Bd. Dacia 78', 'DA');
insert into clienti (cod_client, nume, prenume, numar_telefon, adresa, abonare_revista)
    values (seq_clienti.nextval, 'Dumitrescu', 'Teodor', '0736592659', 'Bucuresti, Calea Victoriei 14', 'DA');
insert into clienti (cod_client, nume, prenume, numar_telefon, adresa, abonare_revista)
    values (seq_clienti.nextval, 'Virghileanu', 'Roberta', '0757320684', 'Bucuresti, St. Mihai Bravu 18', 'NU');
insert into clienti (cod_client, nume, prenume, numar_telefon, adresa, abonare_revista)
    values (seq_clienti.nextval, 'Stefanescu', 'Victor', '0719300214', 'Iasi, St. Mihail Sadoveanu 14', 'DA');
insert into clienti (cod_client, nume, prenume, numar_telefon, adresa, abonare_revista)
    values (seq_clienti.nextval, 'Popa', 'Andrei', '0792650473', 'Iasi, St. Vasile Lupu 83', 'DA');
insert into clienti (cod_client, nume, prenume, numar_telefon, adresa, abonare_revista)
    values (seq_clienti.nextval, 'Stoica', 'Stefan', '0703649602', 'Iasi, Aleea Nicolina 15', 'DA');


--PROCEDURA
create table proceduri(cod_procedura number(6,0) primary key, nume_procedura varchar2(100) not null);

insert into proceduri(cod_procedura, nume_procedura)
    values (seq_proceduri.nextval, 'Control general');
insert into proceduri(cod_procedura, nume_procedura)
    values (seq_proceduri.nextval, 'Vaccinare');
insert into proceduri(cod_procedura, nume_procedura)
    values (seq_proceduri.nextval, 'Sterilizare');
insert into proceduri(cod_procedura, nume_procedura)
    values (seq_proceduri.nextval, 'Deparazitare');
insert into proceduri(cod_procedura, nume_procedura)
    values (seq_proceduri.nextval, 'Interventie chirurgicala');
insert into proceduri(cod_procedura, nume_procedura)
    values (seq_proceduri.nextval, 'Tratament dermatologic');
    

--DIAGNOSTIC
create table diagnostice(cod_diagnostic number(6,0) primary key, denumire varchar2(100) not null);

insert into diagnostice(cod_diagnostic, denumire)
    values (seq_diagnostice.nextval, 'Paraziti intestinali');
insert into diagnostice(cod_diagnostic, denumire)
    values (seq_diagnostice.nextval, 'Dermatita');
insert into diagnostice(cod_diagnostic, denumire)
    values (seq_diagnostice.nextval, 'Otita');
insert into diagnostice(cod_diagnostic, denumire)
    values (seq_diagnostice.nextval, 'Fractura');
insert into diagnostice(cod_diagnostic, denumire)
    values (seq_diagnostice.nextval, 'Conjunctivita');
insert into diagnostice(cod_diagnostic, denumire) 
    values (6, 'Fara afectiuni');
    

--MEDICAMENTE
create table medicamente(cod_medicament number(6,0) primary key, denumire varchar2(50) not null);

insert into medicamente(cod_medicament, denumire)
    values (seq_medicamente.nextval, 'Albendazol');
insert into medicamente(cod_medicament, denumire)
    values (seq_medicamente.nextval, 'Ketoconazol');
insert into medicamente(cod_medicament, denumire)
    values (seq_medicamente.nextval, 'Otipax');
insert into medicamente(cod_medicament, denumire)
    values (seq_medicamente.nextval, 'Enrofloxacina');
insert into medicamente(cod_medicament, denumire)
    values (seq_medicamente.nextval, 'Tobrex');
insert into medicamente(cod_medicament, denumire)
    values (seq_medicamente.nextval, 'Cefalexin');
insert into medicamente(cod_medicament, denumire)
    values (seq_medicamente.nextval, 'Metronidazol');
    

--ISTORIC CUSCA
create table istoric_custi(cod_cip number(6,0), numar_cusca number(6,0), cod_angajat number(6,0), data_incepere date not null,
                           primary key (cod_cip, numar_cusca, cod_angajat, data_incepere),
                           foreign key (cod_cip) references animale(cod_cip),
                           foreign key (numar_cusca) references custi(numar_cusca),
                           foreign key (cod_angajat) references ingrijitori(cod_angajat));
                        
insert into istoric_custi (cod_cip, numar_cusca, cod_angajat, data_incepere)
    values (100, 1, 114, to_date('01/03/2023', 'DD/MM/YYYY'));
insert into istoric_custi (cod_cip, numar_cusca, cod_angajat, data_incepere)
    values (101, 2, 111, to_date('05/03/2023', 'DD/MM/YYYY'));
insert into istoric_custi (cod_cip, numar_cusca, cod_angajat, data_incepere)
    values (103, 12, 108, to_date('15/03/2023', 'DD/MM/YYYY'));
insert into istoric_custi (cod_cip, numar_cusca, cod_angajat, data_incepere)
    values (104, 5, 108, to_date('20/03/2023', 'DD/MM/YYYY'));
insert into istoric_custi (cod_cip, numar_cusca, cod_angajat, data_incepere)
    values (105, 6, 103, to_date('28/03/2023', 'DD/MM/YYYY'));
insert into istoric_custi (cod_cip, numar_cusca, cod_angajat, data_incepere)
    values (107, 8, 114, to_date('10/04/2023', 'DD/MM/YYYY'));
insert into istoric_custi (cod_cip, numar_cusca, cod_angajat, data_incepere)
    values (109, 9, 111, to_date('12/04/2023', 'DD/MM/YYYY'));
insert into istoric_custi (cod_cip, numar_cusca, cod_angajat, data_incepere)
    values (111, 10, 114, to_date('14/04/2023', 'DD/MM/YYYY'));
insert into istoric_custi (cod_cip, numar_cusca, cod_angajat, data_incepere)
    values (112, 19, 102, to_date('16/04/2023', 'DD/MM/YYYY'));
insert into istoric_custi (cod_cip, numar_cusca, cod_angajat, data_incepere)
    values (113, 12, 102, to_date('20/04/2023', 'DD/MM/YYYY'));
insert into istoric_custi (cod_cip, numar_cusca, cod_angajat, data_incepere)
    values (114, 3, 114, to_date('25/02/2023', 'DD/MM/YYYY'));
insert into istoric_custi (cod_cip, numar_cusca, cod_angajat, data_incepere)
    values (115, 17, 111, to_date('28/04/2023', 'DD/MM/YYYY'));
insert into istoric_custi (cod_cip, numar_cusca, cod_angajat, data_incepere)
    values (116, 15, 111, to_date('01/05/2023', 'DD/MM/YYYY'));
insert into istoric_custi (cod_cip, numar_cusca, cod_angajat, data_incepere)
    values (106, 16, 114, to_date('07/03/2023', 'DD/MM/YYYY'));
insert into istoric_custi (cod_cip, numar_cusca, cod_angajat, data_incepere)
    values (110, 9, 114, to_date('09/01/2023', 'DD/MM/YYYY'));


--ISTORIC APARITIE
create table istoric_aparitii (numar number(4,0), cod_cip number(6,0),
                               primary key (numar, cod_cip),
                               foreign key (numar) references reviste(numar),
                               foreign key (cod_cip) references animale(cod_cip));
                               
insert into istoric_aparitii (numar, cod_cip) values (1,100);
insert into istoric_aparitii (numar, cod_cip) values (1,101);                   
insert into istoric_aparitii (numar, cod_cip) values (2,102);     
insert into istoric_aparitii (numar, cod_cip) values (2,114);
insert into istoric_aparitii (numar, cod_cip) values (3,116);                   
insert into istoric_aparitii (numar, cod_cip) values (3,115);  
insert into istoric_aparitii (numar, cod_cip) values (4,103);
insert into istoric_aparitii (numar, cod_cip) values (4,104);                   
insert into istoric_aparitii (numar, cod_cip) values (5,108);  
insert into istoric_aparitii (numar, cod_cip) values (5,110);
insert into istoric_aparitii (numar, cod_cip) values (6,106);                   
insert into istoric_aparitii (numar, cod_cip) values (6,111);  
insert into istoric_aparitii (numar, cod_cip) values (7,109);
insert into istoric_aparitii (numar, cod_cip) values (7,107);                   
insert into istoric_aparitii (numar, cod_cip) values (7,105);  


--ISTORIC REVISTA
create table istoric_reviste(numar number(4,0), cod_client number(6,0),
                             primary key (numar, cod_client),
                             foreign key (numar) references reviste(numar),
                             foreign key (cod_client) references clienti(cod_client));
insert into istoric_reviste (numar, cod_client) values (1, 100);
insert into istoric_reviste (numar, cod_client) values (1, 102);
insert into istoric_reviste (numar, cod_client) values (1, 103);
insert into istoric_reviste (numar, cod_client) values (2, 100);
insert into istoric_reviste (numar, cod_client) values (2, 102);
insert into istoric_reviste (numar, cod_client) values (2, 103);
insert into istoric_reviste (numar, cod_client) values (3, 100);
insert into istoric_reviste (numar, cod_client) values (3, 102);
insert into istoric_reviste (numar, cod_client) values (3, 103);
insert into istoric_reviste (numar, cod_client) values (4, 106);
insert into istoric_reviste (numar, cod_client) values (5, 106);
insert into istoric_reviste (numar, cod_client) values (5, 107);
insert into istoric_reviste (numar, cod_client) values (6, 106);
insert into istoric_reviste (numar, cod_client) values (6, 107);
insert into istoric_reviste (numar, cod_client) values (7, 106);


--ISTORIC MEDICAL
create table istoric_medical (cod_cip number(6,0), cod_angajat number(6,0), cod_procedura number(6,0),data_ef date not null,
                              primary key (cod_cip, cod_angajat, cod_procedura, data_ef),
                              foreign key (cod_cip) references animale(cod_cip),
                              foreign key (cod_angajat) references medici_veterinari(cod_angajat),
                              foreign key (cod_procedura) references proceduri(cod_procedura));
                              
insert into istoric_medical values (106, 104, 6, to_date('03/01/2025', 'DD/MM/YYYY'));
insert into istoric_medical values (101, 105, 6, to_date('01/04/2025', 'DD/MM/YYYY'));
insert into istoric_medical values (115, 104, 1, to_date('08/05/2025', 'DD/MM/YYYY'));
insert into istoric_medical values (101, 105, 5, to_date('10/05/2025', 'DD/MM/YYYY'));
insert into istoric_medical values (115, 104, 2, to_date('06/10/2024', 'DD/MM/YYYY'));
insert into istoric_medical values (106, 104, 2, to_date('19/10/2024', 'DD/MM/YYYY'));
insert into istoric_medical values (103, 101, 2, to_date('02/12/2024', 'DD/MM/YYYY'));
insert into istoric_medical values (109, 105, 1, to_date('21/11/2024', 'DD/MM/YYYY'));
insert into istoric_medical values (103, 101, 6, to_date('30/09/2024', 'DD/MM/YYYY'));
insert into istoric_medical values (115, 104, 1, to_date('14/08/2024', 'DD/MM/YYYY'));
insert into istoric_medical values (103, 101, 6, to_date('18/04/2025', 'DD/MM/YYYY'));
insert into istoric_medical values (101, 112, 3, to_date('13/04/2025', 'DD/MM/YYYY'));
insert into istoric_medical values (109, 105, 3, to_date('03/10/2024', 'DD/MM/YYYY'));
insert into istoric_medical values (106, 104, 3, to_date('23/11/2024', 'DD/MM/YYYY'));
insert into istoric_medical values (107, 112, 6, to_date('17/04/2025', 'DD/MM/YYYY'));


--DIAGNOSTIC
create table istoric_diagnostice 
(cod_cip number(6,0), cod_angajat number(6,0), cod_procedura number(6,0),
data_ef date, cod_diagnostic number(6,0),
primary key (cod_cip, cod_angajat, cod_procedura, data_ef, cod_diagnostic),
foreign key (cod_cip, cod_angajat, cod_procedura, data_ef) references istoric_medical(cod_cip, cod_angajat, cod_procedura, data_ef),
foreign key (cod_diagnostic) references diagnostice(cod_diagnostic));

insert into istoric_diagnostice(cod_cip, cod_angajat, cod_procedura, data_ef, cod_diagnostic) values (115, 104, 1, to_date('08/05/2025', 'DD/MM/YYYY'), 1);
insert into istoric_diagnostice(cod_cip, cod_angajat, cod_procedura, data_ef, cod_diagnostic) values (109, 105, 1, to_date('21/11/2024', 'DD/MM/YYYY'), 3);
insert into istoric_diagnostice(cod_cip, cod_angajat, cod_procedura, data_ef, cod_diagnostic) values (115, 104, 1, to_date('14/08/2024', 'DD/MM/YYYY'), 2); 
insert into istoric_diagnostice(cod_cip, cod_angajat, cod_procedura, data_ef, cod_diagnostic) values (107, 112, 6, to_date('17/04/2025', 'DD/MM/YYYY'), 2); 
insert into istoric_diagnostice(cod_cip, cod_angajat, cod_procedura, data_ef, cod_diagnostic) values (103, 101, 6, to_date('18/04/2025', 'DD/MM/YYYY'), 4); 
insert into istoric_diagnostice(cod_cip, cod_angajat, cod_procedura, data_ef, cod_diagnostic) values (101, 105, 5, to_date('10/05/2025', 'DD/MM/YYYY'), 4); 
insert into istoric_diagnostice(cod_cip, cod_angajat, cod_procedura, data_ef, cod_diagnostic) values (106, 104, 2, to_date('19/10/2024', 'DD/MM/YYYY'), 5);
insert into istoric_diagnostice(cod_cip, cod_angajat, cod_procedura, data_ef, cod_diagnostic) values (103, 101, 2, to_date('02/12/2024', 'DD/MM/YYYY'), 5); 
insert into istoric_diagnostice(cod_cip, cod_angajat, cod_procedura, data_ef, cod_diagnostic) values (101, 112, 3, to_date('13/04/2025', 'DD/MM/YYYY'), 6); 
insert into istoric_diagnostice(cod_cip, cod_angajat, cod_procedura, data_ef, cod_diagnostic) values (103, 101, 6, to_date('30/09/2024', 'DD/MM/YYYY'), 3); 


--RETETA
create table retete (cod_cip number(6,0), cod_angajat number(6,0), cod_procedura number(6,0),
                     data_ef date, cod_medicament number(6,0),
                     primary key (cod_cip, cod_angajat, cod_procedura, data_ef, cod_medicament),
                     foreign key (cod_cip, cod_angajat, cod_procedura, data_ef) 
                     references istoric_medical(cod_cip, cod_angajat, cod_procedura, data_ef),
                     foreign key (cod_medicament) references medicamente(cod_medicament));
            

insert into retete values (101, 105, 6, to_date('01/04/2025', 'DD/MM/YYYY'), 1);

insert into retete values (106, 104, 6, to_date('03/01/2025', 'DD/MM/YYYY'), 2);

insert into retete values (107, 112, 6, to_date('17/04/2025', 'DD/MM/YYYY'), 2);

insert into retete values (103, 101, 6, to_date('30/09/2024', 'DD/MM/YYYY'), 2);

insert into retete values (109, 105, 1, to_date('21/11/2024', 'DD/MM/YYYY'), 3);

insert into retete values (101, 105, 5, to_date('10/05/2025', 'DD/MM/YYYY'), 4);

insert into retete values (103, 101, 2, to_date('02/12/2024', 'DD/MM/YYYY'), 5);

insert into retete values (106, 104, 3, to_date('23/11/2024', 'DD/MM/YYYY'), 6);

insert into retete values (115, 104, 1, to_date('08/05/2025', 'DD/MM/YYYY'), 7);

insert into retete values (106, 104, 2, to_date('19/10/2024', 'DD/MM/YYYY'), 5);



--ISTORIC ADOPTIE
create table istoric_adoptii(cod_client number(6,0), cod_cip number(6,0), cod_angajat number(6,0), data_adoptie date not null,
                             primary key (cod_client, cod_cip, cod_angajat),
                             foreign key (cod_client) references clienti(cod_client),
                             foreign key (cod_cip) references animale(cod_cip),
                             foreign key (cod_angajat) references notari(cod_angajat));

insert into istoric_adoptii (cod_client, cod_cip, cod_angajat, data_adoptie)
  values (100, 106, 100, to_date('15/03/2023', 'DD/MM/YYYY'));

insert into istoric_adoptii (cod_client, cod_cip, cod_angajat, data_adoptie)
  values (101, 102, 113, to_date('27/03/2023', 'DD/MM/YYYY'));

insert into istoric_adoptii (cod_client, cod_cip, cod_angajat, data_adoptie)
  values (102, 114, 107, to_date('09/04/2023', 'DD/MM/YYYY')); 

insert into istoric_adoptii (cod_client, cod_cip, cod_angajat, data_adoptie)
  values (103, 115, 100, to_date('20/04/2023', 'DD/MM/YYYY'));

insert into istoric_adoptii (cod_client, cod_cip, cod_angajat, data_adoptie)
  values (104, 110, 109, to_date('02/05/2023', 'DD/MM/YYYY'));

insert into istoric_adoptii (cod_client, cod_cip, cod_angajat, data_adoptie)
  values (105, 108, 113, to_date('10/05/2023', 'DD/MM/YYYY')); 

insert into istoric_adoptii (cod_client, cod_cip, cod_angajat, data_adoptie)
  values (106, 101, 113, to_date('15/05/2023', 'DD/MM/YYYY'));

insert into istoric_adoptii (cod_client, cod_cip, cod_angajat, data_adoptie)
  values (107, 103, 106, to_date('20/05/2023', 'DD/MM/YYYY')); 

insert into istoric_adoptii (cod_client, cod_cip, cod_angajat, data_adoptie)
  values (106, 109, 109, to_date('24/05/2023', 'DD/MM/YYYY')); 

insert into istoric_adoptii (cod_client, cod_cip, cod_angajat, data_adoptie)
  values (104, 100, 107, to_date('01/06/2023', 'DD/MM/YYYY'));
