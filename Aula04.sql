--SELECT * FROM DADOS_DE_VENDAS WHERE ORDERNUMBER = 10107 AND quantityordered = 27;

SET SERVEROUTPUT ON;
DECLARE 
DADOS_TABELA DADOS_DE_VENDAS.quantityordered%TYPE;
DADOS_TABELA2 DADOS_DE_VENDAS.ORDERNUMBER%TYPE; --%TYPE Pega tipo de dados da table.
BEGIN 
    SELECT quantityordered, ORDERNUMBER INTO DADOS_TABELA,DADOS_TABELA2 FROM 
    DADOS_DE_VENDAS
    WHERE ORDERNUMBER = 10107
    AND quantityordered = 27;

    dbms_output.put_line(DADOS_TABELA);
    dbms_output.put_line(DADOS_TABELA2);
END;

----------------------------------------------------------------------------------------

CREATE TABLE ALUNO(
    NOME    VARCHAR2(100),
    RM      VARCHAR(10)     
);

INSERT INTO ALUNO VALUES ('Gabriel', '550202');
INSERT INTO ALUNO VALUES ('Igor Ferreira', '554546');
INSERT INTO ALUNO VALUES ('Diogo Galina', '382950');
SELECT * FROM ALUNO;


SET SERVEROUTPUT ON;
DECLARE
    DADOS ALUNO.NOME%TYPE; 
BEGIN
    SELECT NOME INTO DADOS FROM ALUNO
    WHERE RM = '550202';
    dbms_output.put_line(DADOS);
END;


SET SERVEROUTPUT ON;
DECLARE
    NOME_NOVO ALUNO.NOME%TYPE := 'Felipe';
BEGIN
    UPDATE ALUNO SET NOME = NOME_NOVO WHERE NOME = 'Gabriel';
    dbms_output.put_line('Nome atualizado');
END;


SET SERVEROUTPUT ON;
DECLARE
    RM_ALUNO ALUNO.RM%TYPE := '550202';
BEGIN
    DELETE FROM ALUNO WHERE RM = RM_ALUNO;
    dbms_output.put_line('Aluno Deletado!');
END;

