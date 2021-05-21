--Exercício 1.2
DECLARE
  altura_Chico NUMBER DEFAULT 1.50;
  altura_Juca NUMBER DEFAULT 1.48;
  perc_cresc_Chico NUMBER DEFAULT 0.03;
  perc_cresc_Juca NUMBER DEFAULT 0.02;
  qtde_anos NUMBER DEFAULT 0;
BEGIN
  WHILE altura_Juca <= altura_Chico LOOP
        qtde_anos := qtde_anos + 1;
        altura_Chico := altura_Chico + altura_Chico * perc_cres_Chico;
        altura_Juca :=  altura_Juca +  altura_Juca * perc_cresc_Juca;
    END LOOP;
END;

--Exercício 1.3
ACCEPT n NUMBER PROMPT 'Digite um valor';
DECLARE
   fatorial NUMBER;
   cont NUMBER DEFAULT 0;
BEGIN
   faotrial := &fatorial * (n - 1);
   FOR i IN n..fatorial - 1 LOOP
     IF n >=0 THEN
       cont := cont - 1;
     END IF;
   END LOOP;
   dbms_output.put_line(
   CASE 
     WHEN cont < 0 THEN 'não calcula o fatorial'
   END
   );
     
END;

--Exercício 1.5
ACCEPT n NUMBER PROMPT 'Digite um valor';
DECLARE
i NUMBER;
BEGIN
  i := 1;
  WHILE n = i * (i+1) * (i+2) LOOP
  i := i + 1;
  dbms_output.put_line('&n é triangular');
  END LOOP;
END;