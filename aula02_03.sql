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



