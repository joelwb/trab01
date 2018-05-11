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

### 2.INTRODUÇÃO E MOTIVAÇAO<br>

<p align = "justify"> Easy Market é um sistema para grandes estoques que facilita o controle do fluxo de mercadorias gerenciando desde quantidade, validade, preço, localização desses no interior do estabelecimento até sua chegada ao cliente. Por utilizar etiquetas RFID para acelerar o processo de pagamento de compras o sistema extingue a necessidade de operadores de caixa. Com a economia gerada pela menor necessidade de contratação de funcionários, esperamos minimizar o impacto dos altos preços das etiquetas sobre os preço dos produtos comercializados.</p>

### 3.MINI-MUNDO<br>

<p align = "justify"> Devido à pressa do cotidiano aliada às imensas filas que se formam nos caixas dos supermercados, ir às compras tornou-se algo exaustivo. Baseado neste problema, com o sistema EasyMarket, ao invés de utilizar o trabalho manual de caixas para leitura de códigos de barra de produtos em supermercados, os clientes terão seus produtos lidos de forma automática através de sensores na saída do supermercado, todos de uma só vez, ainda no carrinho, gerando uma fatura a ser paga. Isso porque os produtos serão identificados por etiquetas RFID (identificação por radiofreqüência). Uma antena estará conectada a um leitor, sendo responsável por enviar e receber sinais de rádio com as informações que estão nessas etiquetas. O leitor então vai converter as ondas de rádio em informações digitais que serão repassadas ao computador. </p>
<p align = "justify"> Primeiramente, para entrar no sistema EasyMarket para supermercados é solicitado um login e senha. É permitido o acesso de gerentes, almoxarifado, funcionários que fazem a reposição de mercadorias, entre outros setores, e as permissões de acesso  dependem de cada setor. O sistema permite o cadastro de produtos com todas as informações necessárias (tipo, validade, preço de compra, código, descrição, quantidade na prateleira, quantidade total, data de compra, fornecedor, situação,venda, em estoque) e conta com uma opção para remover produtos vendidos. O sistema também permite o cadastro de usuários (nome, cargo, setor, CPF, login, senha), a geração de relatórios, o controle de estoque e pesquisa de produtos. </p>
<p align = "justify"> Para facilitar o pagamento para o cliente proporcionando maior comodidade e auxiliar em maior controle por parte dos supermercados, foi criado o EasyMarket Mobile. O cliente, portando um aparelho celular ou tablet, realiza seu cadastro no aplicativo ondevai selecionar a forma de pagamento (débito ou crédito), podendo inserir um ou mais cartões e selecionar o desejado para o ato da compra. Com isso, poderá validar seu cadastro na entrada da loja através de um QRCode, liberando sua entrada para efetuar as compras. A partir daí, ele poderá visualizar todo o histórico de compras (local, data, horário, valor, detalhes da compra) pelo aplicativo, tendo a opção de gerar uma nota fiscal eletrônica. Com isso, o mercado poderá ter o controle de pagamentos já que, quando cadastrados, ao efetuar uma compra é realizado débito automático na conta do cliente. </p>
<p align = "justify">As etiquetas RFID vão automatizar o processo de pagamento, reduzindo em grande parte as filas com o intuito de tornar o processo de compra mais agradável e menos moroso para o cliente. Além disso, é possível fazer o controle do estoque de mercadorias de forma eficiente e precisa, evitando erros e dispensando balanços mensais manuais e demorados. </p>

<b> REGRAS DE NEGÓCIO </b>

<p align = "justify"> RN01: O preço de um produto é o resultado da expressão: valor da compra + impostos + porcentagem sobre o custo do negócio + valor da etiqueta RFID + porcentagem de lucro. </p>
<p align = "justify"> RN02: Um produto não deve ser colocado à venda caso esteja vencido. </p>
<p align = "justify"> RN03: Cobrança de taxa de entrega. </p>
<p align = "justify"> RN04: Entregas somente em endereços situados a um raio de 4km do estabelecimento. </p>
<p align = "justify"> RN05: Cada cliente deve ter somente uma conta. Para evitar duplicidade, o número de CPF deve ser obrigatório no cadastro. </p>

### 4. MOCKUPS<br>

<a href="https://github.com/rfidmarket/trab01/raw/master/Easy%20Market.pdf">EasyMarket Desktop</a><br>
<a href="https://github.com/rfidmarket/trab01/blob/master/EasyMarketMobile.pdf">EasyMarket Mobile</a><br>

#### 4.1 TABELA DE DADOS DO SISTEMA:

<a href="https://github.com/rfidmarket/trab01/blob/master/arquivos/Tabela%20de%20dados%20-%20BD.xlsx">Tabela</a><br>

#### 4.2 QUAIS PERGUNTAS PODEM SER RESPONDIDAS COM O SISTEMA PROPOSTO?
    a) O sistema proposto poderá fornecer quais tipos de relatórios e informaçes? 
    b) Crie uma lista com os 10 principais relatórios que poderão ser obtidos por meio do sistema proposto!
    
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
        
![Alt text](https://github.com/rfidmarket/trab01/blob/master/images/mod_conceitual.png "Modelo Conceitual")
    
    B) NOTACAO UML (Caso esteja fazendo a disciplina de analise)
 
![Alt text](https://github.com/rfidmarket/trab01/blob/master/images/diag_classe.png "Diagrama de Classes")

    C) QUALIDADE 
        Garantir que a semântica dos atributos seja clara no esquema
        Criar o esquema de forma a garantir a redução de informação redundante, possibilidade de valores null, 
        e tuplas falsas
    
        
    
#### 5.1 Validação do Modelo Conceitual
    [Grupo01]: [Nomes dos que participaram na avaliação]
    [Grupo02]: [Nomes dos que participaram na avaliação]

#### 5.2 DECISÕES DE PROJETO

* Pessoa: No modelo conceitual optamos na decisão do projeto em não distinguir pessoa física de pessoa jurídica, ademais, as informações referentes ao endereço da mesma estará na tabela pessoa.
* Obs. 1: Foi estabelecido que vários clientes podem utilizar um mesmo cartão.
* Obs. 2: Foi estabelecido que um cliente pode utilizar vários cartões.
* Obs. 3: Foi estabelecido que várias pessoas podem habitar um mesmo endereço.
* Obs. 4: No modelo conceitual optou-se em dividir entidade pessoa em pessoa física, mas não em pessoa jurídica, já que pessoa jurídica se destaca por 1 atributo.

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

ENDERECO: Tabela que armazena dados referentes a localização de uma pessoa (física ou jurídica).<br>
* bairro: Texto que corresponde ao bairro da entidade. Exemplo: “Jardim Carapina”.<br>
* CEP: Número que identifica o código de endereçamento postal da pessoa. Exemplo: 29161-699.<br>
* cidade: Texto que indica o município onde a pessoa reside. Exemplo: “Serra”.<br>
* estado: Texto que indica a unidade federativa (UF) onde a pessoa reside. Exemplo: “Espírito Santo”.<br>
* numero: Número que localiza a residência (casa, prédio, etc.) da pessoa. Exemplo: 45.<br>
* rua: Texto que indica a rua ou avenida onde a pessoa reside. Exemplo: “Av. Presidente Dutra”.<br>

FORNECEDOR: Tabela que armazena dados sobre o fornecedor ligado ao supermercado.<br>
* CNPJ: Número que corresponde ao registro de Cadastro Nacional de Pessoa Jurídica do fornecedor. Exemplo: “17.181.538/0001-42”.<br>
* nome: Texto que representa o nome da organização ou pessoa física que fornece algo. Exemplo: “Seu Zé Refrigerantes Ltda.”.<br>

FUNCIONÁRIO: Tabela que armazena dados sobre os funcionários do supermercado.<br>
* cargo: Texto que identifica a profissão ocupada por um funcionário dentro de um setor. Exemplo: “Repositor”.<br>
* CPF: Número único que identifica uma pessoa física. Exemplo: “003.728.136-59”.<br>
* setor: Texto que indica o departamento em que o funcionário trabalha. Exemplo: “Almoxarifado”.<br>

HIST_COMPRA: Tabela que armazena dados sobre um histórico de compras de um cliente.<br>
* data: Data que representa o dia, mês e ano em que a compra foi realizada. Exemplo: “21/05/2017”.<br>
* hora: Horário que representa a hora, minuto e segundos em que a compra foi realizada. Exemplo: “11:25:30”.<br>
* valor: Número flutuante que representa o valor total gasto pelo cliente na compra. Exemplo: 732.50.<br>

LOTE: Tabela que armazena dados sobre os lotes (conjunto, aglomerado) dos produtos.<br>
* data_compra: Data que registra o momento da compra. Exemplo: “01/05/2018”.<br>
* data_fabricacao: Data que registra quando o lote foi fabricado. Exemplo: “01/04/2018”.<br>
* numero: Texto que identifica um determinado lote. Exemplo: “038-15/00600”.<br>
* quantidade: Número inteiro que indica quantas unidades do produto cabem no lote.<br>
* validade: Data que registra quando os produtos desse lote expirarão. Exemplo: “10/06/2018”.<br>

PESSOA: Tabela que armazena dados em comum entre pessoas físicas e jurídicas.<br>
OBS. 1: Toda pessoa jurídica ou física possui meios de CONTATO e um ENDEREÇO.<br>
* nome: Texto que representa o nome da pessoa. Exemplo: “João Silva” ou “Maria Supermercado”.<br>

PESSOA_FISICA: Tabela que armazena dados intrínsecos a uma pessoa física (cliente ou funcionário do supermercado).
* CPF: Número único que identifica uma pessoa física. Exemplo: “003728136-59”.<br>
* data_nasc: Data que representa a data de nascimento de uma pessoa física. Exemplo: “11/05/1997”.<br>
* login: Texto que representa o nome de usuário que uma pessoa (cliente ou funcionário do supermercado) usa para acessar o * sistema. Exemplo: “faustop@extragood.com”.<br>
* senha: Texto que representa a palavra-chave usada pela pessoa física (cliente ou funcionário) para acessar o sistema. Exemplo: “Aninha1561!”.<br>

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
        a) inclusão do modelo lógico do banco de dados
        b) verificação de correspondencia com o modelo conceitual 
        (não serão aceitos modelos que não estejam em conformidade)

### 7	MODELO FÍSICO<br>
        a) inclusão das instruções de criacão das estruturas DDL 
        (criação de tabelas, alterações, etc..)          
        
### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
#### 8.1 DETALHAMENTO DAS INFORMAÇÕES
        a) inclusão das instruções de inserção dos dados nas tabelas criadas pelo script de modelo físic
        b) formato .SQL

#### 8.2 INCLUSÃO DO SCRIPT PARA CRIAÇÃO DE TABELA E INSERÇÃO DOS DADOS
        a) Junção dos scripts anteriores em um único script 
        (create para tabelas e estruturas de dados + dados a serem inseridos)
        b) Criar um novo banco de dados para testar a restauracao 
        (em caso de falha na restauração o grupo não pontuará neste quesito)
        c) formato .SQL
#### 8.3 INCLUSÃO DO SCRIPT PARA EXCLUSÃO DE TABELAS EXISTENTES, CRIAÇÃO DE TABELA NOVAS E INSERÇÃO DOS DADOS
        a) Junção dos scripts anteriores em um único script 
        (Drop table + Create de tabelas e estruturas de dados + dados a serem inseridos)
        b) Criar um novo banco de dados para testar a restauracao 
        (em caso de falha na restauração o grupo não pontuará neste quesito)
        c) formato .SQL
>## Marco de Entrega 03 em: (14/05/2018)<br>

### 9	TABELAS E PRINCIPAIS CONSULTAS<br>
    OBS: Incluir para cada tópico as instruções SQL + imagens (print da tela) mostrando os resultados.<br>
#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>
#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 4)<br>
#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E TABELAS OU CAMPOS RENOMEADOS (Mínimo 11)
    a) Criar 5 consultas que envolvam os operadores lógicos AND, OR e Not
    b) Criar no mínimo 3 consultas com operadores aritméticos 
    c) Criar no mínimo 3 consultas com operação de renomear nomes de campos ou tabelas
#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE E DATAS (Mínimo 12) <br>
    a) Criar outras 5 consultas que envolvam like ou ilike
    b) Criar uma consulta para cada tipo de função data apresentada.

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


