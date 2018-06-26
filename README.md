# TRABALHO 01:  EasyMarket
Trabalho desenvolvido durante a disciplina de BD1

# Sumário

### 1. COMPONENTES<br>
Juliana Duarte Arcebi: juliana.acerbi@hotmail.com<br>
Nilzilane Ramos Ricardo Garcia Tosta: naniramosricardo@hotmail.com<br>
Rafaela Amorim Pessin: rafaelapessin@outlook.com<br>
Rebeca Borlini Encarnação: rebecaborlini@gmail.com<br><br>

Grupo de Análise:<br>
Antônio Carlos Durães da Silva: garotoseis@gmail.com<br>
Jennifer de Castro Gonçalves: jenny_cg23@hotmail.com<br>
Joel Will Belmiro: joel-willb@hotmail.com<br>
Larissa Santos da Motta: larissasantosdamotta@gmail.com<br>

### 2. PROPÓSITO DO SISTEMA<br>
>Este documento contém a especificação do projeto do banco de dados e motivação da escolha realizada.

<p align = "justify">O “EasyMarket” é um sistema que traz como principal proposta a informatização parcial ou total de alguns processos dentro de estabelecimentos comerciais, neste caso, supermercados. Os processos alvos de informatização parcial ou total são: Controle de produtos e seus lotes, controle de funcionários, registro de fornecedores e de clientes.

A versão móvel do sistema busca atender a demanda de clientes do estabelecimento, de modo a oferecer-lhes comodidade na palma da mão, por meio de recursos como disponibilização das informações (Nome, preço, unidades) de cada produto adicionado à sua compra, contagem e contabilização dos itens sem a necessidade de passá-los por um operador de caixa, controle de meios de pagamentos como cartão de crédito ou débito. Além disso, há disponível um histórico de compras com informações dos produtos adquiridos e estabelecimento, o que possibilita acompanhar quanto e com que itens suas economias estão sendo gastas em cada supermercado.

Dessa forma, o estabelecimento desfrutará não só do controle de suas mercadorias mas também de informações de seus colaboradores, clientes e fornecedores, em um único sistema.</p>

### 3. MINI-MUNDO<br>
>Descrever o mini-mundo! (Não deve ser maior do que 30 linhas) 
>Entrevista com o usuário e identificação dos requisitos.
>Descrição textual das regras de negócio definidas como um subconjunto do mundo real cujos elementos são propriedades que desejamos incluir, processar, armazenar, gerenciar, atualizar, e que descrevem a proposta/solução a ser desenvolvida.

<p align = "justify">
    O estabelecimento opera revendendo produtos adquiridos de um fornecedor ou comercializando itens de fabricação própria para clientes.
    
Todo funcionário do estabelecimento deve ser registrado com informações pessoais como CPF, data de nascimento, nome, sexo, um endereço e, pelo menos, uma forma de contato, além do cargo e setor em que trabalha.

Sempre que um produto novo, nunca vendido antes pelo supermercado, for adquirido de algum fornecedor ou confeccionado para venda aos clientes, ele deve ser registrado com sua categoria, código de barras, custo, marca, nome, preço de venda, quantidade na prateleira, quantidade no estoque, além de poder ter uma descrição.

Para facilitar a comunicação com seu(s) fornecedor(es), o supermercado necessita do registro do nome, endereço, pelo menos um meio de contato (e-mail, celular, telefone fixo), além de armazenar o CNPJ de quem lhe fornece mercadorias.

Quando o supermercado negocia com algum fornecedor, ele costuma adquirir um ou mais lotes de produtos. Informações sobre os lotes dos produtos como a data de fabricação, data de compra, data de validade e seu número de identificação, são bastante relevantes, pois caso algum item venha apresentar problemas de fabricação, por exemplo, é por meio do lote do produto que outras unidades serão identificadas e retiradas de circulação.

Durante a compra, o cliente do supermercado deve escolher os produtos desejados e colocá-los no carrinho. Ao final da compra, se todas informações de pagamento do cliente estiverem corretas, então basta que ele escolha um cartão de crédito ou débito e realize o pagamento. Se o pagamento foi feito sem problemas, o cliente receberá uma nota fiscal eletrônica em seu e-mail e poderá consultar qual, quantas unidades e preço de cada produto comprado, além de saber a data, hora e em qual supermercado a compra foi realizada.

Para o supermercado conhecer melhor as preferências e a proximidade com seus compradores, espera-se registrar informações pessoais (CPF, data de nascimento, nome, sexo, um endereço) de seus clientes, além de um ou mais meios de contatos e seu(s) cartão(ões) usados para pagar suas compras.
</p>

<b> REQUISITOS </b>
- RF001: O sistema deve registrar os clientes (pessoa física) do estabelecimento
- RF002: O sistema deve auxiliar os clientes no controle de seus meios de pagamentos
- RF003: O sistema deve auxiliar o estabelecimento no controle de seus funcionários
- RF004: O sistema deve auxiliar o estabelecimento no controle de seus fornecedores
- RF005: O sistema deve auxiliar o estabelecimento no controle de produtos e lotes adquiridos
- RF006: O sistema deve auxiliar os clientes no controle de suas compras
- RF007: O sistema deve requisitar o débito do valor da compra na conta do cliente
- RF008: O sistema deve reduzir o número de produtos no estoque a cada compra do cliente
- RF009: O sistema deve gerar nota fiscal após o cliente efetuar a compra
- RF010: O sistema deve atualizar o histórico de compra após o cliente efetuá-la

### 4. MOCKUPS<br>

<a href="https://github.com/rfidmarket/trab01/blob/master/prototipos_NOVOS/Easy_Market_Desktop_2.0.pdf">EasyMarket Desktop</a><br>
<a href="https://github.com/rfidmarket/trab01/blob/master/prototipos_NOVOS/Prototipo_easy_market_CEL.pdf">EasyMarket Mobile</a><br>

#### 4.1 TABELA DE DADOS DO SISTEMA:

<a href="https://github.com/rfidmarket/trab01/blob/master/arquivos/Tabela%20de%20dados%20-%20BD.xlsx">Tabela</a><br>

#### 4.2 QUAIS PERGUNTAS PODEM SER RESPONDIDAS COM O SISTEMA PROPOSTO?
>a) O sistema proposto poderá fornecer quais tipos de relatórios e informaçes?<br>
>b) Crie uma lista com os 10 principais relatórios que poderão ser obtidos por meio do sistema proposto! 
    
É de grande relevância para o estabelecimento ter os seguintes relatórios acessíveis:
* Quais são os produtos com a data mais próxima do vencimento?<br>
-Inclui informações como: Nome do produto e data de validade.<br>

* Quais são os produtos mais vendidos?<br>
-Inclui informações como: Nome do produto, Número de vendas e Data de intervalo  (produtos mais vendidos nos últimos 15 dias, por exemplo).<br>

* Quais são os clientes que mais consumiram?<br>
-Inclui informações como: Nome do cliente, Número indicando valor gasto e Data de intervalo.<br>

* Qual é a média de consumo por cliente?<br>
-Inclui informações como: Número indicando valor gasto e Data de intervalo.<br>

* Qual é o dia da semana mais lucrativo?<br>
-Inclui informações como: Dia da semana, Data de intervalo e Soma de ganhos nesse dia da semana.<br>
-Exemplo: Nos últimos 30 dias foram vendidos R$65000 nas quartas-feiras (dia mais lucrativo).<br>

* Qual é o tipo de produto mais comprado (maior número de unidades vendidas) em cada dia da semana?<br>
-Exemplo: Nos últimos 30 dias, nas quartas-feiras foram vendidos 10000 unidades de verduras; nas quintas-feiras, 20000 produtos de limpeza, ...<br>

* Quais são as datas do ano mais lucrativas?<br>
-Inclui informações como: Data, Dia da semana, Data de intervalo e Ganho nessa data.<br>
-Exemplo: Em 12/10 (Dia das crianças), sexta-feira, em 2018, foi vendido R$200 mil.<br>

* Qual o meio de pagamento mais utilizado?<br>
-Inclui informações como: Meio, Número de usuários e Data de intervalo.<br>
-Exemplo: Nos últimos 6 meses, PayPal foi mais usado, com 800 usuários.<br>

* Qual o meio de pagamento mais lucrativo?<br>
-Inclui informações como: Meio, Ganhos e Data de intervalo.<br>

>## Marco de Entrega 01 em: (02/04/2018)<br>

### 5.MODELO CONCEITUAL<br>
    A) NOTACAO ENTIDADE RELACIONAMENTO 
        * Para nosso prótótipo limitaremos o modelo conceitual nas 6 principais entidades do escopo
        * O protótipo deve possui no mínimo duas relações N para N
        * o mínimo de entidades do modelo conceitual será igual a 5
        
![Alt text](https://github.com/rfidmarket/trab01/blob/master/arquivos/modeloConceitual.png "Modelo Conceitual")
    
    B) NOTACAO UML (Caso esteja fazendo a disciplina de analise)
 
![Alt text](https://github.com/rfidmarket/trab01/blob/master/images/diag_classe.png "Diagrama de Classes")

    C) QUALIDADE 
        Garantir que a semântica dos atributos seja clara no esquema
        Criar o esquema de forma a garantir a redução de informação redundante, possibilidade de valores null, 
        e tuplas falsas
    
        
    
#### 5.1 Validação do Modelo Conceitual
Grupo01 - [estacIonA](https://github.com/CasaInteligenteBD1/trab01gv): Adreâgelo, Anne, Caike, Emanuel.<br>
Grupo02 - [CASA INTELIGENTE](https://github.com/CasaInteligenteBD1/trab01_ci): Juliana, Nilzilane, Rafaela, Rebeca.<br>

#### 5.2 DECISÕES DE PROJETO

* Pessoa: No modelo conceitual optamos na decisão do projeto em não distinguir supermercado de fornecedor, ademais, as informações referentes ao endereço da mesma estará na tabela pessoa.
* Obs. 1: Foi estabelecido que vários clientes podem utilizar um mesmo cartão.
* Obs. 2: Foi estabelecido que um cliente pode utilizar vários cartões.
* Obs. 3: Optou-se em dividir entidade pessoa jurídica em supermercado , mas não em fornecedor, já que um fornecedor não tem campos que o diferencie de uma pessoa jurídica.<br>
* Obs. 4: Foi aceita a sugestão do software de modelagem “brModelo”, de unificar a entidade Pessoa com a entidade Endereço.<br>

TABELA: CONTATO <br>
* Campo id: é um atributo determinante, possui a função de ser um identificador único do contato.<br>
* Campo tipo: é um atributo simples, Tem como função descrever o tipo de contato(e-mail, telefone, facebook e etc) da pessoa, fornecedor ou do supermercado.<br>
* Campo descricao: é um atributo simples, insere os tipos de contatos, informando o telefone e/ou email e assim por diante .<br>

TABELA: SUPERMERCADO<br>
* Campo unidade: é um atributo simples e identifica a unidade que este supermercado pertence , ex: CARONE - CENTRO DE VILA VELHA.<br>
* Campo latitude: é um atributo simples e representa a localização mais exata do supermercado dentro do mapa (plano cartesiano).<br>
* Campo longitude: é um atributo simples e representa a localização mais exata do supermercado dentro do mapa (plano cartesiano).<br>

TABELA: COMPRA<br>
* Campo preco_compra: é um atributo simples e representa o preço do produto no momento da compra, haja visto que o preço de um produto varia com o tempo.<br>


TABELA: HIST_COMPRA<br>
* Campo timestamp: é um atributo simples e identifica a data em que a compra foi efetuada, para eventuais consultas.<br>


TABELA: PRODUTO <br>
* Campo quant_dispon: é um atributo simples, e recebe um valor que será obtido através de um cálculo , e irá informar a quantidade de produtos disponíveis (estoque + prateleira) .<br>
* Campo custo: é um atributo simples e informa o custo de fábrica do produto.
* Campo preco: é um atributo simples e tem o objetivo de informar o preco que o mesmo será vendido.<br>
* Campo quant_prateleira: é um atributo simples, irá dizer a quantidade de produtos disponíveis na prateleira.<br>


TABELA: LOTE <br>
* Campo data_compra: é um atributo simples e irá armazenar a data da compra do lote <br>
* Campo quantidade: é um atributo simples e informa a quantidade de produtos que este lote possui .<br>
* Campo validade: é um atributo simples, armazena a validade do lote, haja vista que cada lote pode possuir validades diferentes.<br>



>## Marco de Entrega 02 em: (23/04/2018)<br>
#### 5.3 DESCRIÇÃO DOS DADOS 
    [objeto]: [descrição do objeto]
    
    EXEMPLO:
    CLIENTE: Tabela que armazena as informações relativas ao cliente<br>
    CPF: campo que armazena o número de Cadastro de Pessoa Física para cada cliente da empresa.<br>

CARTAO: Tabela que armazena dados sobre o cartão de crédito ou débito do cliente.<br>
* autenticacao: Texto que corresponde a senha do cartão (se for de débito) ou código de validação (se for de débito).<br>
* bandeira: Texto que identifica a bandeira do cartão. Exemplo: "Visa".<br>
* nome_titular: Nome do titular responsável pelo cartão. Exemplo: "José da Silva".<br>
* numero: Número que identifica cada cartão de crédito ou débito. Exemplo: 5453010000066167.<br>
* tipo: Palavra que identifica o tipo do cartão, se é crédito ou débito.<br>
* validade: Data de validade do cartão, indica a data que o cartão expira. Exemplo: “01/06/2019”.<br>

COMPRA: Tabela que armazena dados sobre o ato de uma compra. Contém preço dos produtos comprados e quantidades.<br>
* preco_compra: Número flutuante que representa o preço de um produto no momento da compra.<br>
* quant: Número inteiro que representa o número de unidades vendidas de um produto na compra.<br>

CONTATO: Tabela que armazena dados sobre diversos tipos de contato.<br>
* descricao: Texto com o conteúdo do contato propriamente dito. Exemplo: “3228-6125” (para o tipo “telefone”).<br>
* tipo: Texto que informa qual domínio do contato. Exemplo: “telefone”, “celular”, “email”.<br> 

JURIDICA: Tabela que armazena dados sobre o uma pessoa jurídica (supermercado ou fornecedor).<br>
* CNPJ: Número que corresponde ao registro de Cadastro Nacional de Pessoa Jurídica do fornecedor. Exemplo: “17.181.538/0001-42”.<br>
OBS: É possivel saber se uma pessoa jurídica é um fornecedor ou supermercado, verificando se o id da pessoa jurídica está na entidade supermercado, se tiver a pessoa jurídica é um supermercado, senão é um fornecedor.

FUNCIONÁRIO: Tabela que armazena dados sobre os funcionários do supermercado.<br>
* cargo: Texto que identifica a profissão ocupada por um funcionário dentro de um setor. Exemplo: “Repositor”.<br>
* CPF: Número único que identifica uma pessoa física. Exemplo: “003.728.136-59”.<br>
* setor: Texto que indica o departamento em que o funcionário trabalha. Exemplo: “Almoxarifado”.<br>

HIST_COMPRA: Tabela que armazena dados sobre um histórico de compras de um cliente.<br>
* timestamp: Estampa de tempo que representa a data (dia, mês e ano) e a hora (hora, minuto, segundos) em que a compra foi realizada. Exemplo: “21/05/2017 – 17:40:30”.<br>
* valor: Número flutuante que representa o valor total gasto pelo cliente na compra. Exemplo: 732.50.<br>

LOTE: Tabela que armazena dados sobre os lotes (conjunto, aglomerado) dos produtos.<br>
* data_compra: Data que registra o momento da compra. Exemplo: “01/05/2018”.<br>
* data_fabricacao: Data que registra quando o lote foi fabricado. Exemplo: “01/04/2018”.<br>
* numero: Texto que identifica um determinado lote. Exemplo: “038-15/00600”.<br>
* quantidade: Número inteiro que indica quantas unidades do produto cabem no lote.<br>
* validade: Data que registra quando os produtos desse lote expirarão. Exemplo: “10/06/2018”.<br>

PESSOA: Tabela que armazena dados em comum entre pessoas físicas e jurídicas.<br>
* bairro: Texto que corresponde ao bairro da entidade. Exemplo: “Jardim Carapina”.<br>
* CEP: Número que identifica o código de endereçamento postal da pessoa. Exemplo: 29161-699.<br>
* cidade: Texto que indica o município onde a pessoa reside. Exemplo: “Serra”.<br>
* estado: Texto que indica a unidade federativa (UF) onde a pessoa reside. Exemplo: “Espírito Santo”.<br>
* nome: Texto que representa o nome da pessoa. Exemplo: “João Silva” ou “Maria Supermercado”.<br>
* numero: Número que localiza a residência (casa, prédio, etc.) da pessoa. Exemplo: 45.<br>
* rua: Texto que indica a rua ou avenida onde a pessoa reside. Exemplo: “Av. Presidente Dutra”.<br>

PESSOA_FISICA: Tabela que armazena dados intrínsecos a uma pessoa física (cliente ou funcionário do supermercado).
* CPF: Número único que identifica uma pessoa física. Exemplo: “003728136-59”.<br>
* data_nasc: Data que representa a data de nascimento de uma pessoa física. Exemplo: “11/05/1997”.<br>
* genero: É o genero de uma pessoa física ("M" ou "F"). Exemplo: “11/05/1997”.<br>
* login: Texto que representa o nome de usuário que uma pessoa (cliente ou funcionário do supermercado) usa para acessar o * sistema. Exemplo: “faustop@extragood.com”.<br>
* senha: Texto que representa a palavra-chave usada pela pessoa física (cliente ou funcionário) para acessar o sistema. Exemplo: “Aninha1561!”.<br>
OBS: É possivel saber se uma pessoa física é um cliente ou funcionário, verificando se o id da pessoa física está na entidade funcionario, se tiver a pessoa física é um funcionario, senão é um cliente.


PRODUTO: Tabela que armazena dados sobre os produtos que o supermercado dispõe.<br>
* codigo: Número inteiro único que identifica um determinado produto. Exemplo: código 1, identifica o produto de nome “Arroz Juparanã tipo 1 5kg”.<br>
* custo: Número flutuante que representa o preço que o supermercado pagou pela unidade do produto.<br>
* descricao: Texto que guarda uma descrição de um produto, área destinada para observações e outras informações descritivas. Exemplo: “Arroz orgânico produzido por famílias nativas da região Amazônica”.<br>
* estoque: Número inteiro que indica quantas unidades de um produto o supermercado tem disponível em estoque.<br>
* marca: Texto que representa a marca comercial de um produto, pode ter o nome do próprio supermercado se o produto for de fabricação própria. Exemplo: “Gola-gola”, marca fabricante de refrigerantes.<br>
* nome: Texto que representa o nome formal do produto. Exemplo: “Arroz Sempé tipo 1 5kg”.<br>
* preco: Número flutuante que representa o preço fixo de venda do produto, é o preço sem promoção ou descontos.<br>
* quant_dispon: Número inteiro que indica a quantidade total disponível de um produto, é a soma da quantidade em estoque com a da prateleira.<br>
* quant_prateleira: Número inteiro que indica quantas unidades de um produto o supermercado tem disponível na prateleira.<br>
* tipo: Texto que indica o grupo o qual o produto faz parte. Exemplo: “Sabão em pó Homo Sapiens” é do tipo “limpeza”, pois se enquadra na categoria de produtos de limpeza.<br>

SUPERMERCADO: Tabela que armazena dados sobre o supermercado.<br>
* latitude: Número flutuante negativo ou positivo que junto à longitude identifica a localização do supermercado em um mapa (plano cartesiano).<br>
* longitude: Número flutuante negativo ou positivo que junto à latitude identifica a localização do supermercado em um mapa (plano cartesiano).<br>
* nome: Texto que representa o nome da organização. Exemplo: “Eita Supermercados.”.<br>
* unidade: Texto que identifica uma unidade da rede de supermercados. Exemplo: “Anchieta”.<br>

### 6	MODELO LÓGICO<br>
![Alt text](https://github.com/rfidmarket/trab01/blob/master/arquivos/modeloLogico.png "Modelo Lógico")
        

### 7	MODELO FÍSICO<br>
<a href="https://github.com/rfidmarket/trab01/blob/master/arquivos/modeloFisico.sql">Modelo Físico</a><br>   
        
### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
#### 8.1 DETALHAMENTO DAS INFORMAÇÕES
<a href="https://github.com/rfidmarket/trab01/blob/master/arquivos/Inser%C3%A7%C3%B5es.sql">Insert</a><br>   
    

#### 8.2 INCLUSÃO DO SCRIPT PARA CRIAÇÃO DE TABELA E INSERÇÃO DOS DADOS
<a href="https://github.com/rfidmarket/trab01/blob/master/arquivos/EasyMarket.sql">Create_and_Insert</a><br>
       
#### 8.3 INCLUSÃO DO SCRIPT PARA EXCLUSÃO DE TABELAS EXISTENTES, CRIAÇÃO DE TABELA NOVAS E INSERÇÃO DOS DADOS
<a href="https://github.com/rfidmarket/trab01/blob/master/arquivos/Drops%2CCreates%2CInserts">Drops, Creates, Inserts</a><br>
>## Marco de Entrega 03 em: (14/05/2018)<br>

### 9	TABELAS E PRINCIPAIS CONSULTAS<br>
    OBS: Incluir para cada tópico as instruções SQL + imagens (print da tela) mostrando os resultados.<br>
#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>

*SELECT * FROM pessoa;*
<p align="center"><img src="https://github.com/rfidmarket/trab01/blob/master/arquivos/selectAllPessoas.png"></p>

*SELECT * FROM funcionario;*<br>
<p align="center"><img src="https://github.com/rfidmarket/trab01/blob/master/arquivos/SelectAllFuncionario.png"></p>

*SELECT * FROM supermercado;*<br>
<p align="center"><img src="https://github.com/rfidmarket/trab01/blob/master/arquivos/selectAllSupermecado.png"></p>

*SELECT * FROM juridica;*<br>
<p align="center"><img src="https://github.com/rfidmarket/trab01/blob/master/arquivos/SelectAllJuridica.png"></p>

*SELECT * FROM fisica;*<br>
<p align="center"><img src="https://github.com/rfidmarket/trab01/blob/master/arquivos/selectAllFisica.png"></p>


#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 4)<br>

*SELECT * FROM pessoa WHERE id < 27;*<br>
<p align="center"><img src="https://github.com/rfidmarket/trab01/blob/master/arquivos/WHERE1.png"></p>

*SELECT * FROM fisica WHERE genero = 'F';*<br>
<p align="center"><img src="https://github.com/rfidmarket/trab01/blob/master/arquivos/WHERE2.png"></p>

*SELECT * FROM funcionario where setor ilike 'ti';*<br>
<p align="center"><img src="https://github.com/rfidmarket/trab01/blob/master/arquivos/WHERE3.png"></p>

*SELECT * FROM juridica WHERE fk_pessoa  > 95;*<br>
<p align="center"><img src="https://github.com/rfidmarket/trab01/blob/master/arquivos/WHERE4.png"></p>

#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E TABELAS OU CAMPOS RENOMEADOS (Mínimo 11)
    a) Criar 5 consultas que envolvam os operadores lógicos AND, OR e Not
    
--Pegue os dados de todos funcionários que sejam gerentes ou repositores;<br>
*select p.nome, fis.genero, fun.cargo, fun.setor, fis.cpf
from pessoa as p inner join fisica as fis on p.id = fis.fk_pessoa
inner join funcionario as fun on fis.fk_pessoa = fun.fk_pessoa_fisica
where cargo ilike 'gerente' or cargo ilike '%repositor%';*<br>
<p align="center">
  <img src="https://github.com/rfidmarket/trab01/blob/master/images/LOGICO1.png"></p>

--Pegue os dados de todos funcionários que não sejam gerentes;<br>
*select * from funcionario where not cargo ilike 'gerente';*<br>
<p align="center">
  <img src="https://github.com/rfidmarket/trab01/blob/master/images/LOGICO2.png"></p>

--Pegue os dados de todos as publicitárias;<br>
*select p.nome, fis.genero, fun.cargo, fun.setor, fis.data_nasc, fis.login, fis.cpf
from pessoa as p inner join fisica as fis on p.id = fis.fk_pessoa
inner join funcionario as fun on fis.fk_pessoa = fun.fk_pessoa_fisica
where fun.cargo ilike 'atendente' and fis.genero ilike 'f';*<br>
<p align="center">
  <img src="https://github.com/rfidmarket/trab01/blob/master/images/LOGICO3.png"></p>

--Pegue os dados de todos os técnicos em informática do setor de TI;<br>
*select * from funcionario where cargo ilike 'técnico em informática' and setor ilike 'TI';*<br>
<p align="center">
  <img src="https://github.com/rfidmarket/trab01/blob/master/images/LOGICO4.png"></p>

--Pegue os dados de todos os gerentes do setor administrativo;<br>
*select * from funcionario where cargo ilike 'gerente' and (setor ilike 'administrativo');*<br>
<p align="center">
  <img src="https://github.com/rfidmarket/trab01/blob/master/images/LOGICO5.png"></p>

    b) Criar no mínimo 3 consultas com operadores aritméticos<br>

--Exiba a média de idade das pessoas fisicas de Vila Velha;<br>
*select sum(idades)/count(idades) as "Media Idade Vila Velha"
from (select extract(year from age(now(), data_nasc)) as idades
from fisica as f inner join pessoa as p on f.fk_pessoa = p.id where p.cidade ilike 'vila velha') as idades;*<br>
<p align="center">
  <img src="https://github.com/rfidmarket/trab01/blob/master/images/ARIT1.png"></p>

--Exiba a média de idade de todas pessoas fisicas;<br>
*select sum(idades)/count(idades) "Media idade PF"
from (select * from (select extract(year from age(now(), data_nasc)) as idades from fisica) as idades) as idades;*<br>
<p align="center">
  <img src="https://github.com/rfidmarket/trab01/blob/master/images/ARIT2.png"></p>

--Exiba o número de pessoas (físicas e jurídicas) em Vitória e de outras cidades;<br>
*select
(select count(*) from pessoa where cidade ilike 'vit%') as "Qtd. residentes Vitória",
(select count(*) from pessoa) - (select count(*) from pessoa where cidade ilike 'vit%') as "Qtd. residentes demais cidades";*<br>
<p align="center">
  <img src="https://github.com/rfidmarket/trab01/blob/master/images/ARIT3.png"></p>
    
    c) Criar no mínimo 3 consultas com operação de renomear nomes de campos ou tabelas

--Exiba quantas pessoas físicas moram em Vila Velha;<br>
*select count(colunas) as "Pessoas físicas de Vila Velha" from (
select * from fisica as f inner join pessoa as p on f.fk_pessoa = p.id
where p.cidade ilike 'vila velha') as colunas;*<br>
<p align="center">
  <img src="https://github.com/rfidmarket/trab01/blob/master/images/RENOME1.png"></p>

/\*Exiba o nome, data de nascimento e idade atual (em anos) dos 5 funcionários mais velhos do supermercado*/<br>
*select p.nome as "Nome funcionário",
data_nasc as "Data de nascimento",
extract(year from age(now(), data_nasc)) as "Idade atual do funcionário"
from (funcionario as fun inner join pessoa as p on fun.fk_pessoa_fisica = p.id
inner join fisica as fis on fis.fk_pessoa = p.id)
order by data_nasc asc limit 5;*<br>
<p align="center">
  <img src="https://github.com/rfidmarket/trab01/blob/master/images/RENOME2.png"></p>

/\*Exiba a quantidade de funcionários do sexo feminino e masculino*/<br>
*select (select count(fem) from (select genero
from fisica as fis inner join pessoa as p on fis.fk_pessoa = p.id
inner join funcionario as fun on fun.fk_pessoa_fisica = fis.fk_pessoa
where genero ilike 'f') as fem) as "Funcionários \[FEM]",
(select count(masc) from (select genero
from fisica as fis inner join pessoa as p on fis.fk_pessoa = p.id
inner join funcionario as fun on fun.fk_pessoa_fisica = fis.fk_pessoa
where genero ilike 'm') as masc) as "Funcionários \[MASC]";*<br>
<p align="center">
  <img src="https://github.com/rfidmarket/trab01/blob/master/images/RENOME3.png"></p>
    
#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE E DATAS (Mínimo 12) <br>
*SELECT * FROM supermercado where unidade ilike 'No%';*<br>
<p align="center"><img src="https://github.com/rfidmarket/trab01/blob/master/arquivos/LIKE1.png"></p>

*SELECT * FROM juridica where cnpj like '%0001-3%';*<br>
<p align="center"><img src="https://github.com/rfidmarket/trab01/blob/master/arquivos/LIKE2.png"></p>

*SELECT * FROM fisica where login like '%bol.com.br';*<br>
<p align="center"><img src="https://github.com/rfidmarket/trab01/blob/master/arquivos/LIKE3.png"></p>

*SELECT * FROM pessoa where nome ilike 'BR%';*<br>
<p align="center"><img src="https://github.com/rfidmarket/trab01/blob/master/arquivos/LIKE4.png"></p>

*SELECT * FROM pessoa where rua Ilike 'Av%';*<br>
<p align="center"><img src="https://github.com/rfidmarket/trab01/blob/master/arquivos/LIKE5.png"></p>

*SELECT * FROM pessoa where rua ilike 'Avenida a %';*<br>
<p align="center"><img src="https://github.com/rfidmarket/trab01/blob/master/arquivos/LIKE6.png"></p>

*SELECT * FROM pessoa where bairro ilike '%Praia da %';*<br>
<p align="center"><img src="https://github.com/rfidmarket/trab01/blob/master/arquivos/LIKE7.png"></p>

*SELECT * FROM fisica where DATE_PART('year',AGE(CURRENT_DATE, data_nasc)) > 53;*<br>
<p align="center"><img src="https://github.com/rfidmarket/trab01/blob/201687c733eab6f37815782ad6abd0116533825d/arquivos/DATA1.png"></p>

*SELECT login, data_nasc,cpf,senha,fk_pessoa,genero,AGE(CURRENT_DATE, data_nasc) as idade FROM fisica where DATE_PART('year',AGE(CURRENT_DATE, data_nasc)) > 53;*<br>
<p align="center"><img src="https://github.com/rfidmarket/trab01/blob/201687c733eab6f37815782ad6abd0116533825d/arquivos/DATA2.png"></p>

*SELECT * FROM fisica where EXTRACT('year' FROM data_nasc) > 1996;*<br>
<p align="center"><img src="https://github.com/rfidmarket/trab01/blob/201687c733eab6f37815782ad6abd0116533825d/arquivos/DATA3.png"></p>

*SELECT login, data_nasc,cpf,senha,fk_pessoa,genero, CURRENT_DATE - data_nasc as dias_vida FROM fisica where EXTRACT('year' FROM data_nasc) > 1996;*<br>
<p align="center"><img src="https://github.com/rfidmarket/trab01/blob/201687c733eab6f37815782ad6abd0116533825d/arquivos/DATA4.png"></p>

*SELECT login, data_nasc,cpf,senha,fk_pessoa,genero, EXTRACT('month' FROM data_nasc) as mes_nasc FROM fisica where DATE_PART('year',AGE(CURRENT_DATE, data_nasc)) > 53;*<br>
<p align="center"><img src="https://github.com/rfidmarket/trab01/blob/201687c733eab6f37815782ad6abd0116533825d/arquivos/DATA5.png"></p>

>## Marco de Entrega 04 em: (04/06/2017)<br>
    
#### 9.5	ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br>
#### 9.6	CONSULTAS COM JUNÇÃO E ORDENAÇÃO (Mínimo 6)<br>
        a) Uma junção que envolva todas as tabelas possuindo no mínimo 3 registros no resultado
        b) Outras junções que o grupo considere como sendo as de principal importância para o trabalho
#### 9.7	CONSULTAS COM GROUP BY E FUNÇÕES DE AGRUPAMENTO (Mínimo 6)<br>
#### 9.8	CONSULTAS COM LEFT E RIGHT JOIN (Mínimo 4)<br>
#### 9.9	CONSULTAS COM SELF JOIN E VIEW (Mínimo 6)<br>
        a) Uma junção que envolva Self Join
        b) Outras junções com views que o grupo considere como sendo de relevante importância para o trabalho
#### 9.10	SUBCONSULTAS (Mínimo 3)<br>
### 10	ATUALIZAÇÃO DA DOCUMENTAÇÃO DOS SLIDES PARA APRESENTAÇAO FINAL (Mínimo 6 e Máximo 10)<br>

### 11 Backup completo do banco de dados postgres 
    a) deve ser realizado no formato "backup" 
        (Em Dump Options #1 Habilitar opções Don't Save Owner e Privilege)
    b) antes de postar o arquivo no git o mesmo deve ser testado/restaurado por outro grupo de alunos/dupla
    c) informar aqui o grupo de alunos/dupla que realizou o teste.

### 12	TUTORIAL COMPLETO DE PASSOS PARA RESTAURACAO DO BANCO E EXECUCAO DE PROCEDIMENTOS ENVOLVIDOS NO TRABALHO PARA OBTENÇÃO DOS RESULTADOS<br>
        a) Outros grupos deverão ser capazes de restaurar o banco 
        b) executar todas as consultas presentes no trabalho
        c) executar códigos que tenham sido construídos para o trabalho 
        d) realizar qualquer procedimento executado pelo grupo que desenvolveu o trabalho
        
### 13   DIFICULDADES ENCONTRADAS PELO GRUPO<br>
>## Marco de Entrega Final em: (25/06/2018)<br>
        
### 14  FORMATACAO NO GIT: https://help.github.com/articles/basic-writing-and-formatting-syntax/
<comentario no git>
    
##### About Formatting
    https://help.github.com/articles/about-writing-and-formatting-on-github/
    
##### Basic Formatting in Git
    
    https://help.github.com/articles/basic-writing-and-formatting-syntax/#referencing-issues-and-pull-requests
    
    
##### Working with advanced formatting
    https://help.github.com/articles/working-with-advanced-formatting/
#### Mastering Markdown
    https://guides.github.com/features/mastering-markdown/



    

    
### OBSERVAÇÕES IMPORTANTES

#### Todos os arquivos que fazem parte do projeto (Imagens, pdfs, arquivos fonte, etc..), devem estar presentes no GIT. Os arquivos do projeto vigente não devem ser armazenados em quaisquer outras plataformas.
1. Caso existam arquivos com conteúdos sigilosos, comunicar o professor que definirá em conjunto com o grupo a melhor forma de armazenamento do arquivo.

#### Todos os grupos deverão fazer Fork deste repositório e dar permissões administrativas ao usuário deste GIT, para acompanhamento do trabalho.

#### Os usuários criados no GIT devem possuir o nome de identificação do aluno (não serão aceitos nomes como Eu123, meuprojeto, pro456, etc). Em caso de dúvida comunicar o professor.


Link para BrModelo:<br>
http://sis4.com/brModelo/brModelo/download.html
<br>


Link para curso de GIT<br>
![https://www.youtube.com/curso_git](https://www.youtube.com/playlist?list=PLo7sFyCeiGUdIyEmHdfbuD2eR4XPDqnN2?raw=true "Title")


