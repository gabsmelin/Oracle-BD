SELECT P.NOME AS PAIS, 
       E.NOME AS ESTADO,
       C.NOME AS CIDADE,
       B.NOME AS BAIRRO,
       N.NOME AS ENDERECO,
       U.NOME AS CLIENTE 
FROM PAIS P
INNER JOIN ESTADO E ON P.id_pais = E.id_pais
INNER JOIN CIDADE C ON E.id_estado = C.id_estado
INNER JOIN BAIRRO B ON C.id_cidade = B.id_cidade
INNER JOIN ENDERECO N ON B.id_bairro = N.id_bairro
INNER JOIN CLIENTE U ON N.id_endereco = U.id_endereco
WHERE E.id_estado = 2;

SET SERVEROUTPUT ON;
DECLARE
    NOME_PAIS PAIS.NOME%TYPE;
    NOME_ESTADO ESTADO.NOME%TYPE;
    NOME_CIDADE CIDADE.NOME%TYPE;
    NOME_BAIRRO BAIRRO.NOME%TYPE;
    NOME_ENDERECO ENDERECO.NOME%TYPE;
    NOME_CLIENTE CLIENTE.NOME%TYPE;
BEGIN
    SELECT P.NOME, 
           E.NOME, 
           C.NOME, 
           B.NOME, 
           N.NOME, 
           U.NOME
    INTO NOME_PAIS,
         NOME_ESTADO,
         NOME_CIDADE, 
         NOME_BAIRRO,
         NOME_ENDERECO,
         NOME_CLIENTE
    FROM PAIS P
    INNER JOIN ESTADO E ON P.id_pais = E.id_pais
    INNER JOIN CIDADE C ON E.id_estado = C.id_estado
    INNER JOIN BAIRRO B ON C.id_cidade = B.id_cidade
    INNER JOIN ENDERECO N ON B.id_bairro = N.id_bairro
    INNER JOIN CLIENTE U ON N.id_endereco = U.id_endereco
    WHERE E.id_estado = 4;
    
    -- Agora você pode usar os valores selecionados
    DBMS_OUTPUT.PUT_LINE('Endereço Completo: ' || NOME_PAIS || ' - ' || NOME_ESTADO || '(' || NOME_CIDADE || ')');
    DBMS_OUTPUT.PUT_LINE('Bairro: ' || NOME_BAIRRO || ', Rua/Avenida: ' || NOME_ENDERECO || '.');
    DBMS_OUTPUT.PUT_LINE('Esse é o endereço do(a) cliente ' || NOME_CLIENTE || '.');
END;
