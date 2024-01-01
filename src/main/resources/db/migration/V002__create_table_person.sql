CREATE TABLE person (
  id INT NOT NULL AUTO_INCREMENT,
  id_person_type INT NOT NULL,
  name varchar(70) NOT NULL,
  document varchar(20) NOT NULL,
  created_at datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (id),
  UNIQUE KEY id_UNIQUE (id),
  UNIQUE KEY document_UNIQUE (document),
  KEY fk_person_type_idx (id_person_type),
  CONSTRAINT fk_person_type FOREIGN KEY (id_person_type) REFERENCES person_type (id) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO person (id, id_person_type, name, document, created_at) VALUES (1, 1, UPPER('Rodrigo Breno Corte Real'), '06766453303', CURRENT_TIMESTAMP);
INSERT INTO person (id, id_person_type, name, document, created_at) VALUES (2, 1, UPPER('Adriana Márcia Pires'), '45642930281', CURRENT_TIMESTAMP);
INSERT INTO person (id, id_person_type, name, document, created_at) VALUES (3, 1, UPPER('Isaac Renan Teixeira'), '40803705476', CURRENT_TIMESTAMP);
INSERT INTO person (id, id_person_type, name, document, created_at) VALUES (4, 1, UPPER('Ruan Iago Ramos'), '37734262163', CURRENT_TIMESTAMP);
INSERT INTO person (id, id_person_type, name, document, created_at) VALUES (5, 1, UPPER('Julia Antônia Martins'), '51546097783', CURRENT_TIMESTAMP);
INSERT INTO person (id, id_person_type, name, document, created_at) VALUES (6, 1, UPPER('Arthur Tomás Carlos Eduardo Drumond'), '04512819690', CURRENT_TIMESTAMP);
INSERT INTO person (id, id_person_type, name, document, created_at) VALUES (7, 1, UPPER('Carolina Pietra da Rocha'), '61813569088', CURRENT_TIMESTAMP);
INSERT INTO person (id, id_person_type, name, document, created_at) VALUES (8, 1, UPPER('Anderson Daniel Breno da Silva'), '24877414495', CURRENT_TIMESTAMP);
INSERT INTO person (id, id_person_type, name, document, created_at) VALUES (9, 1, UPPER('Gael Davi Pedro Henrique Moura'), '30953125041', CURRENT_TIMESTAMP);
INSERT INTO person (id, id_person_type, name, document, created_at) VALUES (10, 1, UPPER('Levi Diego Caleb da Rocha'), '83952770329', CURRENT_TIMESTAMP);
INSERT INTO person (id, id_person_type, name, document, created_at) VALUES (11, 1, UPPER('Guilherme Lorenzo Osvaldo Lima'), '82460921110', CURRENT_TIMESTAMP);
INSERT INTO person (id, id_person_type, name, document, created_at) VALUES (12, 1, UPPER('Carolina Andrea Silveira'), '17699758102', CURRENT_TIMESTAMP);
INSERT INTO person (id, id_person_type, name, document, created_at) VALUES (13, 1, UPPER('Vicente Martin Nicolas dos Santos'), '51776030591', CURRENT_TIMESTAMP);
INSERT INTO person (id, id_person_type, name, document, created_at) VALUES (14, 1, UPPER('Rayssa Regina Malu Bernardes'), '95281250345', CURRENT_TIMESTAMP);
INSERT INTO person (id, id_person_type, name, document, created_at) VALUES (15, 1, UPPER('Pietro Ian Joaquim Alves'), '41953117058', CURRENT_TIMESTAMP);
INSERT INTO person (id, id_person_type, name, document, created_at) VALUES (16, 1, UPPER('Lucas Lorenzo da Paz'), '92295765900', CURRENT_TIMESTAMP);
INSERT INTO person (id, id_person_type, name, document, created_at) VALUES (17, 1, UPPER('Diego Pietro Severino Assis'), '76680320100', CURRENT_TIMESTAMP);
INSERT INTO person (id, id_person_type, name, document, created_at) VALUES (18, 1, UPPER('Giovanni Márcio Julio Galvão'), '59865668661', CURRENT_TIMESTAMP);
INSERT INTO person (id, id_person_type, name, document, created_at) VALUES (19, 1, UPPER('Rodrigo Nelson Nogueira'), '01322254419', CURRENT_TIMESTAMP);
INSERT INTO person (id, id_person_type, name, document, created_at) VALUES (20, 1, UPPER('Kevin Marcos Vinicius Freitas'), '64462293487', CURRENT_TIMESTAMP);
INSERT INTO person (id, id_person_type, name, document, created_at) VALUES (21, 1, UPPER('Alícia Carla da Mota'), '50745029426', CURRENT_TIMESTAMP);
INSERT INTO person (id, id_person_type, name, document, created_at) VALUES (22, 1, UPPER('Ryan Leonardo Silva'), '02951277407', CURRENT_TIMESTAMP);
INSERT INTO person (id, id_person_type, name, document, created_at) VALUES (23, 1, UPPER('Flávia Isadora Rita Teixeira'), '11087365058', CURRENT_TIMESTAMP);
INSERT INTO person (id, id_person_type, name, document, created_at) VALUES (24, 1, UPPER('Renata Carla Andreia Ferreira'), '05504725925', CURRENT_TIMESTAMP);
INSERT INTO person (id, id_person_type, name, document, created_at) VALUES (25, 1, UPPER('Marcos Anthony Juan Barros'), '35574551900', CURRENT_TIMESTAMP);
INSERT INTO person (id, id_person_type, name, document, created_at) VALUES (26, 1, UPPER('Alana Joana Drumond'), '37853974108', CURRENT_TIMESTAMP);
INSERT INTO person (id, id_person_type, name, document, created_at) VALUES (27, 1, UPPER('Evelyn Cristiane Rodrigues'), '33994559170', CURRENT_TIMESTAMP);
INSERT INTO person (id, id_person_type, name, document, created_at) VALUES (28, 1, UPPER('Joaquim Erick Sales'), '03253982599', CURRENT_TIMESTAMP);
INSERT INTO person (id, id_person_type, name, document, created_at) VALUES (29, 1, UPPER('Simone Lívia Ribeiro'), '12376355273', CURRENT_TIMESTAMP);
INSERT INTO person (id, id_person_type, name, document, created_at) VALUES (30, 1, UPPER('Victor Enzo Barros'), '41482473895', CURRENT_TIMESTAMP);
INSERT INTO person (id, id_person_type, name, document, created_at) VALUES (31, 1, UPPER('Lívia Agatha Kamilly Carvalho'), '63961167583', CURRENT_TIMESTAMP);
INSERT INTO person (id, id_person_type, name, document, created_at) VALUES (32, 1, UPPER('Rafael Thales Souza'), '51715958012', CURRENT_TIMESTAMP);
INSERT INTO person (id, id_person_type, name, document, created_at) VALUES (33, 1, UPPER('Clarice Melissa Raquel da Costa'), '95713543846', CURRENT_TIMESTAMP);
INSERT INTO person (id, id_person_type, name, document, created_at) VALUES (34, 1, UPPER('Alessandra Sophia Jéssica Silva'), '21393205810', CURRENT_TIMESTAMP);
INSERT INTO person (id, id_person_type, name, document, created_at) VALUES (35, 1, UPPER('Danilo Caio Cavalcanti'), '46847671408', CURRENT_TIMESTAMP);
INSERT INTO person (id, id_person_type, name, document, created_at) VALUES (36, 1, UPPER('Paulo Enrico Barros'), '95774801870', CURRENT_TIMESTAMP);
INSERT INTO person (id, id_person_type, name, document, created_at) VALUES (37, 1, UPPER('Cauê Danilo Aparício'), '09237975805', CURRENT_TIMESTAMP);
INSERT INTO person (id, id_person_type, name, document, created_at) VALUES (38, 1, UPPER('Sophia Antônia Porto'), '09560952919', CURRENT_TIMESTAMP);
INSERT INTO person (id, id_person_type, name, document, created_at) VALUES (39, 1, UPPER('Alana Sophie Raimunda Figueiredo'), '14307684010', CURRENT_TIMESTAMP);
INSERT INTO person (id, id_person_type, name, document, created_at) VALUES (40, 1, UPPER('Allana Manuela Isabel Viana'), '55555807970', CURRENT_TIMESTAMP);
INSERT INTO person (id, id_person_type, name, document, created_at) VALUES (41, 1, UPPER('Rosa Isabela Isabel Ferreira'), '50253438012', CURRENT_TIMESTAMP);
INSERT INTO person (id, id_person_type, name, document, created_at) VALUES (42, 1, UPPER('Antonio Benedito Moreira'), '80992779618', CURRENT_TIMESTAMP);
INSERT INTO person (id, id_person_type, name, document, created_at) VALUES (43, 1, UPPER('Yago Thomas Rodrigues'), '30696303590', CURRENT_TIMESTAMP);
INSERT INTO person (id, id_person_type, name, document, created_at) VALUES (44, 1, UPPER('Bruna Luna Silveira'), '23490826442', CURRENT_TIMESTAMP);
INSERT INTO person (id, id_person_type, name, document, created_at) VALUES (45, 1, UPPER('Raimundo Emanuel Moraes'), '51936356600', CURRENT_TIMESTAMP);
INSERT INTO person (id, id_person_type, name, document, created_at) VALUES (46, 1, UPPER('Edson Leandro Jorge Moraes'), '15039360312', CURRENT_TIMESTAMP);
INSERT INTO person (id, id_person_type, name, document, created_at) VALUES (47, 1, UPPER('Luna Mariana Corte Real'), '00996337873', CURRENT_TIMESTAMP);
INSERT INTO person (id, id_person_type, name, document, created_at) VALUES (48, 1, UPPER('Davi Gustavo Sebastião Almeida'), '25143491258', CURRENT_TIMESTAMP);
INSERT INTO person (id, id_person_type, name, document, created_at) VALUES (49, 1, UPPER('Marcelo José Assunção'), '88665646647', CURRENT_TIMESTAMP);
INSERT INTO person (id, id_person_type, name, document, created_at) VALUES (50, 1, UPPER('Manuela Teresinha Barros'), '18904453801', CURRENT_TIMESTAMP);
