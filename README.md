# SQL Banco de dados

# **O que é SQL?**

- SQL e uma linguagem de banco de dados;
- É um acrônimo de Structured Query Language(linguagem estruturada de consulta);
- E a linguagem para os bancos de dados relacionais(**MySql,PostreSQL,SQL Server**);
- Trabalhamos com ela criando Queries(**INSERT,UPDATE,SELECT**);
- Com esta linguagem podemos criar e manipular DBs;

# SQL X MYSQL

- SQL  e a linguagem e **MySql** e o SGBD(**Sistema gerenciador de banco de dados**);
- Ou seja,**MySql** e um software que gerencia os nossos bancos de dados;
- Enquanto SQL e a linguagem que vamos utilizar para manipular e criar os bancos;

O que e um banco de dados? 

- E onde armazenamos os dados no nosso sistema;
- vamos criar os bancos de dados através da SQL;
- É o **MySql** vai ajudar-nos a gerenciar o banco e os dados;
- O banco de dados possui algumas entidades fundamentais para o seu correto funcionamento, como tabelas;
- As tabelas guardam nossos dados;

# **Principais elementos de um BD**

- **Diagrama do Banco:** E o projeto do banco, parte fundamental e mais avançada, que define o sucesso do projeto;
- **Banco de dados:** A entidade que vai guardar todos os elementos do banco;
- **Tabelas:** A Categoria  dos dados - Basicamente para cada entidade por exemplo Pessoa vai ter uma coluna. **CPF,Nome,idade e etc.**
- **Colunas:** Tipos de informações que precisamos salvar Por exemplo:**CPF,Nome,idade e etc**;
- **Dados**: O dado final entregue pelo usuário;

**Depois da instalação do xamp….**

# **MySQL no terminal(Windows)**

- Para executar situações vamos precisar do MySql no terminal;
- para isso precisamos adicionar o executável do MySql as variáveis de ambiente;
- para conectar no MySql vamos digitar: **mysql -u root**

<aside>
🥷🏾 **Observação:
Todas as instruções que são inseridas na nossa query são escritas com letras maiúsculas e termina sempre com ; Por exemplo** CREATE DATABASE Nome da tabela;

</aside>

# O que e uma tabela?

- E a **entidade** responsável por guardar nossos dados;
- Uma tabela possui colunas;
- As colunas são categorias dos nossos dados:**Nome,profissão,idade**;
- As **colunas** possuem tipos de dados determinados,como:textos,numeros,datas e etc;
- E **atributos**: Não nulo, chave primaria, auto incremento e etc;

# **Comandos para criação do banco de dados e manipulação!**

## **`Banco de dados`**

**`CREATE DATABASE**` **nome do banco**;  - Criação do banco de dados (nome);

**`SHOW DATABASES`**; -Consulta de tabelas no nosso banco de dados;

**`SOURCE`** EXEMPLO.SQL; - Importando um banco de dados pronto;

**`SELECT * FROM`** <nome da tabela>; - Basicamente neste comando estamos selecionando todas as colunas da nossa tabela consequentemente selecionando todos os dados por conta do *** ;**  

**`DROP DATABASE`** <nome do banco>; Ira remover o banco de dados, Após executar esse comando tudo sera excluídos e os dados serão perdidos;  

**`USE` <NOME DO BANCO DE DADOS> -** Esse comando permite acessar nosso banco de dados que queremos utilizar;

**`Executar no terminal …`**

**mysqldump -u root <nome-do-banco>  > NomeDoArquivo.sql  -** Serve para exportar nosso banco de dados;

## `Criação de tabelas e colunas`

**`CREATE TABLE` pessoa (nome  `VARCHAR(100)`,cpf `CHAR(11)`,descrição `MEDIUMTEXT`);** 

***O que esta sendo feito no comando acima?*** basicamente estamos criando uma tabela com o comando  **CREATE TABLE** com nome pessoa, logo em seguida definimos o nome da nossa coluna para a tabela que vai se chamar ***nome***  podemos definir a quantidade de caracteres que vão ser armazenados no nosso banco de dados com o comando **VANCHAR lembrando que  o comando VANCHAR** ira servir como uma camada de segurança a mais para o desenvolvedor back-end.

 ****

<aside>
🥷🏾 Observação sobre **VARCHAR**
Ira definir o espaço de 100 caracteres mesmo sendo somente 4 caracteres que o usuário digitou e foi enviado para nosso banco de dados, contudo devemos ressaltar que ira ocupar mais armazenamento da nossa hospedagem(servidor, nuvem) ou disco rígido(local Storage do próprio usuário).

</aside>

seguindo em frente após definimos o numero de caracteres da nossa coluna, agora vamos definir uma coluna com outro comando do SQL onde aceita strings menores consequentemente otimizando nosso banco de dados o comando **CHAR();** ira armazenar uma quantidade menor de informações mais ira ter o mesmo desempenho do **VANCHAR.**

<aside>
🥷🏾 Comando **MEDIUMTEXT**
Possibilita que uma pessoa seja descrita por exemplo e todas essas informações vão ser armazenadas por bytes

</aside>

**`DROP TABLE**` <nome da tabela> - **Desta forma a tabela sera removida do nosso banco de dados;**

**`Ilustração`**

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/ead70046-fc60-4a7c-9c3f-5fd0f6749341/Untitled.png)

# Tipos de dados

- Os tipos de dados classificam um dado e os inserimos em uma coluna;
- Podemos ter dados como: **Texto,data,numero e outros**;
- E uma **parte extremamente importante da criação do nosso projeto e banco de dados**;
- Alguns dados também permitem limites serem definidos, como quantidade maxima de caracteres;
- São divididos em: **texto,numerico,data e espacial**;

# **Tipos de comandos de texto para banco de dados**

- **`CHAR()`** : Aceita textos com 0 a 255 limite de caracteres;
- **`VARCHAR()`** : Aceita textos com 0 a 65535 limite de caracteres;
- **`TINYTEXT`:** Apenas texto com ate 255 caracteres;
- **`MEDIUMTEXT`:** Apenas texto com até 16777215 caracteres;

<aside>
☕ Observação:
**CHAR** E **VARCHAR** aceitam **números** e caracteres.

</aside>

# Criando a primeira tabela completa para banco de dados passo a passo:

→**Primeiro comando para criar o banco de dados:**

**`CREATE DATABASE**` exemplo_banco;

**→2 Comando para criar a tabela juntamente com seus atributos:**

**`CREATE TABLE`** produtos(nome **`VARCHAR(50)`**,sku **`CHAR(5)`**,informações **`MEDIUMTEXT`**);

# **Criando uma tabela cadastro:**

**`CREATE DATABASE**` cadastro;

**`CREATE TABLE**` usuário cadastro(nome **`VANCHAR(100)`**,Sobrenome **`CHAR(50)`**,Endereço **`VANCHAR(100)`**)

# Inserir dados | Comandos

**`INSERT INTO`** <tabela> (<colunas>)**`VALUES`**(<Valores:exemplo texto,numero e etc>);

`INSERT INTO` → Abre a possibilidade para nós adicionarmos textos ou números no nosso banco de dados diretamente com os comandos;

<aside>
☕ Exemplo inserindo dados em uma tabela de produtos:

**`INSERT INTO`** produtos(**nome,sku,informaçoes)** **`VALUES`(”Playstation 5”,PS5xy,”Video game de ultima geração” )**;

</aside>

- → **noms,sku,informaçoes** = São colunas onde estão sendo selecionadas para inserir os dados que vão ser passados e **`VALUES()`;**

# Tipos numéricos

- Os tipos numéricos não precisam de aspas ao serem inseridos;
- `**BIT()**` : 1 a 64 caracteres;
- **`TINYINT()`** : 1 a 255 caracteres;
- `**BOOL**`: 0 e falso e outros valores são verdadeiros;
- **`INT()`** : Valores entre -2147483648 a 2147483647;

# **Tipos de data**

- **`DATE`**: Aceita uma data no formato YYYY-MM-DD;
- `**DATETIME:**`Aceita uma data com horário no formato YYYY-MM-DDhh:mm:ss;
- **`TIMESTAMP`**:Aceita uma data no formato de DATETIME,porém apenas entre os anos 1970 a 2038;
- As datas também inserimos entre aspas!

### Conseguimos adicionar uma nova coluna na nossa tabela com comando:

- `**ALTER TABLE <nome-da-tabela> ADD COLUMN <nome-da-nova-coluna> <Tipo-da-coluna>;**`

### Para remover uma coluna da nossa tabela usamos o comando:

- **`ALTER TABLE <nome-da-tabela> DROP COLUMN <nome>;`**

### Modificando uma coluna: Lembrando conseguimos modificar o nome e tipo que sera usado:

- **`ALTER TABLE <nome-da-tabela> MODIFY COLUMN <nome-da-coluna>`**

 **`<tipo-da-coluna>`;**

# Comandos do CRUD

<aside>
☕ Significado de **CRUD**:
Create,ruild,update,delete → tradução para português:Criar dados,ler dados,carregar dados,deletar dados.

</aside>

# **O que é CRUD?**

- **CRUD são as ações que mais são utilizadas em todas as aplicações;**
- **Create** = criar/ inserir dados (insert);
- **Read** = ler dados(Select);
- **Update** = atualizar dados (update);
- **Delete** = deletar / remover dados (delete);
- **Toda aplicação web com banco de dados** tem pelo menos uma destas operações e possivelmente todas;

# **Selecionando colunas especificas!**

- **Para selecionar colunas especificar trocamos o * por o nome das colunas, veja:**
- `**SELECT coluna1,coluna2 FROM <tabela>;**`
- Desta maneira **criamos um filtros**, deixando nossa consulta um pouco mais leve;

# A importância do WHERE

- **WHERE** é ****uma clausula de algumas queries,que determina quais registros vamos atualizar;
- por exemplo:**WHERE id = 1**;
- Se não inserimos esta instruções em atualizações ou remoções,vamos aplicar a todos os dados,o que pode ser um enorme problema;
- Então lembre-se sempre de inserir **WHERE** em **UPDATE** e **DELETE**;
- Depois veremos sua aplicação com **SELECT**;

**Como selecionamos um dado de somente um dos nosso clientes com `WHERE`?**

Comando: **`SELECT * FROM produtos WHERE Nome = “kauê”;`**

**Com este comando estamos dizendo que queremos selecionar dentro da nossa tabela a coluna nome que contém “kauê” escrito,desta forma conseguimos obter o retorno de dados mais rápido e diretamente ao ponto que queremos.**

# **Atualizar os dados**

- Para atualizar dados vamos utilizar a instrução **UPDATE**;
- **UPDATE** tabela **SET** <coluna= valor> **WHERE** <Condição>
- Lembre-se de utilizar o **WHERE**;
- Podemos inserir mais colunas, separando elas por **virgula**;

- **Importante comando super perigoso para o banco de dados do mercado:**

`***SET SQL_SAFE_UPDATES = 0;***`

`***UPDATE pessoas SET  limite = 0;***`

**O que estamos fazendo nesse comando ?** Basicamente estamos fazendo um update de um novo dado na nossa coluna selecionando a nossa tabela e passando um nosso valor para a nossa coluna limite que seria o valor **0;**

Com tudo podemos notar que se passarmos esse comando em um banco de dados de uma empresa conseguimos prejudicar todo o sistema, por conta que todos os usuários que estavam com limite ja definido passa a ser igual a 0 para todos eles e partir dai se não tiver um backup do banco de dados iremos perder o acesso a todos os limite ja definidos dos clientes;

 

## Forma correta de atualizar(UPDATE) dados de 1 usuário só

`**UPDATE pessoas SET limite = 10000 WHERE nome = “Kauê”**`;

- Com esse comando estamos fazendo uma atualização no nosso banco selecionando a coluna **limite** e atribuindo um novo valor para coluna nome no usuário **“Kaue”;**

# Deletando apenas um usuário da nossa tabela

**`DELETE FROM produtos WHERE Nome = "Kauê";`**

- Com este comando estamos dizendo que queremos deletar o usuário “’Kauê” da nossa coluna nome sem **deletar** os demais usuários.

## Deletando usuários que tem o limite maior que 1000 reais;

**`DELETE FROM pessoas WHERE limite > 1000;`**

- Com esse comando estamos deletando usuários que tem o limite > que 1000 reais

# **Operadores(>,<,≥,**≤,=**)**

- **Comparação** (>,<,≥,≤,=): Estes operadores vão filtrar dados baseados nas comparações;
- **BETWEEN**: Seleção entre um intervalo;
- **LIKE:** Seleção entre um intervalo;
- **IN:** Seleção entre um conjunto de valores específicos;

# Utilizando o WHERE Para condição (>,<,≥,≤ e =)

*Como podemos selecionarmos uma coluna de uma tabela e ilustrarmos nela se tem um salario que está fora do padrão dos outros funcionários ?com  uma condição? Basicamente podemos fazer isto utilizando a query **WHERE** como filtro com base nisso fazemos uma junção de comando onde um comando ira selecionar a tabela e outro ira selecionar a coluna da tabela;*

Exemplo:`**SELECT * FROM funcionarios WHERE pessoas > 1500;**`

# **Função ORDER BY**

A função order by abre a possibilidade de ordenarmos uma coluna e deixar ela tanto na order crescente quando na ordem decrescente então com  esses comandos que estão aqui em baixo conseguimos fazer algumas coisas na nossa coluna ou ate mesmo tabela;

**ASC** –> Quando utilizada, esta opção faz com que as linhas sejam retornadas em ordem ascendente:**Do** **menor para maior.**

**`SELECT salary FROM salarios ORDER BY ASC LIMIT 6;`**

**DESC** –> Quando utilizada, esta opção faz com que as linhas sejam retornadas em ordem descendente:**Do maior para menor**.

**`SELECT salary FROM salarios ORDER BY DESC LIMIT 6;`**

**LIMIT** → Esta limitando o numero de retorno da tabela desta maneira dizendo que so que 6 resultados sejam exibidos deixando os demais de fora.

# Funções que serão mais utilizadas em números

**COUNT** → Retorna o numero de resultados em uma tabela então se escrevermos o comando a seguir teremos um retorno da quantidade de resultados daquela tabela.

`**SELECT COUNT(*) AS man FROM <TABELA> WHERE gender = “F”;**`

***Desta forma obteremos o resultado da quantidade de homens que tem naquela coluna.***

### **AVG** → Possibilita obtermos a media de salario da nossa coluna ou tabela;

**`SELECT AVG (salary) FROM salaries WHERE  salary > 10000`**; 

### **SUM** →  Retorna a soma de todos os valores numéricos de uma coluna por exemplo:

### ***Função SUM sem a clausula:***

**`SELECT SUM(salary) FROM salaries:`**

### ***Função SUM com a clausula:***

`**SELECT SUM(salary ) FROM salario WHERE salary > 1500;**` 

### **Função LIKE**

O like e utilizado sempre em conjunto do WHERE ele tem a premissa de filtrar ainda mais nossos resultados utilizando também o **coringa %** que ajuda muito nas buscas:

**`SELECT * FROM salaries WHERE kaue LIKE ‘%KE%’;`**

Desta maneira conseguimos filtrar nossos resultados e também falar que queremos somente as pessoas que estão dentro da aspas simples **‘%KER%’** e que contem a palavra **KER** no nome podemos também utilizar uma letra. 

### **Função IN**

A função IN permite que você determine os resultado que vão ser retornados após a verificação da sua coluna.

**`SELECT * FROM names WHERE last_name IN (’KAUE’,MATOS );`**

Desta forma vai ocorrer uma verificação na nossa coluna last_name e ira retornar somente esses 2 resultados que foram definidos dentro do **IN**.

### Função BETWEEN

O **BETWEEN**  e parecido com IN,mas ele vai receber uma faixa de valores e o resultado sera retornado baseado nos registros dentro da faixa, veja:

**`SELECT * FROM dept_emp WHERE dept_no BETWEEN ‘d001’ AND ‘d008’`**;

Neste exemplo retornamos alguns departamentos da **tabela dept_emp** dentro da **coluna dept_no**

vamos retornando valores que tem dentro da tabela do 1 ao 8; 

# **Utilizando ALIAS para criação de apelidos**

O Alias pode servir para renomear uma coluna com nome não objetivo ou colunas originadas de função,por exemplo;

**`SELECT SUM(salary) AS soma_salario FROM salaries;`**

agora a soma dos salários tem o nome de soma_salario o que e muito mais objetivo!  o **AS** e utilizado para determinar como a coluna deve se chamar.

# O que e constraints?

- São regras que determinam como os campos serão preenchidos por exemplo **NOT NULL** = o campo não pode ser nulo;
- As constraints são adicionais na criação da tabela geralmente, porém podemos alterar tabelas para adiciona-las estas regras são de grande utilidade pois ajudam a organizar e padronizar **nosso projeto**;

## Constraints NOT NULL

Basicamente a função  NOT NULL permite que após ela ser inserida em uma coluna na hora na sua criação aquela coluna se torna obrigatória sendo assim não sera permitido adicionar um dado no banco de dados sem adicionar um dado naquela coluna. 

### Exemplo:

`**CREATE DATABASE**` exemplo; 
**`CREATE TABLE`** usuários(

nome **`VARCHAR(20) NOT NULL`**,

idade `INT`,

endereço **`VARCHAR (50)`**,

senha `**INT NOT NULL**`

);

## Constraints UNIQUE

- A constraits UNIQUE  garante que todos os valores em uma coluna serão diferentes;
- Um caso de uso é e-mail,não queremos e-mail duplicados na nossa base desta maneira, recebemos um erro caso o dado ja tenha sido inserido;

### Exemplo:

`**CREATE DATABASE**` exemplo; 
**`CREATE TABLE`** usuários(

nome **`VARCHAR(20) NOT NULL`**,

idade `INT`,

endereço **`VARCHAR (50)`**,

email `**VARCHAR(30) UNIQUE`,**

senha `**INT NOT NULL**`

);

## Constraints **ADD PRIMARY KEY**

- A constraint PRIMARY KEY só pode ser adicionada em uma unica coluna da tabela,geralmente e o id;
- O valor deve ser único e não pode ser nulo podemos dizer que e um **identificador único de um registro na tabela;**

### Exemplo:

`**CREATE DATABASE**` exemplo; 
**`CREATE TABLE`** usuários(

nome **`VARCHAR(20) NOT NULL`**,

idade `INT`,

endereço **`VARCHAR (50)`**,

email `**VARCHAR(30) UNIQUE`,**

senha **`INT NOT NULL`,**

**`PRIMATY KEY`**(id)

);

<aside>
☕ Lembre-se desta forma o id não sera auto incrementado ou adicionado automaticamente!

</aside>

contudo quando criamos um chave **PRIMARY KEY** abre a possibilida de alterarmos uma coluna sem precisar selecionar a tabela de fato e ir até ao local que queremos alterar o dado! apenas com esse comando:

## Exemplo:

**`UPDATE produtos SET sku = ”12345” WHERE id=2;`**

Com esse comando estamos dizendo que queremos alterar um dado que esta na chave PRIMARY que tem o id = 2; então que seja o 2 produto da tabela;

<aside>
☕ Adicionando um **PRIMARY KEY AUTO_INCREMENT**

</aside>

### Exemplo 2 AUTO_INCREMENT:

`**CREATE DATABASE**` exemplo; 
**`CREATE TABLE`** usuários(

id **`INT PRIMATY KEY AUTO_INCREMENT NOT NULL` ,**

nome **`VARCHAR(20) NOT NULL`**,

idade `INT`,

endereço **`VARCHAR (50)`**,

email `**VARCHAR(30) UNIQUE`,**

senha **`INT NOT NULL`,**

);

Desta a chave primary sera adicionada automaticamente após adicionarmos um produto novo na tabela por exemplo !

A constrait **`AUTO INCREMENT`** serve para adicionar a quantidade de um em todo registro adicionado esta constraint e muito utilizada na coluna id,ja que ela e unica e também chave primaria então não precisamos nos preocupar com este valor no **`INSERT`**.

### Exemplo DELETE ID:

`**CREATE DATABASE**` exemplo; 
**`CREATE TABLE`** usuários(

id **`INT PRIMATY KEY AUTO_INCREMENT NOT NULL` ,**

nome **`VARCHAR(20) NOT NULL`**,

idade `INT`,

endereço **`VARCHAR (50)`**,

email `**VARCHAR(30) UNIQUE`,**

senha **`INT NOT NULL`,**

**`DELETE FROM`** endereço **`WHERE`** id =3;

);

# FOREIGN KEY

- A **FOREIGN KEY**  é uma ligação de uma tabela a outra;

<aside>
☕ Por exemplo: Uma tabela cadastramos o usuario e em outra o endereço  dele na tabela do endereço temos uma FOREIGN KEY  que se refere a o id do usuario desta maneira conseguimos **impedir remoções de dados que tem ligação entre as tabelas.**

</aside>

Exemplo: 

`**CREATE DATABASE**` 

**`CREATE TABLE`** pessoas(

id **`INT PRIMATY KEY AUTO_INCREMENT NOT NULL` ,**

nome **`VARCHAR(20) NOT NULL`**,

idade `**INT**`,

endereço **`VARCHAR (50)`**,

email `**VARCHAR(30) UNIQUE`,**

senha **`INT NOT NULL`,**

);

**`CREATE  TABLE`** enderecos(

id **`INT PRIMARY KEY AUTO_INCREMENT NOT NULL`**,
rua **`VARCHAR(100)`**,
numero `**VARCHAR (10)**`,
pessoas_id **`INT NOT NULL`**,
**`FOREIGN KEY`** (pessoas_id) **`REFERENCES`** pessoas(id)

);

# INDEX

- Adicionar um índice a uma coluna faz a consulta que envolva a mesma se tornar mais rápida;
- sem o índice a consulta começa da primeira a ultima coluna ate encontrar que você precisa com o índice as demais serão ignoradas;
- As consultas que são melhoradas pelo `**INDEX`** são as com `**WHERE;**`

# O que e um JOIN ?

- São consultas que envolvem duas ou mais tabelas
- As tabelas geralmente possuem relação entre si
- Temos então uma consulta mais complexa e com mais dados
- Há três tipos mais utilizados de JOIN
- LEFT E RIGHT JOIN
- INNER JOIN

# INNER JOIN

- O INNER JOIN vai resultar nas colunas que fazem relação entre as tabelas;
- Podemos determinar qual coluna resgatar após a instrução SELECT  Utilizamos a instrução ON  para determinar as colunas que precisam ser iguais.

### Exemplo → Criando tabela;

`**CREATE DATABASE employees;**`

`**USE employees**`

`**CREATE TABLE Funcionario (id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,**`

`**nome VARCHAR(50),**`

`**idade INT);**`

`**INSERT INTO CLIENTE (nome,idade) VALUES(’kaue de matos oliveira’,19);**`

`**CREATE TABLE Departamento (id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,**`

`**Ano_entrada DATE,**`

`**Ano_saida DATE,**`

`**Salario FLOAT);**`

`**INSERT INTO Departamento (Ano_entrada,Ano_saida,Salario) VALUES (2001-10-21,2041-10-21,1000000000);**`

# JOIN → Junção de tabelas

`**SELECT Funcionario.nome,Funcionario.idade,**`

`**Departamento.Ano_entrada,Departamento.Ano_saida FROM Funcionario**` 

`**INNER JOIN Departamento  ON [Funcionario.id](http://Funcionario.id) = [Departamento.id](http://Departamento.id) WHERE**` 

**`Funcionario.idade > 10;`**

### Explicação:

No código acima podemos perceber a junção de tabelas que esta sendo feita pela notação de ponto basicamente selecionamos a tabela e logo em seguida a coluna que queremos exibir os dados delimitando um limite para junção da nossas tabelas, logo em seguida fazemos o mesmo processo com a próxima tabela que ira ocorrer a junção de dados, Após isso informamos qual e a tabela pai no caso a tabela que informamos no começo do código com a função INNER JOIN  delimitamos a tabela que queremos juntar com a tabela pai ao mesmo tempo temos que informar com o que exatamente ela ira fazer essa junção que no caso seria por meio do ID de cada tabela nesse ponto fazemos um método de comparação.

## Temos também o método de junção somente do excesso de dados da esquerda  e direita com comando LEFT JOIN OU RIGHT JOIN

`**SELECT employees.first_name,employees.last_name,salaries.salary AS salario
FROM employees
LEFT JOIN salaries
ON employees.emp_no = salaries.emp_no;**`

`**SELECT employees.first_name,employees.last_name,salaries.salary AS salario
FROM employees
RIGHT JOIN salaries
ON employees.emp_no = salaries.emp_no;**`

O intuito em si e o mesmo o que muda e que vai trazer somente os dados da tabela da esquerda então por exemplo vamos fazer um join de nomes de funcionário que seria o nome e o sobrenome e juntar isso com o salario, sê quisermos limitar o acesso de dados dos funcionários basicamente vamos utilizar o LEFT JOIN  que vai trazer so metade dos dados que vão ser utilizados na tabela de consulta.

# Comando de junção de varias tabelas com JOIN

`**SELECT employees.first_name,salaries.salary,titles.title**` 

`**FROM employees INNER JOIN salaries**`

`**ON  employees.emp_no = salaries.emp_no**` 

`**INNER JOIN titles**` 

`**ON  employees.emp_no = titles.emp_no**` 

`**WHERE salaries.salary > 12500;**` 

# **O que e UNION?**

- O union e utilizado para combinar o resultado de dois ou mais selects;
- As colunas precisam ter o mesmo nome;
- Os resultados serão agregados em uma coluna porem so podemos selecionar mais de uma coluna por vez;
- Não pode trazer resultados duplicados;

**Comando:**

`SELECT **Alunos_no**  FROM **Escola**  UNION`

`SELECT **Alunos_no** FROM **Mario_Toledo;**`  

# UNION ALL

- O UNIAO ALL  e utilizado para combinar o resultado de dois ou mais SELECTS;
- As colunas precisam ter o mesmo nome;
- Os resultados serão agregados em uma coluna so ! porem podemos selecionar mais de uma coluna por vez;
- **Pode trazer resultados duplicados!;**

**Comando exemplo:**

`SELECT **nm_nome** FROM **funcionarios** UNION`

`SELECT **nm_sobrenome** FROM **funcionarios**;`

[SQL - CODIGO](https://www.notion.so/SQL-CODIGO-fea91e6d93aa422d9fc689f007ce7252)

# CASE

O objetivo principal do case e fazer teste em uma ou mais condições 

**WHEN → QUANDO**

**THEN → ENTÃO**

**Exemplo:**

`**SELECT NOME,PRECO_LISTA AS Preco_total,
CASE
WHEN PRECO_LISTA >= 3000000 THEN 'PRODUTO CARO'
WHEN PRECO_LISTA >= 4000000 AND PRECO_LISTA < 12 THEN 'PRODUTO EM CONTA'
ELSE 'PRODUTO BARATO'
END AS STATUS_PRECO FROM tbproduto;**`

# O que é o  GROUP BY

- O GROUP BY serve para agruparmos colunas e checarmos quantidades de determinados elementos;
- Por ex:Quantos programadores ou designers existem no nosso banco;
- Então agrupamos as colunas somando elas e temos o resultado de grupos;

**Comando exemplo:**

`**SELECT gender,COUNT(gender) AS ‘Qtd por genero’**`

`**FROM employees GROUP BY gender;**`

**Exemplo 2:**

`**SELECT NOME,EMBALAGEM,SUM(PRECO_LISTA) AS Preco_total FROM tbproduto
WHERE EMBALAGEM = 'Garrafa' GROUP BY NOME,EMBALAGEM;**`

# O que é o HAVING ?

- O **HAVING** e semelhante ao **WHERE**;
- Porém vamos utilizar eles com aggregate **functions(SUM,AVG,GROUP BY)**,pois o **WHERE** não pode ser utilizado nestes casos;
- Então sempre que estamos utilizando uma destas funções de agregação de dados, precisamos optar pelo **HAVING**;

<aside>
🌏 **Basicamente a função HAVING facilita  a implementação de clausulas para retornar uma determinado resultado da tabela que foi agrupado;**

</aside>

**Comando exemplo:**

`**SELECT title,COUNT(title) AS 'titulos'
FROM titles
GROUP BY title
HAVING COUNT(title) > 1000000;**`

# Conhecendo a SUBQUERY

- Subquery e uma query dentro de outra query;
- Teremos mais comumente dois SELECTS;
- A subquery em alguns casos se parece muito com um JOIN;
- Porem as vezes precisamos de algo mais especifico,então fazer uma subconsulta pode se tornar mais pratico do que um JOIN;

**Exemplo:**

`**SELECT
(SELECT ADDDATE("1990-09-01", INTERVAL 10 DAY) FROM tbcliente WHERE CPF = '1471156710') AS nova_data1,
(SELECT ADDDATE("2000-02-12", INTERVAL 10 MONTH) FROM tbcliente WHERE CPF = '19290992743') AS nova_data2;**`

## ADDDATE()

- Adiciona um intervalo de 10 dias na data em que esta sendo inserido
- Também e possivel acresentar anos na data ou ate mesmo meses

**Exemplo:**

`**SELECT ADDDATE("1990-09-01",INTERVAL 10 DAY)**`

 `**FROM tbcliente WHERE**` 

`**CPF = 1471156710;**`

**Anos**

`**SELECT ADDDATE("1990-09-01",INTERVAL 10 YEAR)**`

 `**FROM tbcliente WHERE**` 

`**CPF = 1471156710;**`

**Meses**

`**SELECT ADDDATE("1990-09-01",INTERVAL 10 MONTHS)**`

 `**FROM tbcliente WHERE**` 

`**CPF = 1471156710;**`

PDF com funções de DATE()

[Funções de manipulação de data no MySQL 5.5.pdf](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/60813fd2-bed5-4927-ae12-946c1c0df70e/Funes_de_manipulao_de_data_no_MySQL_5.5.pdf)
