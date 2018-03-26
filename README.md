# TRABALHO 01:  EasyMarket
Trabalho desenvolvido durante a disciplina de BD1

# Sumário

### 1. COMPONENTES<br>
Juliana Duarte Arcebi: juliana.acerbi@hotmail.com<br>
Nilzilane Ramos Ricardo Garcia Tosta: naniramosricardo@hotmail.com<br>
Rafaela Amorim Pessin: rafaelapessin@outlook.com<br>
Rebeca Borlini Encarnação: rebecaborlini@gmail.com<br>

### 2.INTRODUÇÃO E MOTIVAÇAO<br>

<p align = "justify"> Easy Market é um sistema para grandes estoques que facilita o controle do fluxo de mercadorias gerenciando desde quantidade, validade, preço, localização desses no interior do estabelecimento até sua chegada ao cliente. Por utilizar etiquetas RFID para acelerar o processo de pagamento de compras o sistema extingue a necessidade de operadores de caixa. Com a economia gerada pela menor necessidade de contratação de funcionários, esperamos minimizar o impacto dos altos preços das etiquetas sobre os preço dos produtos comercializados.</p>

### 3.MINI-MUNDO<br>

<p align = "justify"> Devido à pressa do cotidiano aliada às imensas filas que se formam nos caixas dos supermercados, ir às compras tornou-se algo exaustivo. Baseado neste problema, com o sistema EasyMarket, ao invés de utilizar o trabalho manual de caixas para leitura de códigos de barra de produtos em supermercados, os clientes terão seus produtos lidos de forma automática através de sensores na saída do supermercado, todos de uma só vez, ainda no carrinho, gerando uma fatura a ser paga. Isso porque os produtos serão identificados por etiquetas RFID (identificação por radiofreqüência). Uma antena estará conectada a um leitor, sendo responsável por enviar e receber sinais de rádio com as informações que estão nessas etiquetas. O leitor então vai converter as ondas de rádio em informações digitais que serão repassadas ao computador. 
Primeiramente, para entrar no sistema EasyMarket para supermercados é solicitado um login e senha. É permitido o acesso de gerentes, almoxarifado, funcionários que fazem a reposição de mercadorias, entre outros setores, e as permissões de acesso  dependem de cada setor. O sistema permite o cadastro de produtos com todas as informações necessárias (tipo, validade, preço de compra, código, descrição, quantidade na prateleira, quantidade total, data de compra, fornecedor, situação (à 
venda, em estoque)) e conta com uma opção para remover produtos vendidos. O sistema também permite o cadastro de usuários (nome, cargo, setor, CPF, login, senha), a geração de relatórios, o controle de estoque e pesquisa de produtos. Para facilitar o pagamento para o cliente proporcionando maior comodidade e auxiliar em maior controle por parte dos supermercados, foi criado o EasyMarket Mobile. O cliente, portando um aparelho celular ou tablet, realiza seu cadastro no aplicativo ondevai selecionar a forma de pagamento (débito ou crédito), podendo inserir um ou mais cartões e selecionar o desejado para o ato da compra. Com isso, poderá validar seu cadastro na entrada da loja através de um QRCode, liberando sua entrada para efetuar as compras. A partir daí, ele poderá visualizar todo o histórico de compras (local, data, horário, valor, detalhes da compra) pelo aplicativo, tendo a opção de gerar uma nota fiscal eletrônica. Com isso, o mercado poderá ter o controle de pagamentos já que, quando cadastrados, ao efetuar uma compra é realizado débito automático na conta do cliente. As etiquetas RFID vão automatizar o processo de pagamento, reduzindo em grande parte as filas com o intuito de tornar o processo de compra mais agradável e menos moroso para o cliente. Além disso, é possível fazer o controle do estoque de mercadorias de forma eficiente e precisa, evitando erros e dispensando balanços mensais manuais e demorados. </p>


![Alt text](https://github.com/rfidmarket/trab01/blob/master/Screenshot_1.png)

![Alt text](https://github.com/rfidmarket/trab01/blob/master/Screenshot_2.png)

![Alt text](https://github.com/rfidmarket/trab01/blob/master/Screenshot_3.png)

![Alt text](https://github.com/rfidmarket/trab01/blob/master/Screenshot_4.png)

![Alt text](https://github.com/rfidmarket/trab01/blob/master/Screenshot_5.png)

![Alt text](https://github.com/rfidmarket/trab01/blob/master/Screenshot_6.png)

![Alt text](https://github.com/rfidmarket/trab01/blob/master/Screenshot_7.png)

![Alt text](https://github.com/rfidmarket/trab01/blob/master/Screenshot_8.png)

![Alt text](https://github.com/rfidmarket/trab01/blob/master/Screenshot_9.png)

![Alt text](https://github.com/rfidmarket/trab01/blob/master/Screenshot_10.png)

![Alt text](https://github.com/rfidmarket/trab01/blob/master/Screenshot_11.png)

![Alt text](https://github.com/rfidmarket/trab01/blob/master/Screenshot_12.png)

![Alt text](https://github.com/rfidmarket/trab01/blob/master/Screenshot_13.png)

#### 4.1 TABELA DE DADOS DO SISTEMA:
    a) Esta tabela deve conter todos os atributos do sistema e um mínimo de 10 linhas.
    b) Esta tabela tem a intenção de simular um relatório com todos os dados que serão armazenados 
    e deve ser criada antes do modelo conceitual
    c) Após criada esta tabela não deve ser modificada, pois será comparada com a tabela final na conclusão do trabalho
    
    
#### 4.2 QUAIS PERGUNTAS PODEM SER RESPONDIDAS COM O SISTEMA PROPOSTO?
    a) O sistema proposto poderá fornecer quais tipos de relatórios e informaçes? 
    b) Crie uma lista com os 10 principais relatórios que poderão ser obtidos por meio do sistema proposto!
    
>## Marco de Entrega 01 em: (02/04/2018)<br>

### 5.MODELO CONCEITUAL<br>
    A) NOTACAO ENTIDADE RELACIONAMENTO 
        * Para nosso prótótipo limitaremos o modelo conceitual nas 6 principais entidades do escopo
        * O protótipo deve possui no mínimo duas relações N para N
        * o mínimo de entidades do modelo conceitual será igual a 5
        
![Alt text](https://github.com/discipbd1/trab01/blob/master/images/concept_sample.png?raw=true "Modelo Conceitual")
    
    B) NOTACAO UML (Caso esteja fazendo a disciplina de analise)
    C) QUALIDADE 
        Garantir que a semântica dos atributos seja clara no esquema
        Criar o esquema de forma a garantir a redução de informação redundante, possibilidade de valores null, 
        e tuplas falsas
    
        
    
#### 5.1 Validação do Modelo Conceitual
    [Grupo01]: [Nomes dos que participaram na avaliação]
    [Grupo02]: [Nomes dos que participaram na avaliação]

#### 5.2 DECISÕES DE PROJETO
    [atributo]: [descrição da decisão]
    
    EXEMPLO:
    a) Campo endereço: em nosso projeto optamos por um campo multivalorado e composto, pois a empresa 
    pode possuir para cada departamento mais de uma localização... 
    b) justifique!

>## Marco de Entrega 02 em: (23/04/2018)<br>
#### 5.3 DESCRIÇÃO DOS DADOS 
    [objeto]: [descrição do objeto]
    
    EXEMPLO:
    CLIENTE: Tabela que armazena as informações relativas ao cliente<br>
    CPF: campo que armazena o número de Cadastro de Pessoa Física para cada cliente da empresa.<br>


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


