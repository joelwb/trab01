CREATE TABLE FUNCIONARIO (
	cargo VARCHAR(50),
	setor VARCHAR(50),
	fk_pessoa_fisica INTEGER,
	fk_supermercado INTEGER
);
 
ALTER TABLE FUNCIONARIO ADD CONSTRAINT id_funcionario PRIMARY KEY (fk_pessoa_fisica);
 
CREATE TABLE PESSOA (
	nome VARCHAR(75),
	id SERIAL,
	numero INTEGER,
	rua VARCHAR(80),
	cep CHAR(9),
	bairro VARCHAR(50),
	estado CHAR(2),
	cidade VARCHAR(50)
);
 
ALTER TABLE PESSOA ADD CONSTRAINT id_pessoa PRIMARY KEY (id);
 
CREATE TABLE CARTAO (
	id SERIAL,
	nome_titular VARCHAR(75),
	validade DATE,
	bandeira VARCHAR(35),
	numero CHAR(16),
	tipo CHAR
);
 
ALTER TABLE CARTAO ADD CONSTRAINT id_cartao PRIMARY KEY (id);
ALTER TABLE CARTAO ADD CONSTRAINT numero UNIQUE (numero);
 
CREATE TABLE PRODUTO (
	nome VARCHAR(75),
	preco FLOAT8,
	codigo VARCHAR(85),
	descricao TEXT,
	custo FLOAT8,
	id SERIAL,
	estoque INTEGER,
	tipo VARCHAR(50),
	quant_prateleira INTEGER,
	marca VARCHAR(50),
	fk_supermercado INTEGER
);
 
 
ALTER TABLE PRODUTO ADD CONSTRAINT id_produto PRIMARY KEY (id);
 
CREATE TABLE SUPERMERCADO (
	longitude FLOAT8,
	latitude FLOAT8,
	unidade VARCHAR(50),
	fk_pessoa_juridica INTEGER
);
 
ALTER TABLE SUPERMERCADO ADD CONSTRAINT id_supermercado PRIMARY KEY (fk_pessoa_juridica);
 
CREATE TABLE CONTATO (
	id SERIAL,
	descricao VARCHAR(150),
	tipo VARCHAR(20),
	fk_pessoa INTEGER,
	CONSTRAINT descricao_tipo UNIQUE (descricao, tipo)
);
 
ALTER TABLE CONTATO ADD CONSTRAINT id_contato PRIMARY KEY (id);
 
CREATE TABLE HIST_COMPRA (
	timestamp TIMESTAMP,
	id SERIAL,
	fk_cartao INTEGER,
	fk_supermercado INTEGER,
	fk_cliente INTEGER
);
 
ALTER TABLE HIST_COMPRA ADD CONSTRAINT id_hist_compra PRIMARY KEY (id);
 
CREATE TABLE JURIDICA (
	cnpj CHAR(18),
	fk_pessoa INTEGER
);
 
ALTER TABLE JURIDICA ADD CONSTRAINT id_pessoa_juridica PRIMARY KEY (fk_pessoa);
ALTER TABLE JURIDICA ADD CONSTRAINT cnpj UNIQUE (cnpj);
 
CREATE TABLE Lote (
	id SERIAL,
	data_compra DATE,
	identificador CHAR(30),
	fabricacao DATE,
	quantidade INTEGER,
	validade DATE,
	fk_fornecedor INTEGER,
	fk_produto INTEGER,
	fk_supermercado INTEGER
);
 
ALTER TABLE LOTE ADD CONSTRAINT id_lote PRIMARY KEY (id);
ALTER TABLE LOTE ADD CONSTRAINT numero_fk_produto UNIQUE (identificador, fk_produto);
 
CREATE TABLE Compra (
	id SERIAL,
	preco_compra FLOAT8,
	quant INTEGER,
	fk_produto INTEGER,
	fk_hist_compra INTEGER
);
 
ALTER TABLE Compra ADD CONSTRAINT id_compra PRIMARY KEY (id);
 
CREATE TABLE FISICA (
	login VARCHAR(150),
	data_nasc DATE,
	cpf CHAR(14),
	senha VARCHAR(255),
	fk_pessoa INTEGER,
	genero CHAR
);
 
ALTER TABLE FISICA ADD CONSTRAINT id_pessoa_fisica PRIMARY KEY (fk_pessoa);
ALTER TABLE FISICA ADD CONSTRAINT login UNIQUE (login);
 
CREATE TABLE Utiliza (
	fk_cartao INTEGER,
	fk_cliente INTEGER
);
 
CREATE TABLE FORNECIMENTO (
	fk_supermercado INTEGER,
	fk_fornecedor INTEGER
);
 
ALTER TABLE FUNCIONARIO ADD CONSTRAINT fk_pessoa_fisica
	FOREIGN KEY (fk_pessoa_fisica)
	REFERENCES FISICA (fk_pessoa)
	ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE FUNCIONARIO ADD CONSTRAINT fk_supermercado
	FOREIGN KEY (fk_supermercado)
	REFERENCES SUPERMERCADO (fk_pessoa_juridica)
	ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE PRODUTO ADD CONSTRAINT fk_supermercado
	FOREIGN KEY (fk_supermercado)
	REFERENCES SUPERMERCADO (fk_pessoa_juridica)
	ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE SUPERMERCADO ADD CONSTRAINT fk_pessoa_juridica
	FOREIGN KEY (fk_pessoa_juridica)
	REFERENCES JURIDICA (fk_pessoa)
	ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE CONTATO ADD CONSTRAINT fk_pessoa
	FOREIGN KEY (fk_pessoa)
	REFERENCES PESSOA (id)
	ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE HIST_COMPRA ADD CONSTRAINT fk_cartao
	FOREIGN KEY (fk_cartao)
	REFERENCES CARTAO (id)
	ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE HIST_COMPRA ADD CONSTRAINT fk_supermercado
	FOREIGN KEY (fk_supermercado)
	REFERENCES SUPERMERCADO (fk_pessoa_juridica)
	ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE HIST_COMPRA ADD CONSTRAINT fk_cliente
	FOREIGN KEY (fk_cliente)
	REFERENCES FISICA (fk_pessoa)
	ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE JURIDICA ADD CONSTRAINT fk_pessoa
	FOREIGN KEY (fk_pessoa)
	REFERENCES PESSOA (id)
	ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE Lote ADD CONSTRAINT fk_fornecedor
	FOREIGN KEY (fk_fornecedor)
	REFERENCES JURIDICA (fk_pessoa)
	ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE Lote ADD CONSTRAINT fk_produto
	FOREIGN KEY (fk_produto)
	REFERENCES PRODUTO (id)
	ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE Lote ADD CONSTRAINT fk_supermercado
	FOREIGN KEY (fk_supermercado)
	REFERENCES SUPERMERCADO (fk_pessoa_juridica)
	ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE Compra ADD CONSTRAINT fk_produto
	FOREIGN KEY (fk_produto)
	REFERENCES PRODUTO (id)
	ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE Compra ADD CONSTRAINT fk_hist_compra
	FOREIGN KEY (fk_hist_compra)
	REFERENCES HIST_COMPRA (id)
	ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE FISICA ADD CONSTRAINT fk_pessoa
	FOREIGN KEY (fk_pessoa)
	REFERENCES PESSOA (id)
	ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE Utiliza ADD CONSTRAINT fk_cartao
	FOREIGN KEY (fk_cartao)
	REFERENCES CARTAO (id)
	ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE Utiliza ADD CONSTRAINT fk_cliente
	FOREIGN KEY (fk_cliente)
	REFERENCES FISICA (fk_pessoa)
	ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE FORNECIMENTO ADD CONSTRAINT fk_supermercado
	FOREIGN KEY (fk_supermercado)
	REFERENCES SUPERMERCADO (fk_pessoa_juridica)
	ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE FORNECIMENTO ADD CONSTRAINT fk_fornecedor
	FOREIGN KEY (fk_fornecedor)
	REFERENCES JURIDICA (fk_pessoa)
	ON DELETE RESTRICT ON UPDATE RESTRICT;


INSERT INTO public.pessoa(nome,id,numero,rua,cep,bairro,estado,cidade)
VALUES('ADRIANO FERNANDES CARDOSO',1,427,'Avenida Saturnino Rangel Mauro',29060290,'Jardim da Penha','ES','Vitoria'),
('AGUINALDO DOS SANTOS SOUZA',2,1254,'Rua Constante Sodré',29055420,'Praia do Canto','ES','Vitoria'),
('AILTON SARMENTO LEITE',3,1104,'Francisco Eugenio Mussielo',29060270,'Jardim da Penha','ES','Vitoria'),
('AKSEL SANTOS CAMPOS',4,1226,'RUA ODETTE DE OLIVEIRA LACOURT',29060-050,'JARDIM DA PENHA','ES','Vitoria'),
('ALAN ROBERTO VASCONCELOS ROCHA',5,842,'Av. Antonio Paulino',29890-000,'Centro','ES','Montanha'),
('ALCEMIRA AMARAL MAGAVE',6,41,'Rua Coari',29166-590,'Barcelona','ES','Serra'),
('ALDAIR HEVERTON XAVIER DOS SANTOS',7,150,'AV PERIMETRAL',29102195,'Praia de Itaparica','ES','Vila Velha'),
('ALDINA CABRAL DE SOUZA',8,440,'Rua Graciano Neves',29015-330,'Centro','ES','Vitoria'),
('ALESSANDRA AZEVEDO DA COSTA',9,2042,'Avenida Hugo Musso',29101936,'Praia da Costa','ES','Vila Velha'),
('ALEXSANDRO MARQUES CARDOSO',10,70,'Rua Canindé',29167-030,'Barcelona','ES','Serra'),
('ALVARO BRAGA',11,305,'Rua Raul Pompeia',29102-615,'Boa Vista II','ES','Vila Velha'),
('ALZIRA SILVA ANDRADE',12,311,'travessa São Luis, conj. placido barcelos',29120311,'aribiri','ES','Vila Velha'),
('ANA LUCIA CARVALHO ANSPACH',13,35,'Rua Guilhermina Geovanotte',29100-505,'Olária','ES','Vila Velha'),
('ANA LUCIA DE SOUZA',14,1340,'Rua Anisio Fernandes Coelho',29060670,'JARDIM DA PENHA','ES','Vitoria'),
('ANALEIA RODRIGUES GUIMARAES NASCIMENTO',15,24,'Rua 26',29105-164,'Vila Nova','ES','Vila Velha'),
('ANDERSON BISPO DE OLIVEIRA',16,14,'RUA MONJARDIM',29118-713,'Industrial','ES','Vila Velha'),
('ANTONIO CARLOS DA SILVA',17,17,'Avenida Antônio Almeida Filho',29102-370,'Praia de Itaparica','ES','Vila Velha'),
('ANTONIO CARLOS SAMPAIO QUINTILIANO',18,8,'Rua Vicente Santório Fantini',29146786,'Vera Cruz','ES','Cariacica'),
('ANTONIO FURTADO NUNES',19,10,'Rua 13',29142866,'Parque Res Maracanã','ES','Cariacica'),
('ANTONIO GILSON VIEIRA DOS SANTOS',20,606,'Rua José de Alencar',29102077,'Boa Vista','ES','Vila Velha'),
('ARISTEU CAMPOS CORDEIRO',21,65,'Santa Maria',29126-275,'Santa Paula II','ES','Vila Velha'),
('AURIENI LIMA PALMERIM',22,2331,'Av. São paulo, Ed. Orlando Coser',29101-715,'itapuã','ES','Vila Velha'),
('BENILDO FERNANDES DE AZEVEDO JUNIOR',23,76,'Rua José Bernadino Sena',29107300,'Divino Espírito Santo','ES','Vila Velha'),
('BRENDA CARINA NUNES CARDOSO',24,26,'Rua manguinhos',29230000,'Vila Residencial Samarco','ES','Anchieta'),
('BRUNA TAVARES DE SOUZA',25,163,'Rua Cruz Maia',29360000,'Centro','ES','Castelo'),
('BRUNO MELO SANTA BRIGIDA',26,4,'Rua Crisântemo',29104750,'Brisamar','ES','Vila Velha'),
('CARLA ELUANE DE ALMEIDA LEAL',27,14,'Rua Sebastião Azevedo Campos',35300-390,'Centro','MG','Caratinga'),
('CARLOS ALTEIR SANTOS FERREIRA',28,45,'av: perimetral, 4º etapa, ed: cuzco',29100000,'Coqueiral de itaparica','ES','Vila Velha'),
('CARLOS HENRIQUE GOMES SANTIAGO',29,145,'Rua Jorge Majestade',29104-060,'Novo México','ES','Vila Velha'),
('CARLOS JOSE RODRIGUES DO CARMO',30,669,'Rua Humberto Serrano',29101-460,'Praia da Costa','ES','Vila Velha'),
('CAROLINA COSTA ROSA',31,14,'Rua Tapauá',29171254,'Serra Dourada 2','ES','Serra'),
('CELESTINO ESTIMA TAVARES PINHEIRO JUNIOR',32,303,'Rua Maria Valadares',29123240,'Jaburuna','ES','Vila Velha'),
('CHRISTIAN KAMPMANN',33,0,'ED ALEGRE',29102207,'COQUEIRAL','ES','Vila Velha'),
('CLAUDINA BARRIGA NOBRE',34,23,'Rua Clara de Assis',29115330,'Paul','ES','Vila Velha'),
('CLENILDES PALMERIM BARBOSA',35,4,'Rua Manoel de Abreu',29109-460,'Santos Dumont','ES','Vila Velha'),
('DANIEL PEREIRA COSTA',36,1375,'Avenida Doutor Herwan Modenese Wanderley',29090640,'Jardim Camburí','ES','Vitoria'),
('DANILO PANTOJA LEITE',37,2290,'Av Resplendor',29101522,'Praia de Itapoã','ES','Vila Velha'),
('DINAIR SILVA DE OLIVEIRA',38,11,'Rua Alexandrina Martins',29109190,'Santos Dumont','ES','Vila Velha'),
('DIOGO ANDRADE DA SILVA',39,62,'Rua Marcílio Dias - conj.Letícia',29215130,'Muquiçaba','ES','Guarapari'),
('DIVALDO DOS SANTOS SOUZA',40,201,'Av. Uruguaiana',29166069,'Barcelona','ES','Serra'),
('DIVANDO LIRA BENASSULY',41,173,'Rua Argel',29103360,'Araças','ES','Vila Velha'),
('EDER BARBOSA DA COSTA',42,980,'Avenida Estudante José Júlio de Souza - de 0952/953 ao fim',29102010,'Praia de Itaparica','ES','Vila Velha'),
('EDICENE DO SOCORRO DIAS NASCIMENTO',43,50,'RUA DEOLINDO PERIM',29100-000,'PRAIA DE ITAPUA','ES','Vila Velha'),
('EDILANNA SOUZA DA SILVA',44,1,'RUA DAS OLIVEIRAS',29143167,'PARQUE GRAMADO','ES','Cariacica'),
('EDILENE PEREIRA GUEDES',45,2305,'Avenida São Paulo',29101508,'Praia de Itapoã','ES','Vila Velha'),
('ELAINE JAIRA CARMO DE MELO NASCIMENTO',46,326,'Rua Diógenes Malacarne',29101-210,'Praia da Costa','ES','Vila Velha'),
('ELAINE RICHELLE DOS SANTOS QUEIROZ',47,12,'Rua Maria Amália',29106685,'Ilha dos Aires','ES','Vila Velha'),
('ELIAS DOS SANTOS BRITO',48,130,'avenida belo horizonte',29182213,'serramar','ES','Serra'),
('ELINETE BARROS CORREIA',49,560,'Avenida Ernesto Canal',29117120,'Alvorada','ES','Vila Velha'),
('ELIZANDRO TABORDA LOPES',50,45,'Rua Bom Pastor',29146060,'Campo Grande','ES','Cariacica'),
('ELIZETE BARROS CORREIA BRASIL',51,45,'Rua Bom Pastor',29146-060,'Campo Grande','ES','Cariacica'),
('ERNANES DA SILVA PALMEIRA',52,150,'R ROMULO LEÃO CASTELO',29052-740,'ILHA DO BOI','ES','Vitoria'),
('ERNESTO GOMES PEREIRA JUNIOR',53,2,'Rua Jose Eugenio',29110240,'N. S. PENHA','ES','Vila Velha'),
('ETIENE MAZZE COSTA E SILVA',54,141,'Av. Ewerson de Abreu Sodré',29215001,'Muquiçaba','ES','Guarapari'),
('EVELLINE UCHOA DA SILVA TAVARES',55,630,'AV: DELIO SILVA BRITO',29102904,'COQ DE ITAPARICA','ES','Vila Velha'),
('EVERALDO DA SILVA VASCONCELOS TERCEIRO',56,1177,'Avenida Moacir Paleta',35020-360,'São Pedro','MG','Governador Valadares'),
('EZEQUIAS DA GAMA MONTEIRO',57,10,'Rua Vinte e Cinco',29100000,'Jardim São Paulo','ES','Vila Velha'),
('FABIO DE AZEVEDO CORDEIRO',58,424,'Rua Brasilândia',29111320,'Cobilândia','ES','Vila Velha'),
('FATIMA FURTADO DAMASCENO',59,124,'Avenida Coronel Pedro Maia de carvalho 550',29102-570,'Praia das Gaivotas','ES','Vila Velha'),
('FRANCILEA DO ROSARIO SANTOS',60,15,'Rua Santos Dumont',29146784,'Vera Cruz','ES','Cariacica'),
('FRANCINEIDE ALVES DA ROCHA',61,230,'Avenida dos Expedicionários',29092490,'Jardim Camburi','ES','Vitoria'),
('FRANCISCO ASSIS DE OLIVEIRA',62,194,'RUA VISCONDE DE TAUNAY',29106080,'SOTECO','ES','Vila Velha'),
('FRANCISCO DE VERAS E SILVA',63,11,'Rua Herminio Lima',29115480,'Ilha das Flores','ES','Vila Velha'),
('GEOVANA PATRICIA PIMENTEL CABRAL',64,11,'rua Rui Barbosa',29104758,'BRISAMAR','ES','Vila Velha'),
('HENRIQUE VIEIRA DA SILVA',65,330,'Av. Alziro Zarur',29060350,'Jardim da Penha','ES','Vitoria'),
('HERALDO DE MELO DE SOUZA',66,791,'Rua Dido Fontes',29060280,'JARDIM DA PENHA','ES','Vitoria'),
('ILVANETE ALVES CORREA',67,100,'Rua Rui Barbosa, 100 maruipe',29043-020,'Maruípe','ES','Vitoria'),
('IRACEMA TAVARES DA SILVA ARAUJO',68,8,'Rua: São joão',29135000,'Parque Flamengo','ES','Viana'),
('ISRAEL BORGES DA SILVA',69,86,'RUA 32 EDIFICIO GRANADA QUADRA 40 BLOCO 4001',29161837,'ANDRE CARLONI','ES','Serra'),
('IVANILSON DA SILVA SERRAO',70,391,'Rua Moaçir Ribeiro',29140786,'RIO MARINHO','ES','Cariacica'),
('IVETE MARIA SOUZA VASCONCELOS DE MELO',71,31,'Rua Presidente Afonso Pena',29072540,'BAIRRO REPÚBLICA','ES','Vitoria'),
('JACIARA SILVA DA CONCEICAO',72,240,'AV. ANISIO FERNANDES COELHO',29060670,'JD. PENHA','ES','Vitoria'),
('JACKSON FERREIRA PEREIRA',73,84,'caixa postal 45',29260000,'CENTRO','ES','Domingos Martins'),
('JEAN PHABLO SANTOS DE SOUZA',74,344,'Rua Amélia Tartuce Nasser',29118708,'Jardim da Penha','ES','Vitoria'),
('JEFFERSON MACHADO PEREIRA',75,0,'Ed. Pirapora - Bloco 319 - 1ª Etapa',29101000,'COQUEIRAL DE ITAPARICA','ES','Vila Velha'),
('JEONEY MONTEIRO DIAS',76,15,'Rua Castro Alves',29118-036,'Planalto','ES','Vila Velha'),
('JEOVANE ALMEIDA GUIMARAES',77,197,'Avenida Vitoria',29161739,'Jardim Carapina','ES','Serra'),
('JHONATAN DIAS GOMES',78,171,'RUA FERNANDO DE NORONHA',29109040,'JARDIM GUADALAJARA','ES','Vila Velha'),
('JOANA DE JESUS DOS SANTOS MARQUES',79,64,'Rua Erotilde Rocha',29154280,'Santana','ES','Cariacica'),
('JOAO CELIO DIAS DE ANDRADE',80,3036,'Rua São Paulo',29101-512,'Itapoã','ES','Vila Velha'),
('JOILMA SAMPAIO DE MONT ALVERNE',81,113,'Rua Orquídea',29104550,'Jardim Asteca','ES','Vila Velha'),
('JONES DOUGLAS DIAS DE LIMA',82,26,'Rua Glauber Rocha',29103760,'Guaranhuns','ES','Vila Velha'),
('JOSE DE ARIMATEIA SANTA ROSA LOPES',83,36,'Rua Trindade',29109030,'JARDIM GUADALAJARA','ES','Vila Velha'),
('JOSE LUIS MEDINA ABANTO',84,87,'rua bernardo horta',29300782,'guandu','ES','Cachoeiro de Itapemirim'),
('JOSE REINALDO DO NASCIMENTO NETO',85,206,'Rua Natal',29101800,'ITAPOÃ','ES','Vila Velha'),
('JOSE ROBERTO DUARTE DE ALMEIDA',86,360,'Rua Operária',29116390,'Vila Garrido','ES','Vila Velha'),
('JOSE ROBERTO PIRES MATOS',87,1222,'av fortaleza',29101700,'itapoã','ES','Vila Velha'),
('JOSE TEIXEIRA DE MOURA NETO',88,120,'Rua Comissário Octávio Queiroz',29060270,'Jardim da Penha','ES','Vitoria'),
('JOSEPH DOUGLAS LACERDA DA ROCHA DE SOUZA',89,250,'Avenida República',29020620,'Parque Moscoso','ES','Vitoria'),
('KARINA DE CASSIA MAIA',90,601,'Rua Hernâni Souza',29107-070,'Divino Espírito Santo','ES','Vila Velha'),
('KATIA ANDREIA AGUIAR CARNEIRO',91,555,'Rua Moacir Avidos',29057230,'Praia do Canto','ES','Vitoria'),
('LIDIANE ROSA ALVES',92,41,'Rua Azulina de Souza Manso',29600000,'Centro','ES','Afonso Claudio'),
('LUCIVANIA MESQUITA ALMEIDA',93,8,'Rua: 19',29105690,'COCAL','ES','Vila Velha'),
('LUIZ GERALDO DE ARAUJO SILVA',94,1,'Rua Fortaleza',29147-742,'Rio Branco','ES','Cariacica'),
('LUIZ OSVALDO PINTO DOS SANTOS',95,1729,'Av frederico grulke',29645-000,'centro','ES','Santa Maria de Jetiba'),
('LUZIANE DA SILVA FEIO',96,75,'Av Santa Leopoldina - 2ª Etapa',29102902,'Coqueiral de Itaparica','ES','Vila Velha'),
('MANOEL MARIA MARTINS DOS SANTOS',97,5,'SEBASTIÃO COSTA',29048048,'JOANA DÁRC','ES','Vitoria'),
('MARCIA ANDREIA COLARES PINHEIRO',98,1110,'Rua Belém',29101770,'Praia de Itapoã','ES','Vila Velha'),
('MARCUS MILLER MACHADO SASSIM',99,310,'Coronel Schuab Filho',29050-780,'Bento Ferreira','ES','Vitoria'),
('MARIA AUXILIADORA CAPELA',100,2046,'Avenida Antônio Gil Veloso',29101011,'Praia da Costa','ES','Vila Velha'),
('CARONE',101,5659,'Rua do Paraíso',48903050,'Santo Antônio','BA','Juazeiro'),
('EPA',102,8985,'Rua Japão',48904435,'Coréia','BA','Juazeiro'),
('CASAGRANDE',103,3236,'Rua Brasília',29101730,'Praia de Itapoã','ES','Vila Velha'),
('OK',104,5656,'Avenida Agenor Barbato',29122530,'Glória','ES','Vila Velha'),
('CARREFOUR',105,565,'RUA DAS PALMEIRAS',29056925,'SANTA LUCIA', 'ES','Vitória'),
('SEMPRE TEM',106,9592,'Rua Santa Catarina',29163386,'São Geraldo','ES','Serra'),
('CARONE',107,5654,'RUA FORTALEZA-C COSTA AZUL',29101600,'Praia de Itapoã','ES','Vila Velha'),
('MACRO',108,4541,'Rua Antônio Ataíde',29100295,'Centro','ES','Vila Velha'),
('SEMPRE TEM',109,777,'Rua Professora Gladys Bernardo Lucas',29042180,'Jucutuquara','ES','Vitória'),
('MACRO',110,5589,'Rua Ademar Luiz Nepomuceno',29090520,'Jardim Camburí','ES','Vitória');



INSERT INTO public.fisica(
	login, data_nasc, cpf, senha, fk_pessoa, genero)
	VALUES ('isaias.possatti.filho@gmail.com','1975-12-03 00:00:00.000','307.272.808-99','1gm6h9',1,'M'),
('gabriellepossatti@gmail.com','1983-10-14 00:00:00.000','363.975.818-88','crqy2o',2,'F'),
('laninha.jb@hotmail.com','1988-02-24 00:00:00.000','331.972.588-27','kisdce',3,'F'),
('crispsv@hotmail.com','1992-08-30 00:00:00.000','383.446.338-85','pqm2x4',4,'F'),
('lilisalles@hotmail.com','1989-09-03 00:00:00.000','295.136.248-03','3znt1e',5,'M'),
('biobranca@yahoo.com.br','1997-08-03 00:00:00.000','219.180.478-04','1gz6ln',6,'M'),
('karenkfg@gmail.com','1985-01-20 00:00:00.000','314.493.248-51','aoxv65',7,'F'),
('jsalaroli@gmail.com','1996-03-26 00:00:00.000','401.961.598-57','bbvu68',8,'F'),
('dinhahton@hotmail.com','1995-10-16 00:00:00.000','367.374.688-02','my2ope',9,'F'),
('camila.bless@hotmail.com','1985-03-08 00:00:00.000','398.590.648-30','93z9bn',10,'F'),
('joycecardozo1982@gmail.com','1993-03-22 00:00:00.000','341.396.018-09','hnxhpa',11,'M'),
('karlaalvesvargas@gmail.com','1986-02-27 00:00:00.000','365.307.018-00','8yv2zg',12,'M'),
('claudetejuju@hotmail.com','1997-10-10 00:00:00.000','412.344.938-70','aygr2c',13,'F'),
('angelatrabalho@hotmail.com','1982-12-09 00:00:00.000','407.410.778-33','sgl1mf',14,'F'),
('eu_fui@hotmail.com','1998-06-09 00:00:00.000','399.470.678-58','e0i90d',15,'M'),
('jaide.moreira.alves@gmail.com','1998-01-16 00:00:00.000','409.887.868-26','0pcqwb',16,'M'),
('ackana@ig.com.br','1994-04-17 00:00:00.000','386.132.198-02','3bnkuo',17,'M'),
('dridriboy@hotmail.com','1989-04-29 00:00:00.000','233.470.278-17','xz758h',18,'M'),
('lilinardi@hotmail.com','1985-05-19 00:00:00.000','383.320.808-27','0fwtua',19,'F'),
('gkbnpimentel@hotmail.com','1987-10-26 00:00:00.000','392.123.758-04','psxhl0',20,'F'),
('vasconcellossil@hotmail.com','1994-06-08 00:00:00.000','320.849.998-12','2yss66',21,'F'),
('michellicardozo@hotmail.com','1994-12-27 00:00:00.000','377.567.638-40','ri9sns',22,'M'),
('maisahelena@gmail.com','1987-10-05 00:00:00.000','078.405.624-26','2lebyr',23,'M'),
('samyralm@hotmail.com','1995-03-11 00:00:00.000','403.022.598-56','qdbh7m',24,'F'),
('priscillahistoriadora@hotmail.com','1991-04-07 00:00:00.000','346.788.988-32','awxl77',25,'M'),
('lucianaplnovaes@hotmail.com','1986-11-23 00:00:00.000','394.250.508-80','ae4r7l',26,'F'),
('lista@email.com','1997-09-13 00:00:00.000','370.238.088-41','kuxy9s',27,'M'),
('samarina17@hotmail.com','1982-04-12 00:00:00.000','316.540.838-60','b7vumh',28,'M'),
('juju.f.coutinho@gmail.com','1992-08-08 00:00:00.000','421.573.008-21','562eq2',29,'F'),
('manuelaluiza@hotmail.com','1990-04-26 00:00:00.000','397.629.348-22','3e4opp',30,'F'),
('renataprotes@hotmail.com','1987-10-10 00:00:00.000','328.904.838-19','tzt9ij',31,'M'),
('ingridmagescke@hotmail.com','1993-01-28 00:00:00.000','355.515.298-00','6dxldw',32,'M'),
('daniellissouza@hotmail.com','1983-12-31 00:00:00.000','402.626.758-03','w2o5kc',33,'F'),
('patricia_brunnellyy@hotmail.com','1990-11-13 00:00:00.000','372.515.258-60','j5qyp5',34,'F'),
('fran_boechat@hotmail.com','1993-07-02 00:00:00.000','327.073.118-39','wadq81',35,'M'),
('pluizaferreira@hotmail.com','1963-07-11 00:00:00.000','225.766.078-10','z74z7o',36,'F'),
('sandramara.pedrosa@bol.com.br','1969-07-02 00:00:00.000','297.968.888-66','b2y5s4',37,'F'),
('brunob_r@hotmail.com','1984-08-16 00:00:00.000','300.051.368-06','vg1dxf',38,'F'),
('nat_zr@hotmail.com','1976-06-14 00:00:00.000','304.703.208-42','gcd5so',39,'M'),
('tiadorajb@hotmail.com','1977-07-12 00:00:00.000','327.872.478-06','bghkqm',40,'M'),
('neivadrs@hotmail.com','1961-06-08 00:00:00.000','003.443.923-41','m9qa7e',41,'M'),
('robertanmvaldetaro@gmail.com','1974-07-04 00:00:00.000','412.514.208-42','qadcrv',42,'M'),
('danubiaramos@gmail.com','1995-03-19 00:00:00.000','303.053.388-38','294wk1',43,'M'),
('may_brunoro@hotmail.com','1987-02-15 00:00:00.000','377.203.008-40','zltebp',44,'M'),
('bia.galeti@hotmail.com','1970-04-01 00:00:00.000','332.862.328-07','jglf2m',45,'M'),
('karlinha_correa@hotmail.com','1986-11-05 00:00:00.000','224.302.698-80','ne3wpp',46,'M'),
('monicafeu@hotmail.com','1996-08-12 00:00:00.000','324.988.788-90','ezbjv1',47,'F'),
('eusou@hotmail.com','1990-04-24 00:00:00.000','396.970.498-74','k74e80',48,'F'),
('robertaprotes@hotmail.com','1960-12-04 00:00:00.000','367.469.108-65','baoqb5',49,'M'),
('ilzahdsramos@hotmail.com','1987-06-16 00:00:00.000','405.401.188-85','z11ooq',50,'F'),
('michele.soaresfarias@gmail.com','1987-06-06 00:00:00.000','300.185.758-70','1y78yb',51,'M'),
('corina-gusman@hotmail.com','1975-10-12 00:00:00.000','336.788.368-95','tnjehz',52,'F'),
('liliankarolpedro@hotmail.com','1972-09-14 00:00:00.000','392.532.658-84','8cf5z9',53,'F'),
('lelinhoquimica@hotmail.com','1966-08-09 00:00:00.000','057.694.044-50','43p1vm',54,'F'),
('rosangela0221@hotmail.com','1984-10-06 00:00:00.000','367.842.538-09','6ve0kw',55,'M'),
('crizzmc@hotmail.com','1994-09-30 00:00:00.000','372.122.748-44','rmtbbe',56,'F'),
('davi.spirito@live.com','1982-12-24 00:00:00.000','368.537.888-00','f7bfxa',57,'M'),
('sthefancarneiro@gmail.com','1980-09-13 00:00:00.000','333.276.858-19','qje4g2',58,'F'),
('felipe_kapim@hotmail.com','1963-10-04 00:00:00.000','357.660.328-03','xt70un',59,'M'),
('simonebigossi@click21.com.br','1985-03-21 00:00:00.000','223.639.318-07','tfmbh8',60,'M'),
('mirys_sathler@hotmail.com','1982-08-05 00:00:00.000','325.339.678-90','jk1au4',61,'M'),
('jacineidespirito@bol.com.br','1982-07-30 00:00:00.000','390.155.968-08','vaq6ye',62,'M'),
('fati.mendes@uol.com.br','1975-06-04 00:00:00.000','314.291.078-63','sheqek',63,'M'),
('cassia.shb@gmail.com','1979-09-27 00:00:00.000','391.418.168-03','hqpa86',64,'F'),
('robertauesb@bol.com.br','1964-12-31 00:00:00.000','306.729.908-65','vm82ot',65,'M'),
('amabeli_2006@hotmail.com','1951-03-01 00:00:00.000','394.738.948-56','5asj30',66,'F'),
('aisa_trevizani@ig.com','1970-11-29 00:00:00.000','364.737.478-42','z5mjxt',67,'F'),
('elayne.pinheiro@hotmail.com','1973-03-11 00:00:00.000','356.060.408-75','4taii8',68,'F'),
('junbretas@hotmail.com','1978-09-22 00:00:00.000','298.245.198-07','yqlk1l',69,'F'),
('brunablaser@hotmail.com','1972-09-24 00:00:00.000','303.616.398-05','dqqtcn',70,'M');

INSERT INTO public.juridica(
	cnpj, fk_pessoa)
	VALUES ('09.296.295/0001-60',71),
('61.190.658/0001-06',72),
('00.0000.00/5422-45',73),
('17.298.092/0001-30',74),
('00.0000.004/976-06',75),
('60.872.504/0001-23',76),
('00.317.929/0001-49 ',78),
('60.701.190/0001-04',79),
('17.192.451/0001-70',80),
('59.461.152/0001-34',81),
('04.944.958/0001-91',82),
('49.925.225/0001-48',83),
('18.725.747/0001-72',84),
('43.425.008/0001-02',85),
('62.291.208/0001-64',86),
('01.247.325/0001-36 ',87),
('07.221.678/0001-43',88),
('07.113.647/0001-79',89),
('04.716.126/0001-18',90),
('06.881.898/0001-30',91),
('03.338.227/0001-30',92),
('04.020.028/0001-41 ',93),
('07.575.651/0001-59 ',94),
('59.573.030/0001-30',95),
('61.155.248/0001-16',96),
('61.544.698/0001-09',97),
('03.012.230/0001-69',98),
('07.611.146/0001-12 ',99),
('03.991.201/0001-96',100),
('57.119.000/0001-22',101),
('62.418.140/0001.31',102),
('00.000.776/0001-01',103),
('52.637.139/0001-44',104),
('02.575.829/0001-48 ',105),
('61.379.764/0001-24',106),
('61.194.353/0001-64',107),
('33.311.713/0001-25',108),
('04.732.914/0001-06 ',109),
('04.238.150/0001-99',110);




INSERT INTO public.supermercado(
	longitude, latitude, unidade, fk_pessoa_juridica)
	VALUES ('-56.6426','-3.7064','juazeiro 01',101),
('-51.5585','-14.0084','juazeiro 04',102),
('-50918','-19.1797','vila velha 01',103),
('-53.3266','-15.5847','vila velha 03',104),
('-54.4536','-16.5842','vitória 01',105),
('-52.2471','-2.5297','serra 03',106),
('-45.8336','-27.7055','vila velha 02',107),
('-54.6938','-12.4763','vila velha 05',108),
('-54.1622','-12.8574','vitória 02',109),
('-54.4525','-18.5382','vitória 03',110);


INSERT INTO public.funcionario(
	cargo, setor, fk_pessoa_fisica, fk_supermercado)
	VALUES ('atendente','vendas',41,108),
('repositor','geral',42,104),
('estagiario','geral',43,107),
('estagiario','administrativo',44,110),
('atendente','vendas',45,107),
('estagiario','geral',46,110),
('gerente','marketing',47,102),
('gerente','administrativo',48,104),
('atendente','vendas',49,110),
('repositor','geral',50,109),
('estagiario','administrativo',51,108),
('atendente','vendas',52,106),
('atendente','vendas',53,101),
('repositor','geral',54,103),
('atendente','vendas',55,105),
('gerente','vendas',56,106),
('gerente','vendas',57,105),
('estagiario','vendas',58,104),
('estagiario','geral',59,108),
('gerente','vendas',60,107),
('gerente','administrativo',61,106),
('atendente','vendas',62,110),
('repositor','geral',63,103),
('estagiario','vendas',64,104),
('estagiario','vendas',65,110),
('gerente','vendas',66,101),
('repositor','geral',67,109),
('repositor','geral',68,108),
('gerente','marketing',69,101),
('gerente','marketing',70,107);


INSERT INTO public.contato(id, descricao, tipo, fk_pessoa) VALUES
(1,'(85) 8082992387','Telefone',1),
(2,'(73) 9059481688','Telefone',2),
(3,'(99) 8027909880','Telefone',3),
(4,'(29) 9058459910','Telefone',4),
(5,'(46) 8048545007','Telefone',5),
(6,'(26) 8038693506','Telefone',6),
(7,'(17) 9014825082','Telefone',7),
(8,'(18) 7068988998','Telefone',8),
(9,'(71) 9034515356','Telefone',9),
(10,'(33) 9090586997','Telefone',10),
(11,'(92) 7050529926','Telefone',11),
(12,'(29) 8049965378','Telefone',12),
(13,'(56) 9075231888','Telefone',13),
(14,'(58) 9055778812','Telefone',14),
(15,'(37) 9026392972','Telefone',15),
(16,'(21) 9072491911','Telefone',16),
(17,'(98) 7097896791','Telefone',17),
(18,'(32) 8054594113','Telefone',18),
(19,'(31) 9090003798','Telefone',19),
(20,'(57) 7097025391','Telefone',20),
(21,'(82) 9010164292','Telefone',21),
(22,'(16) 8018312889','Telefone',22),
(23,'(22) 8044338782','Telefone',23),
(24,'(25) 9090642761','Telefone',24),
(25,'(48) 8053168267','Telefone',25),
(26,'(86) 9062868195','Telefone',26),
(27,'(78) 9092330627','Telefone',27),
(28,'(47) 8064338906','Telefone',28),
(29,'(58) 8046277500','Telefone',29),
(30,'(52) 8038480483','Telefone',30),
(31,'(67) 8076505153','Telefone',31),
(32,'(11) 8058474737','Telefone',32),
(33,'(69) 7028192355','Telefone',33),
(34,'(21) 9092580192','Telefone',34),
(35,'(27) 7039190732','Telefone',35),
(36,'(82) 7047046232','Telefone',36),
(37,'(39) 9095843521','Telefone',37),
(38,'(34) 8065014097','Telefone',38),
(39,'(13) 8011729199','Telefone',39),
(40,'(12) 8012138208','Telefone',40),
(41,'(59) 9014666236','Telefone',41),
(42,'(74) 7092203773','Telefone',42),
(43,'(23) 7090550078','Telefone',43),
(44,'(44) 9093342071','Telefone',44),
(45,'(15) 8086182585','Telefone',45),
(46,'(94) 9019246215','Telefone',46),
(47,'(76) 9069777724','Telefone',47),
(48,'(18) 9089678160','Telefone',48),
(49,'(31) 9014263046','Telefone',49),
(50,'(84) 7056039700','Telefone',50),
(51,'(52) 7030917973','Telefone',51),
(52,'(83) 7058947236','Telefone',52),
(53,'(57) 8011559644','Telefone',53),
(54,'(71) 8058084614','Telefone',54),
(55,'(96) 8085555438','Telefone',55),
(56,'(72) 9044441676','Telefone',56),
(57,'(82) 7029576595','Telefone',57),
(58,'(15) 7075632293','Telefone',58),
(59,'(41) 8037746902','Telefone',59),
(60,'(94) 8059661899','Telefone',60),
(61,'(23) 8024321563','Telefone',61),
(62,'(31) 7057485475','Telefone',62),
(63,'(46) 8070293323','Telefone',63),
(64,'(99) 7069080571','Telefone',64),
(65,'(46) 7059499346','Telefone',65),
(66,'(67) 9038251513','Telefone',66),
(67,'(72) 9037338397','Telefone',67),
(68,'(12) 8089403871','Telefone',68),
(69,'(24) 7087583441','Telefone',69),
(70,'(86) 7073607575','Telefone',70);