<h1><img src="/public/dog.png" alt="dog" heigth="30" width="30"/> Petshop</h1>

Uma aplicação singlepage desenvolvida utilizando ruby on rails, que lista os dados de um petshop especializada em cachorros.

<hr/>

<h4>Principais tecnologias e bibliotecas utilizadas</h4>

<ul>
  <li><a href="https://github.com/rails/rails">Ruby on rails</a></li>
  <ul>
    <li><a href="https://github.com/rweng/jquery-datatables-rails">JQuery datatable</a></li>
    <li><a href="https://github.com/mislav/will_paginate/">Will paginate</a></li>
  </ul>
  <li><a href="https://www.mysql.com/">Banco de dados Mysql</a></li>
  <li><a href="http://getbootstrap.com/">Twitter Bootstrap</a></li>
</ul>

<hr/>

<h4>Principais características do projeto</h4>

<ul>
  <li>Design simples e arrojado</li>
  <li>A tabela traz os resultados paginados, o que melhora consideravelmente a perfomance da aplicação, principalmente quando há uma quantidade considerável de registros</li>
  <li>Interface intuitiva e padronizada, o que facilita a utilização</li>
</ul>

<hr/>

<h4>TODO</h4>

<ul>
  <li>Melhorar o sistema de busca. Expandir para algo além do sistema padrão de busca da datatable</li>
  <li>Permitir a alteração dos dados cadastrais na mesma tela</li>
</ul>

<hr/>

<h4>Como utilizar a aplicação</h4>

Antes de iniciar o processo, verifique se a versão do ruby on rails instalada é a 5.1.1 ou superior, e se o mysql está instalado e configurado corretamente (padrão usuário root sem senha). Clone o repositório do projeto em sua máquina local, entre no diretório clonado e então, execute o comando para atualizar as dependências do projeto:

```bash
bundle install
```

Após atualizar as gemas, é necessário criar um banco de dados mysql para a aplicação para utilizar, para isso utilize o comando:

```bash
rake db:create
```

Com os bancos criados, agora será necessário executar as migrações do banco com o comando:

```bash
rake db:migrate
```

o arquivo "db/seeds.rb" populará o banco de dados com todas as raças encontradas neste site, e também irá cadastrar 1000 cachorros gerados de forma aleatória. Caso queira popular o banco com um número diferente de cachorros, abra o arquivo "db/seeds.rb" e edite o valor da linha #430 para um valor diferente de 1000.

```bash
# Define o número de cachorros aleatórios que serão gerados
number_dogs = 1000;
```

E então execute o seguinte comando para popular o banco de dados:

```bash
rake db:seed
```

Execute o servidor com o comando:

```bash
rails s
```

Supondo que tudo funcionou bem, abre seu navegador em "localhost:3000" e veja:

<br/>

<img src="/public/tela.png" alt="tela"/>
