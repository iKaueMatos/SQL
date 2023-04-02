**/CRIANDO UM DATABASE**
CREATE DATABASE nome_tabela;

**//SELECIONANDO TODOS REGISTRO DE UMA TABELA**
SELECT * FROM nome_tabela;

**//SELECIONANDO REGISTRO POR DETERMIANDO VALOR**
SELECT * FROM nome_tabela WHERE nome_Campo = '1';

**//SELECIOANDO REGISTRO PELO INTERVALO ENTRE DUAS DATAS**
SELECT * FROM nome_tabela WHERE nome_campo BETWEEN '01-01-2015' and '31-12-2017';

**//CRIANDO UM REGISTRO DO TIPO ENUM**
CREATE type enum_satisfacao AS enum('muito_satisfeito', 'satisfeito','insatisfeito');
ALTER TABLE compras add column satisfacao enum_satisfacao;

**//ADICIONANDO UMA NOVA COLUNA NA TABELA**
ALTER TABLE nome_tabela add column nome_coluna tipo_dados(11);

**//DELETANDO UM REGISTRO DA DA TABELA**
DELETE * FROM nome_tabela WHERE nome_campo = valor;

**//CONTANDO QUANTIDADE DE REGISTRO DE UMA TABELA**
SELECT COUNT(*) AS quantidade_registros FROM nome_tabela;

**//CALCULANDO A MÉDIA DE REGISTRO DE UM CAMPO**
SELECT AVG(campo_valor) AS media FROM nome_tabela;

**//SOMANDO VALORES DE UM CAMPO**
SELECT SUM(campo_valor) AS total_soma FROM nome_tabela;

**//RECUPERANDO O MENOR VALOR**
SELECT MIN(campo_Valor) FROM nome_tabela;

**//RECUPERANDO O MAIOR VALOR**
SELECT MAX(campo_valor) FROM nome_tabela;

**//ORDENAR REGISTRO POR ORDEM CRESCENTE**
SELECT * FROM nome_tabela ORDER BY nome_campo ASC;

**//ORDENAR REGISTRO POR ORDEM DESCRECENTE**
SELECT * FROM compras ORDER BY id DESC;

**//JUNTANDO INFORMAÇÕES DE 2 TABELAS**
SELECT * FROM tabela_A a JOIN tabela_B b ON a.id_loja = [b.id](http://b.id/);
SELECT * JOIN tabela1 ON tabela1.id_loja = [tabela2.id](http://tabela2.id/);

**//BUSCANDO REGISTRO PELO INTERVALO ENTRE 2 DATAS**
SELECT * FROM table_name WHERE column_name BETWEEN value1 AND value2;

**//CRIANDO INDICES NA TABELA**
CREATE index indice_por_nome ON nome_tabela(collunm);

**//VERIFIAR SE EXISTE INDEX EM UMA TABELA**
show index FROM nome_tabela;

**//MODIFICANDO UMA COLUNA DA TABELA**
ALTER TABLE nome_tabela modify (observacoes varchar2(30) NOT null);