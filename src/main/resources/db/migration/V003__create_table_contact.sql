CREATE TABLE contact (
  id INT NOT NULL AUTO_INCREMENT,
  id_person INT NOT NULL,
  phone varchar(20) NOT NULL,
  email varchar(200) NOT NULL,
  PRIMARY KEY (id),
  UNIQUE KEY id_UNIQUE (id),
  UNIQUE KEY id_person_UNIQUE (id_person),
  UNIQUE KEY phone_UNIQUE (phone),
  UNIQUE KEY email_UNIQUE (email),
  CONSTRAINT fk_person_contact FOREIGN KEY (id_person) REFERENCES person (id) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO contact (id, id_person, phone, email) VALUES (1, 1, '21986731552', UPPER('rodrigo.breno@domain.com'));
INSERT INTO contact (id, id_person, phone, email) VALUES (2, 2, '84984471875', UPPER('adriana.marcia@domain.com'));
INSERT INTO contact (id, id_person, phone, email) VALUES (3, 3, '92989419629', UPPER('isaac.renan@domain.com'));
INSERT INTO contact (id, id_person, phone, email) VALUES (4, 4, '98985998597', UPPER('ruan.iago@domain.com'));
INSERT INTO contact (id, id_person, phone, email) VALUES (5, 5, '63982688744', UPPER('julia.antonia@domain.com'));
INSERT INTO contact (id, id_person, phone, email) VALUES (6, 6, '68987789929', UPPER('arthur.tomas@domain.com'));
INSERT INTO contact (id, id_person, phone, email) VALUES (7, 7, '61981761863', UPPER('carolina.pietra@domain.com'));
INSERT INTO contact (id, id_person, phone, email) VALUES (8, 8, '61989385009', UPPER('anderson.daniel@domain.com'));
INSERT INTO contact (id, id_person, phone, email) VALUES (9, 9, '95992213318', UPPER('gael.davi@domain.com'));
INSERT INTO contact (id, id_person, phone, email) VALUES (10, 10, '44997170011', UPPER('levi.diego@domain.com'));
INSERT INTO contact (id, id_person, phone, email) VALUES (11, 11, '34989423385', UPPER('guilherme.lorenzo@domain.com'));
INSERT INTO contact (id, id_person, phone, email) VALUES (12, 12, '67983332681', UPPER('carolina.andrea@domain.com'));
INSERT INTO contact (id, id_person, phone, email) VALUES (13, 13, '27995537254', UPPER('vicente.martin@domain.com'));
INSERT INTO contact (id, id_person, phone, email) VALUES (14, 14, '79983432903', UPPER('rayssa.regina@domain.com'));
INSERT INTO contact (id, id_person, phone, email) VALUES (15, 15, '62981106469', UPPER('pietro.ian@domain.com'));
INSERT INTO contact (id, id_person, phone, email) VALUES (16, 16, '63982058108', UPPER('lucas.lorenzo@domain.com'));
INSERT INTO contact (id, id_person, phone, email) VALUES (17, 17, '82989976527', UPPER('diego.pietro@domain.com'));
INSERT INTO contact (id, id_person, phone, email) VALUES (18, 18, '79983492790', UPPER('giovanni.marcio@domain.com'));
INSERT INTO contact (id, id_person, phone, email) VALUES (19, 19, '63995890268', UPPER('rodrigo.nelson@domain.com'));
INSERT INTO contact (id, id_person, phone, email) VALUES (20, 20, '81982029513', UPPER('kevin.marcos@domain.com'));
INSERT INTO contact (id, id_person, phone, email) VALUES (21, 21, '91996472279', UPPER('alicia.carla@domain.com'));
INSERT INTO contact (id, id_person, phone, email) VALUES (22, 22, '67982712881', UPPER('ryan.leonardo@domain.com'));
INSERT INTO contact (id, id_person, phone, email) VALUES (23, 23, '71995422765', UPPER('flavia.isadora@domain.com'));
INSERT INTO contact (id, id_person, phone, email) VALUES (24, 24, '61986069681', UPPER('renata.carla@domain.com'));
INSERT INTO contact (id, id_person, phone, email) VALUES (25, 25, '98981735987', UPPER('marcos.anthony@domain.com'));
INSERT INTO contact (id, id_person, phone, email) VALUES (26, 26, '86998657775', UPPER('alana.joana@domain.com'));
INSERT INTO contact (id, id_person, phone, email) VALUES (27, 27, '66986265886', UPPER('evelyn.cristiane@domain.com'));
INSERT INTO contact (id, id_person, phone, email) VALUES (28, 28, '68996391324', UPPER('joaquim.erick@domain.com'));
INSERT INTO contact (id, id_person, phone, email) VALUES (29, 29, '81986234476', UPPER('simone.livia@domain.com'));
INSERT INTO contact (id, id_person, phone, email) VALUES (30, 30, '79982907148', UPPER('victor.enzo@domain.com'));
INSERT INTO contact (id, id_person, phone, email) VALUES (31, 31, '79982686884', UPPER('livia.agatha@domain.com'));
INSERT INTO contact (id, id_person, phone, email) VALUES (32, 32, '82983291275', UPPER('rafael.thales@domain.com'));
INSERT INTO contact (id, id_person, phone, email) VALUES (33, 33, '24994826874', UPPER('clarice.melissa@domain.com'));
INSERT INTO contact (id, id_person, phone, email) VALUES (34, 34, '47983614340', UPPER('alessandra.sophia@domain.com'));
INSERT INTO contact (id, id_person, phone, email) VALUES (35, 35, '92989791848', UPPER('danilo.caio@domain.com'));
INSERT INTO contact (id, id_person, phone, email) VALUES (36, 36, '69998358892', UPPER('paulo.enrico@domain.com'));
INSERT INTO contact (id, id_person, phone, email) VALUES (37, 37, '32981169575', UPPER('caue.danilo@domain.com'));
INSERT INTO contact (id, id_person, phone, email) VALUES (38, 38, '68987928152', UPPER('sophia.antonia@domain.com'));
INSERT INTO contact (id, id_person, phone, email) VALUES (39, 39, '91998049389', UPPER('alana.sophie@domain.com'));
INSERT INTO contact (id, id_person, phone, email) VALUES (40, 40, '92981162712', UPPER('allana.manuela@domain.com'));
INSERT INTO contact (id, id_person, phone, email) VALUES (41, 41, '61992126353', UPPER('rosa.isabela@domain.com'));
INSERT INTO contact (id, id_person, phone, email) VALUES (42, 42, '19996531107', UPPER('antonio.benedito@domain.com'));
INSERT INTO contact (id, id_person, phone, email) VALUES (43, 43, '82983590875', UPPER('yago.thomas@domain.com'));
INSERT INTO contact (id, id_person, phone, email) VALUES (44, 44, '83986357827', UPPER('bruna.luna@domain.com'));
INSERT INTO contact (id, id_person, phone, email) VALUES (45, 45, '96996888265', UPPER('raimundo.emanuel@domain.com'));
INSERT INTO contact (id, id_person, phone, email) VALUES (46, 46, '55981441539', UPPER('edson.leandro@domain.com'));
INSERT INTO contact (id, id_person, phone, email) VALUES (47, 47, '61984498263', UPPER('luna.mariana@domain.com'));
INSERT INTO contact (id, id_person, phone, email) VALUES (48, 48, '83987099446', UPPER('davi.gustavo@domain.com'));
INSERT INTO contact (id, id_person, phone, email) VALUES (49, 49, '61991522951', UPPER('marcelo.jose@domain.com'));
INSERT INTO contact (id, id_person, phone, email) VALUES (50, 50, '55994642227', UPPER('manuela.teresinha@domain.com'));