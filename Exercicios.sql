1- Construa uma consulta (SELECT) que retorne somente os campos nm_sobrenome e dt_criacao para os usuários que possuem nome igual a Netuno.

`SELECT nm_nome,nm_sobrenome,dt_criacao FROM usuarios WHERE  nm_sobrenome = ‘netuno’;



2- Construa uma consulta (SELECT) que retorne somente os campos cd_usuarios, nm_nome e dt_criacao para os usuários que possuem código igual a 3.

`SELECT cd_usuarios,nm_nome,dt_criacao FROM usuarios WHERE cd_usuarios = 3;`


3- Utilizando um apelido (alias) para a tabela usuarios, efetue uma consulta (SELECT) que retorne todos os registros que possuem código igual a 2.

`**SELECT * FROM usuarios AS pessoas WHERE cd_usuarios = 2;**`


4- Construa uma consulta (SELECT) que indique os usuarios que não possuem sobrenome cadastrado.

**`SELECT * FROM usuarios WHERE sobrenome IS NULL;`**

5- Construa uma consulta (SELECT) que aponte os usuarios que não possuem e-mail cadastrado.

**`SELECT * FROM usuarios WHERE e-mail IS NULL;`**

6- Construa uma consulta (SELECT) que aponte a quantidade de usuarios cadastrados.

**`SELECT COUNT(*) FROM usuarios;`**

7- Construa uma consulta (SELECT) que aponte a quantidade de usuarios cadastrados e que NÃO possuem e-mail.

`**SELECT COUNT(*) FROM usuarios WHERE email IS NULL;**`

8-  Construa uma consulta (SELECT) que aponte a quantidade de usuarios cadastrados e que possuem e-mail.

**`SELECT COUNT(*) FROM usuarios where email = true;`**

9 - Criar uma tabela departamentos com os seguintes atributos:   cd_departamento   nm_departamento   dt_criacao

**`CREATE TABLE departamentos(`**

**`cd_departamento INT PRIMARY KEY AUTO_INCREMENT NOT NULL,`**

**`nm_departamento VARCHAR(50),`**

**`dt_criacao DATE`**

**`);`**
