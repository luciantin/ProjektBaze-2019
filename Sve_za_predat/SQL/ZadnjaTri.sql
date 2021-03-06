--placa za zaposlenika ID za n-ti mjesec u m-toj godini  OK (zaokružuje plaču ali neznam kako da ju ne zaokruži)

drop procedure zap_placa;

CREATE OR REPLACE PROCEDURE zap_placa (
    p_zap_id IN ZAPOSLENIK.ZAPOSLENIK_ID%TYPE,
    p_DD IN NUMERIC,
    p_YYYY IN NUMERIC,
    o_placa OUT NUMERIC
    )
IS
    var_satnica NUMERIC(8,2);
    var_sum_sat NUMERIC(8,2);
    BEGIN

        SELECT SATNICA INTO var_satnica  FROM RADNI_STATUS
        WHERE ZAPOSLENIK_ID = p_zap_id AND DATUM_POCETKA = (SELECT MAX(DATUM_POCETKA) FROM RADNI_STATUS GROUP BY ZAPOSLENIK_ID HAVING ZAPOSLENIK_ID = p_zap_id);


        SELECT SUM(ODRADENI_SATI) INTO var_sum_sat  FROM ZAPOSLENICI_DOLAZAK
        WHERE EXTRACT(month FROM DATUM) = p_DD AND EXTRACT(year FROM DATUM) = p_YYYY GROUP BY ZAPOSLENIK_ID HAVING ZAPOSLENIK_ID = p_zap_id;

        o_placa := var_satnica * var_sum_sat;

    end;


--TEST
DECLARE
   o_placa NUMERIC(8,2);
BEGIN

    RACUNOVODA_PACK.zap_placa(5,2,2008,o_placa);

   DBMS_OUTPUT.PUT_LINE('Opis :  ' || o_placa);

END;

-- = 479

--TEST 26.6
SELECT SATNICA FROM RADNI_STATUS
WHERE ZAPOSLENIK_ID = 5 AND DATUM_POCETKA = (SELECT MAX(DATUM_POCETKA) FROM RADNI_STATUS GROUP BY ZAPOSLENIK_ID HAVING ZAPOSLENIK_ID = 5);

--TEST 18
SELECT SUM(ODRADENI_SATI) FROM ZAPOSLENICI_DOLAZAK WHERE EXTRACT(month FROM DATUM) = 2 AND EXTRACT(year FROM DATUM) = 2008 GROUP BY ZAPOSLENIK_ID HAVING ZAPOSLENIK_ID = 5;


--svi pregledi za korisnik ID OK, U DOKTOR/FUNKCIJE SE NALAZI ,, preko funkcije vratiti tablicu, kao neki parametarski view ili sl.
--TEST ako nema
INSERT INTO AMBULANTA_KORISNIK_ZIVOTINJA(AMBULANTA_KORISNIK_ZIVOTINJA.AMBULANTA_KORZIV_ID, AMBULANTA_KORISNIK_ZIVOTINJA.AMBULANTA_ID, AMBULANTA_KORISNIK_ZIVOTINJA.KORISNIK_ZIVOTINJA_ID)
VALUES (0,6,5);

select A.AMBULANTA_ID AMBULANTA_ID, KZ.ZIVOTINJA_ID ZIVOTINJA_ID, A.AMBULANTA_USLUGA_ID AMBULANTA_USLUGA_ID,A.DATUM DATUM, A.OPIS OPIS  from AMBULANTA_KORISNIK_ZIVOTINJA AKZ join KORISNIK_ZIVOTINJA KZ ON AKZ.KORISNIK_ZIVOTINJA_ID = KZ.KORISNIK_ZIVOTINJA_ID
        JOIN AMBULANTA A ON AKZ.AMBULANTA_ID = A.AMBULANTA_ID WHERE KZ.KORISNIK_ID = 5;





--zakazani pregledi OK

create or replace view zak_pregl as select * from AMBULANTA WHERE DATUM > CURRENT_DATE ORDER BY DATUM ASC;

--TEST jer je datum amb od 2008, na laptopu cu promijeniti datum da radi onaj gore
create or replace view zak_pregl as select * from AMBULANTA WHERE DATUM > to_date('01.01.1000','DD.MM.YYYY') ORDER BY DATUM ASC ;
select * from zak_pregl;


