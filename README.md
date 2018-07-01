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

Para o supermercado conhecer melhor as preferências e a proximidade com seus compradores, espera-se registrar informações pessoais (CPF, data de nascimento, nome, sexo, um endereço) de seus clientes, além de um ou mais meios de contatos e seus cartões usados para pagar suas compras. Somente será aceito cartão (crédito ou débito) como meio principal de pagamento, portanto é importante registrar seu número, nome do titular, bandeira, data de validade e código de verificação.
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
>a) Esta tabela deve conter todos os atributos do sistema e um mínimo de 10 linhas/registros de dados.<br>
>b) Esta tabela tem a intenção de simular um relatório com todos os dados que serão armazenados
e deve ser criada antes do modelo conceitual<br>
>c) Após criada esta tabela não deve ser modificada, pois será comparada com os resultados finais na conclusão do trabalho

<a href="https://github.com/rfidmarket/trab01/blob/master/arquivos/Tabela%20de%20dados%20-%20BD.xlsx">Tabela</a><br>

#### 4.2 QUAIS PERGUNTAS PODEM SER RESPONDIDAS COM O SISTEMA PROPOSTO?
>a) O sistema proposto poderá fornecer quais tipos de relatórios e informaçes?<br>
>b) Crie uma lista com os 10 principais relatórios que poderão ser obtidos por meio do sistema proposto! 
    
É de grande relevância para o estabelecimento ter os seguintes relatórios acessíveis:
* Quais são os lotes que vencerão entre a data atual e uma X (data futura)?<br>
-Inclui informações como: Nome do produto, data de validade, dias restantes, identificador do lote.<br>
-Exemplo: O lote 12345, de Arroz Tia Jô 5kg, vencerá entre 26/06/2018 e 26/07/2018, tem 30 dias restantes.<br>

* Quais são os N produtos mais vendidos entre a data X e a data Y?<br>
-Inclui informações como: Código do produto, nome do produto, marca, categoria, número de vendas.
-Se o usuário não limitar quantos produtos serão exibidos, todos produtos serão apresentados.
-Exemplo: Os 10 produtos mais vendidos entre 10/05/2018 e 10/06/2018.<br>

* Quais são os N clientes que foram mais rentáveis para o supermercado entre a data X e a data Y?<br>
-Inclui informações como: Nome do cliente, valor total gasto, cpf.<br>

* Quais é a média de consumo por cliente entre a data X e a data Y?<br>
-Inclui informações como: Nome do cliente, média de consumo, cpf.<br>
-Se o usuário não limitar a quantidade de clientes, as médias de todos serão apresentadas.

* Quanto foi a rentabilidade das vendas em cada dia da semana entre a data X e a data Y?<br>
-Inclui informações como: Dia da semana, Data de intervalo e Soma de ganhos nesse dia da semana.<br>
-Exemplo: Foi vendido R$5000 nas quartas-feiras, R$2000 nas segundas, R$1600 nas quintas-feiras, … entre a data 05/01/2018 e 05/06/2018.<br>

* Qual é o tipo de produto mais comprado (maior número de unidades vendidas) em cada dia da semana entre a data X e a data Y?<br>
-Exemplo: Nos últimos 30 dias, nas quartas-feiras foram vendidos 10000 unidades de verduras; nas quintas-feiras, 20000 produtos de limpeza, ...<br>

* Quais são as datas do ano mais lucrativas entre a data X e a data Y?<br>
-Inclui informações como: Data, Dia da semana, Data de intervalo e Ganho nessa data.<br>
-Exemplo: Em 12/10/2017, foi vendido R$200 mil; em 08/03/2018, R$175 mil, etc<br>
-Se o usuário não limitar a quantidade de datas, todas elas serão apresentadas.

* Qual é o número total de usos de cada meio de pagamento entre a data X e a data Y?<br>
-Inclui informações como: Meio, Número de usuários e Data de intervalo.<br>
-Exemplo: Entre 25/06/2017 e 25/06/2018, o cartão de crédito foi usados 800 vezes; o cartão de débito, 700; etc<br>

* Qual o meio de pagamento mais rentável para o supermercado entre a data X e a data Y?<br>
-Inclui informações como: Meio, Ganhos e Data de intervalo.<br>
-Exemplo: Entre 25/06/2017 e 25/06/2018, gastou-se R$540 mil no cartão de crédito; R$360 mil, no de débito; etc<br>

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
>[atributo]: [descrição da decisão]<br><br>
>EXEMPLO:<br>
>a) Campo endereço: em nosso projeto optamos por um campo multivalorado e composto, pois a empresa 
pode possuir para cada departamento mais de uma localização...<br>
>b) justifique!

- _Obs. 0: Pelo tempo disponível,o grupo optou por não implementar a versão mobile do sistema, focou na versão desktop._
- Obs. 1: Foi estabelecido que vários clientes podem utilizar um mesmo cartão.
- Obs. 2: Foi estabelecido que um cliente pode utilizar vários cartões.
- Obs. 3: Optou-se em dividir entidade pessoa jurídica em supermercado , mas não em fornecedor, já que um fornecedor não tem campos que o diferencie de uma pessoa jurídica.<br>
- Obs. 4: Foi aceita a sugestão do software “brModelo”, de unificar a entidade Pessoa com a entidade Endereço.<br>
- Obs. 5: Para fornecedores, o cliente exigiu apenas cadastro de endereço, contato e CNPJ, não requeriu controle de funcionários ou outras funcionalidades que interagissem com processos internos dos fornecedores.
- Obs. 6: No modelo conceitual optamos por não distinguir supermercado de fornecedor, ademais, as informações referentes ao endereço da mesma estará na tabela pessoa.


>## Marco de Entrega 02 em: (23/04/2018)<br>

#### 5.3 DESCRIÇÃO DOS DADOS 
    [objeto]: [descrição do objeto]
    
    EXEMPLO:
    CLIENTE: Tabela que armazena as informações relativas ao cliente<br>
    CPF: campo que armazena o número de Cadastro de Pessoa Física para cada cliente da empresa.<br>

CARTAO: Tabela que armazena dados sobre o cartão de crédito ou débito do cliente.<br>
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
* quant_prateleira: Número inteiro que indica quantas unidades de um produto o supermercado tem disponível na prateleira.<br>
* tipo: Texto que indica o grupo o qual o produto faz parte. Exemplo: “Sabão em pó Homo Sapiens” é do tipo “Limpeza”, pois se enquadra na categoria de produtos de limpeza.<br>

SUPERMERCADO: Tabela que armazena dados sobre o supermercado.<br>
* latitude: Número flutuante negativo ou positivo que junto à longitude identifica a localização do supermercado em um mapa (plano cartesiano).<br>
* longitude: Número flutuante negativo ou positivo que junto à latitude identifica a localização do supermercado em um mapa (plano cartesiano).<br>
* nome: Texto que representa o nome da organização. Exemplo: “Eita Supermercados.”.<br>
* unidade: Texto que identifica uma unidade da rede de supermercados. Exemplo: “Anchieta”.<br>

### 6	MODELO LÓGICO<br>
![Alt text](https://github.com/rfidmarket/trab01/blob/master/arquivos/modeloLogico.png "Modelo Lógico")


### 7	MODELO FÍSICO<br>
<a href="https://github.com/rfidmarket/trab01/blob/master/arquivos/modeloFisico.sql">MODELO FÍSICO</a><br>   


### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
#### 8.1 DETALHAMENTO DAS INFORMAÇÕES
<a href="https://github.com/rfidmarket/trab01/blob/master/arquivos/INSERT.sql">INSERT</a><br>   

#### 8.2 INCLUSÃO DO SCRIPT PARA CRIAÇÃO DE TABELA E INSERÇÃO DOS DADOS
<a href="https://github.com/rfidmarket/trab01/blob/master/arquivos/CREATE_INSERT.sql">CREATE E INSERT</a><br>
       
#### 8.3 INCLUSÃO DO SCRIPT PARA EXCLUSÃO DE TABELAS EXISTENTES, CRIAÇÃO DE TABELA NOVAS E INSERÇÃO DOS DADOS
<a href="https://github.com/rfidmarket/trab01/blob/master/arquivos/DROP_CREATE_INSERT.sql">DROP, CREATE, INSERT</a><br>
>## Marco de Entrega 03 em: (14/05/2018)<br>


### 9	TABELAS E PRINCIPAIS CONSULTAS<br>
    OBS: Incluir para cada tópico as instruções SQL + imagens (print da tela) mostrando os resultados.<br>
    
#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>

```sql
SELECT * FROM cartao;
```
<p align="center"><img src="https://github.com/rfidmarket/trab01/blob/master/images/secao_9.1/select_cartao.png"></p>

```sql
SELECT * FROM compra;
```
<p align="center"><img src="https://github.com/rfidmarket/trab01/blob/master/images/secao_9.1/select_compra.png"></p>

```sql
SELECT * FROM contato;
```
<p align="center"><img src="https://github.com/rfidmarket/trab01/blob/master/images/secao_9.1/select_contato.png"></p>

```sql
SELECT * FROM fisica;
```
<p align="center"><img src="https://github.com/rfidmarket/trab01/blob/master/images/secao_9.1/select_fisica.png"></p>

```sql
SELECT * FROM fornecimento;
```
<p align="center"><img src="https://github.com/rfidmarket/trab01/blob/master/images/secao_9.1/select_fornecimento.png"></p>

```sql
SELECT * FROM funcionario;
```
<p align="center"><img src="https://github.com/rfidmarket/trab01/blob/master/images/secao_9.1/select_funcionario.png"></p>

```sql
SELECT * FROM hist_compra;
```
<p align="center"><img src="https://github.com/rfidmarket/trab01/blob/master/images/secao_9.1/select_hist_compra.png"></p>

```sql
SELECT * FROM juridica;
```
<p align="center"><img src="https://github.com/rfidmarket/trab01/blob/master/images/secao_9.1/select_juridica.png"></p>

```sql
SELECT * FROM lote;
```
<p align="center"><img src="https://github.com/rfidmarket/trab01/blob/master/images/secao_9.1/select_lote.png"></p>

```sql
SELECT * FROM pessoa;
```
<p align="center"><img src="https://github.com/rfidmarket/trab01/blob/master/images/secao_9.1/select_pessoa.png"></p>

```sql
SELECT * FROM produto;
```
<p align="center"><img src="https://github.com/rfidmarket/trab01/blob/master/images/secao_9.1/select_produto.png"></p>

```sql
SELECT * FROM supermercado;
```
<p align="center"><img src="https://github.com/rfidmarket/trab01/blob/master/images/secao_9.1/select_supermercado.png"></p>

```sql
SELECT * FROM utiliza;
```
<p align="center"><img src="https://github.com/rfidmarket/trab01/blob/master/images/secao_9.1/select_utiliza.png"></p>


#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 4)<br>

```sql
SELECT * FROM pessoa WHERE id < 27;
```
<p align="center"><img src="https://github.com/rfidmarket/trab01/blob/master/images/secao_9.2/1.png"></p>

```sql
SELECT * FROM fisica WHERE genero = 'F';
```
<p align="center"><img src="https://github.com/rfidmarket/trab01/blob/master/images/secao_9.2/2.png"></p>

```sql
SELECT * FROM funcionario WHERE setor = 'ti' or setor = 'TI';
```
<p align="center"><img src="https://github.com/rfidmarket/trab01/blob/master/images/secao_9.2/3.png"></p>

```sql
SELECT * FROM juridica WHERE fk_pessoa > 95;
```
<p align="center"><img src="https://github.com/rfidmarket/trab01/blob/master/images/secao_9.2/4.png"></p>


#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E TABELAS OU CAMPOS RENOMEADOS (Mínimo 11)

>a) Criar 5 consultas que envolvam os operadores lógicos AND, OR e Not
    
```sql
--Obtenha os dados de todos funcionários que sejam gerentes ou repositores;
SELECT p.nome, fis.genero, fun.cargo, fun.setor, fis.cpf FROM pessoa AS p
INNER JOIN fisica AS fis ON p.id = fis.fk_pessoa
INNER JOIN funciONario AS fun ON fis.fk_pessoa = fun.fk_pessoa_fisica
WHERE cargo = 'gerente' OR cargo LIKE 'repositor%';
```
<p align="center"><img src="https://github.com/rfidmarket/trab01/blob/master/images/secao_9.3/a/1.png"></p>

```sql
--Obtenha os dados de todos funcionários que não sejam gerentes;
SELECT p.nome, fis.genero, fun.cargo, fun.setor, fis.data_nasc FROM pessoa AS p
INNER JOIN fisica AS fis ON p.id = fis.fk_pessoa 
INNER JOIN funciONario AS fun ON fis.fk_pessoa = fun.fk_pessoa_fisica
WHERE NOT cargo LIKE 'gerente';
```
<p align="center"><img src="https://github.com/rfidmarket/trab01/blob/master/images/secao_9.3/a/2.png"></p>

```sql
--Obtenha os dados de todas as técnicas em alguma área;
SELECT p.nome, fis.genero, fun.cargo, fun.setor, fis.data_nasc FROM pessoa AS p
INNER JOIN fisica AS fis ON p.id = fis.fk_pessoa 
INNER JOIN funciONario AS fun ON fis.fk_pessoa = fun.fk_pessoa_fisica
WHERE fun.cargo ILIKE 'técnic%' AND fis.genero = 'F';
```
<p align="center"><img src="https://github.com/rfidmarket/trab01/blob/master/images/secao_9.3/a/3.png"></p>

```sql
--Obtenha os dados de todos os técnicos do setor de TI;
SELECT p.nome, fis.genero, fun.cargo, fun.setor, fis.data_nasc FROM pessoa AS p
INNER JOIN fisica AS fis ON p.id = fis.fk_pessoa 
INNER JOIN funciONario AS fun ON fis.fk_pessoa = fun.fk_pessoa_fisica
WHERE cargo ILIKE 'técnico%' AND setor = 'TI';
```
<p align="center"><img src="https://github.com/rfidmarket/trab01/blob/master/images/secao_9.3/a/4.png"></p>

```sql
--Obtenha os dados de todos funcionários que são balconistas;
SELECT p.nome, fis.genero, fun.cargo, fun.setor, fis.data_nasc FROM pessoa AS p
INNER JOIN fisica AS fis ON p.id = fis.fk_pessoa 
INNER JOIN funciONario AS fun ON fis.fk_pessoa = fun.fk_pessoa_fisica
WHERE cargo ILIKE 'balconista%';
```
<p align="center"><img src="https://github.com/rfidmarket/trab01/blob/master/images/secao_9.3/a/5.png"></p>

>b) Criar no mínimo 3 consultas com operadores aritméticos<br>
```sql
--Exiba a média de idade das pessoas fisicas de Vila Velha;
SELECT SUM(idades)/COUNT(idades) AS "Média idade (Vila Velha)"
FROM (
	SELECT EXTRACT(year FROM AGE(NOW(), data_nasc)) AS idades FROM fisica AS f
	INNER JOIN pessoa AS p ON f.fk_pessoa = p.id
	WHERE p.cidade ILIKE 'vila velha') AS idades;
```
<p align="center"><img src="https://github.com/rfidmarket/trab01/blob/master/images/secao_9.3/b/1.png"></p>

```sql
--Exiba o nome dos clientes e o valor total gasto no supermercado desde que esse valor seja maior que 500;
SELECT nome AS "Nome (cliente)", total AS "Total comprado"
FROM (
	SELECT p.nome nome, SUM(c.preco_compra) total FROM pessoa p
	INNER JOIN fisica f ON f.fk_pessoa = p.id
	INNER JOIN hist_compra hc ON hc.id = f.fk_pessoa
	INNER JOIN compra c ON c.fk_hist_compra = hc.id
	WHERE hc.fk_supermercado = 601
	GROUP BY p.nome) nome_total
WHERE total > 500 ORDER BY 2 DESC;
```
<p align="center"><img src="https://github.com/rfidmarket/trab01/blob/master/images/secao_9.3/b/2.png"></p>

```sql
--Exiba o número de pessoas (físicas e jurídicas) em Serra e de outras cidades;
SELECT (
	SELECT COUNT(*) FROM pessoa WHERE cidade LIKE 'Serra') AS "Qtd. residentes Serra",
	(SELECT COUNT(*) FROM pessoa) - (SELECT COUNT(*) FROM pessoa WHERE cidade LIKE 'Serra')
	AS "Qtd. residentes demais cidades";
```
<p align="center"><img src="https://github.com/rfidmarket/trab01/blob/master/images/secao_9.3/b/3.png"></p>
    
>c) Criar no mínimo 3 consultas com operação de renomear nomes de campos ou tabelas

```sql
--Exiba quantas pessoas físicas moram em Vila Velha;<br>
SELECT COUNT(colunas) AS "Pessoas físicas de Vila Velha"
FROM(
	SELECT * FROM fisica AS f INNER JOIN pessoa AS p ON f.fk_pessoa = p.id
	WHERE p.cidade ILIKE 'vila velha') AS colunas
```
<p align="center"><img src="https://github.com/rfidmarket/trab01/blob/master/images/secao_9.3/c/1.png"></p>

```sql
--Exiba o nome, data de nascimento e idade atual (em anos) dos 5 funcionários mais velhos do supermercado*/
SELECT
	p.nome AS "Nome funcionário",
	data_nasc AS "Data de nascimento",
	EXTRACT(YEAR FROM AGE(NOW(), data_nasc)) AS "Idade atual do funcionário"
FROM funcionario AS fun
INNER JOIN pessoa AS p ON fun.fk_pessoa_fisica = p.id
INNER JOIN fisica AS fis ON fis.fk_pessoa = p.id
ORDER BY data_nasc ASC LIMIT 5;
```
<p align="center"><img src="https://github.com/rfidmarket/trab01/blob/master/images/secao_9.3/c/2.png"></p>

```sql
SELECT
   SUM(CASE WHEN tab.genero = 'F' THEN 1 ELSE 0 END) as "Funcionárias [FEM]",
   SUM(CASE WHEN tab.genero = 'M' THEN 1 ELSE 0 END) as "Funcionários [MASC]"
   from (SELECT genero FROM fisica AS fis
		 INNER JOIN pessoa AS p ON fis.fk_pessoa = p.id
		 INNER JOIN funcionario AS fun ON fun.fk_pessoa_fisica = fis.fk_pessoa) tab;
```
<p align="center"><img src="https://github.com/rfidmarket/trab01/blob/master/images/secao_9.3/c/3.png"></p>
    
#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE E DATAS (Mínimo 12) <br>
```sql
SELECT * FROM supermercado WHERE unidade ILIKE 'No%';
```
<p align="center"><img src="https://github.com/rfidmarket/trab01/blob/master/images/secao_9.4/1.png"></p>

```sql
SELECT * FROM juridica WHERE cnpj LIKE '%0001-3%';
```
<p align="center"><img src="https://github.com/rfidmarket/trab01/blob/master/images/secao_9.4/2.png"></p>

```sql
SELECT * FROM fisica WHERE login LIKE '%bol.com.br';
```
<p align="center"><img src="https://github.com/rfidmarket/trab01/blob/master/images/secao_9.4/3.png"></p>

```sql
SELECT * FROM pessoa WHERE nome ILIKE 'BR%';
```
<p align="center"><img src="https://github.com/rfidmarket/trab01/blob/master/images/secao_9.4/4.png"></p>

```sql
SELECT * FROM pessoa WHERE rua ILIKE 'Av%';
```
<p align="center"><img src="https://github.com/rfidmarket/trab01/blob/master/images/secao_9.4/5.png"></p>

```sql
SELECT * FROM pessoa WHERE rua ILIKE 'Avenida a %';
```
<p align="center"><img src="https://github.com/rfidmarket/trab01/blob/master/images/secao_9.4/6.png"></p>

```sql
SELECT * FROM pessoa WHERE bairro ILIKE '%Praia da %';
```
<p align="center"><img src="https://github.com/rfidmarket/trab01/blob/master/images/secao_9.4/7.png"></p>

```sql
SELECT * FROM fisica WHERE DATE_PART('YEAR', AGE(CURRENT_DATE, data_nasc)) > 53;
```
<p align="center"><img src="https://github.com/rfidmarket/trab01/blob/master/images/secao_9.4/8.png"></p>

```sql
SELECT
	login, data_nasc, cpf, senha, fk_pessoa, genero,
	EXTRACT(YEAR FROM AGE(CURRENT_DATE, data_nasc)) AS idade
FROM fisica WHERE DATE_PART('YEAR', AGE(CURRENT_DATE, data_nasc)) > 53;
```
<p align="center"><img src="https://github.com/rfidmarket/trab01/blob/master/images/secao_9.4/9.png"></p>

```sql
SELECT * FROM fisica WHERE EXTRACT('YEAR' FROM data_nasc) > 1996;
```
<p align="center"><img src="https://github.com/rfidmarket/trab01/blob/master/images/secao_9.4/10.png"></p>

```sql
SELECT
	login, data_nasc, cpf, senha, fk_pessoa, genero,
	CURRENT_DATE - data_nasc AS "Dias vividos"
FROM fisica WHERE EXTRACT('YEAR' FROM data_nasc) > 1996;
```
<p align="center"><img src="https://github.com/rfidmarket/trab01/blob/master/images/secao_9.4/11.png"></p>

```sql
SELECT
	login, data_nasc, cpf, senha, fk_pessoa, genero,
	EXTRACT('MONTH' FROM data_nasc) AS "Mês de nasc."
FROM fisica WHERE DATE_PART('YEAR', AGE(CURRENT_DATE, data_nasc)) > 53;
```
<p align="center"><img src="https://github.com/rfidmarket/trab01/blob/master/images/secao_9.4/12.png"></p>

>## Marco de Entrega 04 em: (04/06/2017)<br>
    
#### 9.5	ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br>
#### 9.6	CONSULTAS COM JUNÇÃO E ORDENAÇÃO (Mínimo 6)<br>
>a) Uma junção que envolva todas as tabelas possuindo no mínimo 3 registros no resultado
```sql
SELECT
  TAB_SUPER.NOME   "Superm. (Nome)",
  TAB_SUPER.UNID   "Unidade",
  TAB_SUPER.PK_SUPER "ID",
  TAB_VENDAS.TIPO_CARTAO "Tipo cartão mais rentável",
  TAB_CUSTO.CUSTO_TOTAL "Custo atual c/ mercadoria(R$)",
  TAB_FUNC.NUM_FUNC "Núm. func.",
  TAB_CONTATO.CONTATO "Contato",
  TAB_FORN.NUM_FORN "Núm. forn.",
  TAB_LOTE.PROD_TIPO "Categoria c/ mais lotes",
  TAB_GEN.GENERO "Gênero que mais consumiu"

FROM
  --Tabelas envolvidas abaixo: juridica, pessoa, supermercado;
  (SELECT P.nome nome, S.unidade unid, S.fk_pessoa_juridica pk_super
   FROM supermercado S
     INNER JOIN juridica J ON S.fk_pessoa_juridica = J.fk_pessoa
     INNER JOIN pessoa P ON J.fk_pessoa = P.id
  ) TAB_SUPER

  INNER JOIN
  --Tabelas envolvidas abaixo: cartao, compra, hist_compra, supermercado;
  (SELECT
     DISTINCT ON(S.fk_pessoa_juridica) S.fk_pessoa_juridica pk_super,
     ROUND(SUM(C.preco_compra) :: NUMERIC, 2) total,
     C2.tipo tipo_cartao
   FROM supermercado S
     INNER JOIN hist_compra H ON S.fk_pessoa_juridica = H.fk_supermercado
     INNER JOIN compra C ON H.id = C.fk_hist_compra
     INNER JOIN cartao C2 ON H.fk_cartao = C2.id
   GROUP BY TIPO_CARTAO, PK_SUPER ORDER BY 1,2 DESC
  ) TAB_VENDAS
    ON TAB_SUPER.PK_SUPER = TAB_VENDAS.PK_SUPER

  INNER JOIN
  --Tabelas envolvidas abaixo: produto, supermercado;
  (SELECT
     S.fk_pessoa_juridica pk_super,
     ROUND(sum(P.estoque * P.custo + P.quant_prateleira * P.custo) :: NUMERIC, 2) custo_total
   FROM produto P
     INNER JOIN supermercado S ON P.fk_supermercado = S.fk_pessoa_juridica
   GROUP BY PK_SUPER
  ) TAB_CUSTO
    ON TAB_VENDAS.PK_SUPER = TAB_CUSTO.PK_SUPER

  INNER JOIN
  --Tabelas envolvidas abaixo: funcionario, supermercado;
  (SELECT S.fk_pessoa_juridica pk_super, SUM(CASE WHEN F.cargo NOTNULL THEN 1 ELSE 0 END) num_func
   FROM supermercado S
     LEFT JOIN funcionario F ON S.fk_pessoa_juridica = F.fk_supermercado
   GROUP BY PK_SUPER
  ) TAB_FUNC
    ON TAB_CUSTO.PK_SUPER = TAB_FUNC.PK_SUPER

  INNER JOIN
  --Tabelas envolvidas abaixo: contato, supermercado;
  (SELECT DISTINCT ON (S.fk_pessoa_juridica) S.fk_pessoa_juridica pk_super, C.descricao contato
   FROM supermercado S
     INNER JOIN contato C ON S.fk_pessoa_juridica = C.fk_pessoa
   ORDER BY pk_super
  ) TAB_CONTATO
    ON TAB_SUPER.PK_SUPER = TAB_CONTATO.PK_SUPER

  INNER JOIN
  --Tabelas envolvidas abaixo: fornecimento, supermercado;
  (SELECT F.fk_supermercado pk_super, COUNT(F.fk_fornecedor) num_forn
   FROM supermercado S
     INNER JOIN fornecimento F ON F.fk_supermercado = S.fk_pessoa_juridica
   GROUP BY PK_SUPER
  ) TAB_FORN
    ON TAB_SUPER.PK_SUPER = TAB_FORN.PK_SUPER

  INNER JOIN
  --Tabelas envolvidas abaixo: lote, produto, supermercado;
  (SELECT
     DISTINCT ON (S.fk_pessoa_juridica)
     S.fk_pessoa_juridica pk_super,
     P.tipo prod_tipo,
     COUNT(P.id) num_lotes
   FROM supermercado S
     INNER JOIN lote L ON S.fk_pessoa_juridica = L.fk_supermercado
     INNER JOIN produto P ON L.fk_produto = P.id
   GROUP BY PK_SUPER, PROD_TIPO
   ORDER BY 1, 3 DESC
  ) TAB_LOTE
    ON TAB_SUPER.PK_SUPER = TAB_LOTE.PK_SUPER

  INNER JOIN
  --Tabelas envolvidas abaixo: compra, fisica, hist_compra, supermercado;
  (SELECT
     DISTINCT ON(S.fk_pessoa_juridica) S.fk_pessoa_juridica pk_super,
     F.genero genero,
     ROUND(SUM(C.preco_compra)::NUMERIC, 2) gasto_total
   FROM supermercado S
     INNER JOIN hist_compra H ON S.fk_pessoa_juridica = H.fk_supermercado
     INNER JOIN compra C ON H.id = C.fk_hist_compra
     INNER JOIN fisica F ON H.fk_cliente = F.fk_pessoa
   GROUP BY PK_SUPER, GENERO
   ORDER BY 1, 3 DESC
  ) TAB_GEN
    ON TAB_SUPER.PK_SUPER = TAB_GEN.PK_SUPER

ORDER BY 1 ASC;
```
>b) Outras junções que o grupo considere como sendo as de principal importância para o trabalho<br>

*Tais consultas serão abordadas ao longo da seção 9, logo abaixo!*

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


