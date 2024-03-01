SET SERVEROUTPUT ON;


--EX 01 - ACRESCENTAR 25% AO SALARIO ATUAL
declare
    salario number := 1000;    
    novo_salario salario%type;
    
begin
    novo_salario := salario + salario * 0.25;
    dbms_output.put_line(novo_salario);
    
END;

--EX 02 - CONVERTER DOLAR PARA REAL
declare
    moeda_dolar number := 45;    
    moeda_real number;
    
begin
    moeda_real := moeda_dolar * 5;
    dbms_output.put_line(moeda_real);
    
END;

--EX 03 - CONVERTER DOLAR PARA REAL
declare

    valor_compra number := &VALOR;
    numero_parcelas number := 10;    
    juros number := 0.3;
    valor_total number;
    valor_parcela number;
begin
    
    valor_total := valor_compra + valor_compra * juros; 
    valor_parcela := valor_total/numero_parcelas;  
    dbms_output.put_line(valor_parcela);
    
END;

--EX4
DECLARE
    VALOR_CARRO NUMBER := &VALOR_DO_CARRO;
    PARCELA_6 NUMBER;
    PARCELA_12 NUMBER;
    PARCELA_18 NUMBER;
BEGIN
    VALOR_CARRO := VALOR_CARRO-VALOR_CARRO*0.20;
    
    PARCELA_6 := VALOR_CARRO*1.10;
    PARCELA_12 := VALOR_CARRO*1.15;
    PARCELA_18 := VALOR_CARRO*1.20;
    
    dbms_output.put_line('VALOR A SER FINANCIADO = '|| VALOR_CARRO);
    dbms_output.put_line('6 parcelas = '|| PARCELA_6);
    dbms_output.put_line('12 parcelas = '|| PARCELA_12);
    dbms_output.put_line('18 parcelas = '|| PARCELA_18);
    
END;


SET SERVEROUTPUT ON;
DECLARE
    VALOR_CARRO NUMBER := &VALOR_DO_CARRO;
    PARCELA NUMBER := &VALOR_DO_PARCELA;
    VALOR_DA_PARCELA NUMBER;
BEGIN
    VALOR_CARRO := VALOR_CARRO-VALOR_CARRO*0.20;
    IF PARCELA = 6 THEN
        VALOR_CARRO := VALOR_CARRO * 1.10;
        VALOR_DA_PARCELA := VALOR_CARRO / 6;
        dbms_output.put_line('6 parcelas');
        dbms_output.put_line('VALOR A SER FINANCIADO = '|| VALOR_CARRO);
        dbms_output.put_line('VALOR DA PARCELA = '|| VALOR_DA_PARCELA);
    ELSIF PARCELA = 12 THEN
        VALOR_CARRO := VALOR_CARRO * 1.15;
        VALOR_DA_PARCELA := VALOR_CARRO / 12;
        dbms_output.put_line('12 parcelas');
        dbms_output.put_line('VALOR A SER FINANCIADO = '|| VALOR_CARRO);
        dbms_output.put_line('VALOR DA PARCELA = '|| VALOR_DA_PARCELA);
    ELSIF PARCELA = 18 THEN
        VALOR_CARRO := VALOR_CARRO * 1.20;
        VALOR_DA_PARCELA := VALOR_CARRO / 18;
        dbms_output.put_line('18 parcelas');
        dbms_output.put_line('VALOR A SER FINANCIADO = '|| VALOR_CARRO);
        dbms_output.put_line('VALOR DA PARCELA = '|| VALOR_DA_PARCELA);
    END IF;
END;


--EX 5
DECLARE
    SEXO CHAR := '&SEXO';
BEGIN
    IF SEXO='M' OR SEXO='m' THEN
        dbms_output.put_line('MASCULINO');
    ELSIF SEXO='F' OR SEXO='f' THEN
        dbms_output.put_line('FEMININO');
    ELSE 
        dbms_output.put_line('OUTROS');
    END IF;
END;


--Ex 6
DECLARE
    NUMERO NUMBER(10) := &NUMERO;
BEGIN
    IF MOD(NUMERO, 2) = 0 THEN
        dbms_output.put_line('O Número é Par!');
    ELSIF MOD(NUMERO, 2) = 1 THEN
        dbms_output.put_line('O Número é Impar!');
    END IF;
END;


--Ex 7
SET SERVEROUTPUT ON;
DECLARE
    NUMERO NUMBER(10) := &NUMERO;
BEGIN
    IF NUMERO < 0 THEN
        dbms_output.put_line('O Número é negativo!');
    ELSIF NUMERO >= 0 THEN
        dbms_output.put_line('O Número é positivo!');
    ELSE 
        dbms_output.put_line('Algo deu errado!');
    END IF;
END;


--Ex 8
DECLARE
    nota NUMBER(2) := '&Nota';
BEGIN
    IF nota >= 90 AND nota <= 100 THEN
        dbms_output.put_line('Nota: A');
    ELSIF nota >= 80 AND nota < 90 THEN
        dbms_output.put_line('Nota: B!');
     ELSIF nota >= 70 AND nota < 80 THEN
        dbms_output.put_line('Nota: C!');
     ELSIF nota >= 60 AND nota < 70 THEN
        dbms_output.put_line('Nota: D!');
    ELSIF nota >= 0 AND nota < 60 THEN
        dbms_output.put_line('Nota: F!');
    ELSE
        dbms_output.put_line('Valor da nota passado de forma incorreta!');
    END IF;
END;


--Ex 8
DECLARE
    idade NUMBER(3) := '&idade';
BEGIN
    IF idade >= 0 AND idade < 12 THEN
        dbms_output.put_line('Criança');
    ELSIF idade >= 12 AND idade < 20 THEN
        dbms_output.put_line('Jovem!');
     ELSIF idade >= 20 AND idade < 60 THEN
        dbms_output.put_line('Adulto!');
     ELSIF idade >= 60 AND idade < 90 THEN
        dbms_output.put_line('Idoso!');
    ELSIF idade >= 90 THEN
        dbms_output.put_line('Ancião');
    ELSE
        dbms_output.put_line('Valor da idade passado de forma incorreta!');
    END IF;
END;
