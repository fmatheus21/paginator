CREATE TABLE user (
  id INT NOT NULL AUTO_INCREMENT,
  id_person INT NOT NULL,
  username varchar(50) NOT NULL,
  password varchar(200) NOT NULL,
  active tinyint(1) NOT NULL DEFAULT '1',
  created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (id),
  UNIQUE KEY id_UNIQUE (id),
  UNIQUE KEY id_person_UNIQUE (id_person),
  UNIQUE KEY username_UNIQUE (username),
  CONSTRAINT fk_person_user FOREIGN KEY (id_person) REFERENCES person (id) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


INSERT INTO user (id, id_person, username, password, active, created_at, updated_at) VALUES (1, 1, UPPER('rodrigo.breno@domain.com'), '$2a$10$04MQf8gTMmbC1aosZajxeO.r1fCtjLbvpVfbZQJD7XbR0oFQ9X1AC', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO user (id, id_person, username, password, active, created_at, updated_at) VALUES (2, 2, UPPER('adriana.marcia@domain.com'), '$2a$10$04MQf8gTMmbC1aosZajxeO.r1fCtjLbvpVfbZQJD7XbR0oFQ9X1AC', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO user (id, id_person, username, password, active, created_at, updated_at) VALUES (3, 3, UPPER('isaac.renan@domain.com'), '$2a$10$04MQf8gTMmbC1aosZajxeO.r1fCtjLbvpVfbZQJD7XbR0oFQ9X1AC', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO user (id, id_person, username, password, active, created_at, updated_at) VALUES (4, 4, UPPER('ruan.iago@domain.com'), '$2a$10$04MQf8gTMmbC1aosZajxeO.r1fCtjLbvpVfbZQJD7XbR0oFQ9X1AC', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO user (id, id_person, username, password, active, created_at, updated_at) VALUES (5, 5, UPPER('julia.antonia@domain.com'), '$2a$10$04MQf8gTMmbC1aosZajxeO.r1fCtjLbvpVfbZQJD7XbR0oFQ9X1AC', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO user (id, id_person, username, password, active, created_at, updated_at) VALUES (6, 6, UPPER('arthur.tomas@domain.com'), '$2a$10$04MQf8gTMmbC1aosZajxeO.r1fCtjLbvpVfbZQJD7XbR0oFQ9X1AC', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO user (id, id_person, username, password, active, created_at, updated_at) VALUES (7, 7, UPPER('carolina.pietra@domain.com'), '$2a$10$04MQf8gTMmbC1aosZajxeO.r1fCtjLbvpVfbZQJD7XbR0oFQ9X1AC', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO user (id, id_person, username, password, active, created_at, updated_at) VALUES (8, 8, UPPER('anderson.daniel@domain.com'), '$2a$10$04MQf8gTMmbC1aosZajxeO.r1fCtjLbvpVfbZQJD7XbR0oFQ9X1AC', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO user (id, id_person, username, password, active, created_at, updated_at) VALUES (9, 9, UPPER('gael.davi@domain.com'), '$2a$10$04MQf8gTMmbC1aosZajxeO.r1fCtjLbvpVfbZQJD7XbR0oFQ9X1AC', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO user (id, id_person, username, password, active, created_at, updated_at) VALUES (10, 10, UPPER('levi.diego@domain.com'), '$2a$10$04MQf8gTMmbC1aosZajxeO.r1fCtjLbvpVfbZQJD7XbR0oFQ9X1AC', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO user (id, id_person, username, password, active, created_at, updated_at) VALUES (11, 11, UPPER('guilherme.lorenzo@domain.com'), '$2a$10$04MQf8gTMmbC1aosZajxeO.r1fCtjLbvpVfbZQJD7XbR0oFQ9X1AC', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO user (id, id_person, username, password, active, created_at, updated_at) VALUES (12, 12, UPPER('carolina.andrea@domain.com'), '$2a$10$04MQf8gTMmbC1aosZajxeO.r1fCtjLbvpVfbZQJD7XbR0oFQ9X1AC', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO user (id, id_person, username, password, active, created_at, updated_at) VALUES (13, 13, UPPER('vicente.martin@domain.com'), '$2a$10$04MQf8gTMmbC1aosZajxeO.r1fCtjLbvpVfbZQJD7XbR0oFQ9X1AC', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO user (id, id_person, username, password, active, created_at, updated_at) VALUES (14, 14, UPPER('rayssa.regina@domain.com'), '$2a$10$04MQf8gTMmbC1aosZajxeO.r1fCtjLbvpVfbZQJD7XbR0oFQ9X1AC', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO user (id, id_person, username, password, active, created_at, updated_at) VALUES (15, 15, UPPER('pietro.ian@domain.com'), '$2a$10$04MQf8gTMmbC1aosZajxeO.r1fCtjLbvpVfbZQJD7XbR0oFQ9X1AC', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO user (id, id_person, username, password, active, created_at, updated_at) VALUES (16, 16, UPPER('lucas.lorenzo@domain.com'), '$2a$10$04MQf8gTMmbC1aosZajxeO.r1fCtjLbvpVfbZQJD7XbR0oFQ9X1AC', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO user (id, id_person, username, password, active, created_at, updated_at) VALUES (17, 17, UPPER('diego.pietro@domain.com'), '$2a$10$04MQf8gTMmbC1aosZajxeO.r1fCtjLbvpVfbZQJD7XbR0oFQ9X1AC', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO user (id, id_person, username, password, active, created_at, updated_at) VALUES (18, 18, UPPER('giovanni.marcio@domain.com'), '$2a$10$04MQf8gTMmbC1aosZajxeO.r1fCtjLbvpVfbZQJD7XbR0oFQ9X1AC', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO user (id, id_person, username, password, active, created_at, updated_at) VALUES (19, 19, UPPER('rodrigo.nelson@domain.com'), '$2a$10$04MQf8gTMmbC1aosZajxeO.r1fCtjLbvpVfbZQJD7XbR0oFQ9X1AC', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO user (id, id_person, username, password, active, created_at, updated_at) VALUES (20, 20, UPPER('kevin.marcos@domain.com'), '$2a$10$04MQf8gTMmbC1aosZajxeO.r1fCtjLbvpVfbZQJD7XbR0oFQ9X1AC', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO user (id, id_person, username, password, active, created_at, updated_at) VALUES (21, 21, UPPER('alicia.carla@domain.com'), '$2a$10$04MQf8gTMmbC1aosZajxeO.r1fCtjLbvpVfbZQJD7XbR0oFQ9X1AC', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO user (id, id_person, username, password, active, created_at, updated_at) VALUES (22, 22, UPPER('ryan.leonardo@domain.com'), '$2a$10$04MQf8gTMmbC1aosZajxeO.r1fCtjLbvpVfbZQJD7XbR0oFQ9X1AC', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO user (id, id_person, username, password, active, created_at, updated_at) VALUES (23, 23, UPPER('flavia.isadora@domain.com'), '$2a$10$04MQf8gTMmbC1aosZajxeO.r1fCtjLbvpVfbZQJD7XbR0oFQ9X1AC', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO user (id, id_person, username, password, active, created_at, updated_at) VALUES (24, 24, UPPER('renata.carla@domain.com'), '$2a$10$04MQf8gTMmbC1aosZajxeO.r1fCtjLbvpVfbZQJD7XbR0oFQ9X1AC', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO user (id, id_person, username, password, active, created_at, updated_at) VALUES (25, 25, UPPER('marcos.anthony@domain.com'), '$2a$10$04MQf8gTMmbC1aosZajxeO.r1fCtjLbvpVfbZQJD7XbR0oFQ9X1AC', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO user (id, id_person, username, password, active, created_at, updated_at) VALUES (26, 26, UPPER('alana.joana@domain.com'), '$2a$10$04MQf8gTMmbC1aosZajxeO.r1fCtjLbvpVfbZQJD7XbR0oFQ9X1AC', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO user (id, id_person, username, password, active, created_at, updated_at) VALUES (27, 27, UPPER('evelyn.cristiane@domain.com'), '$2a$10$04MQf8gTMmbC1aosZajxeO.r1fCtjLbvpVfbZQJD7XbR0oFQ9X1AC', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO user (id, id_person, username, password, active, created_at, updated_at) VALUES (28, 28, UPPER('joaquim.erick@domain.com'), '$2a$10$04MQf8gTMmbC1aosZajxeO.r1fCtjLbvpVfbZQJD7XbR0oFQ9X1AC', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO user (id, id_person, username, password, active, created_at, updated_at) VALUES (29, 29, UPPER('simone.livia@domain.com'), '$2a$10$04MQf8gTMmbC1aosZajxeO.r1fCtjLbvpVfbZQJD7XbR0oFQ9X1AC', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO user (id, id_person, username, password, active, created_at, updated_at) VALUES (30, 30, UPPER('victor.enzo@domain.com'), '$2a$10$04MQf8gTMmbC1aosZajxeO.r1fCtjLbvpVfbZQJD7XbR0oFQ9X1AC', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO user (id, id_person, username, password, active, created_at, updated_at) VALUES (31, 31, UPPER('livia.agatha@domain.com'), '$2a$10$04MQf8gTMmbC1aosZajxeO.r1fCtjLbvpVfbZQJD7XbR0oFQ9X1AC', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO user (id, id_person, username, password, active, created_at, updated_at) VALUES (32, 32, UPPER('rafael.thales@domain.com'), '$2a$10$04MQf8gTMmbC1aosZajxeO.r1fCtjLbvpVfbZQJD7XbR0oFQ9X1AC', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO user (id, id_person, username, password, active, created_at, updated_at) VALUES (33, 33, UPPER('clarice.melissa@domain.com'), '$2a$10$04MQf8gTMmbC1aosZajxeO.r1fCtjLbvpVfbZQJD7XbR0oFQ9X1AC', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO user (id, id_person, username, password, active, created_at, updated_at) VALUES (34, 34, UPPER('alessandra.sophia@domain.com'), '$2a$10$04MQf8gTMmbC1aosZajxeO.r1fCtjLbvpVfbZQJD7XbR0oFQ9X1AC', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO user (id, id_person, username, password, active, created_at, updated_at) VALUES (35, 35, UPPER('danilo.caio@domain.com'), '$2a$10$04MQf8gTMmbC1aosZajxeO.r1fCtjLbvpVfbZQJD7XbR0oFQ9X1AC', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO user (id, id_person, username, password, active, created_at, updated_at) VALUES (36, 36, UPPER('paulo.enrico@domain.com'), '$2a$10$04MQf8gTMmbC1aosZajxeO.r1fCtjLbvpVfbZQJD7XbR0oFQ9X1AC', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO user (id, id_person, username, password, active, created_at, updated_at) VALUES (37, 37, UPPER('caue.danilo@domain.com'), '$2a$10$04MQf8gTMmbC1aosZajxeO.r1fCtjLbvpVfbZQJD7XbR0oFQ9X1AC', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO user (id, id_person, username, password, active, created_at, updated_at) VALUES (38, 38, UPPER('sophia.antonia@domain.com'), '$2a$10$04MQf8gTMmbC1aosZajxeO.r1fCtjLbvpVfbZQJD7XbR0oFQ9X1AC', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO user (id, id_person, username, password, active, created_at, updated_at) VALUES (39, 39, UPPER('alana.sophie@domain.com'), '$2a$10$04MQf8gTMmbC1aosZajxeO.r1fCtjLbvpVfbZQJD7XbR0oFQ9X1AC', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO user (id, id_person, username, password, active, created_at, updated_at) VALUES (40, 40, UPPER('allana.manuela@domain.com'), '$2a$10$04MQf8gTMmbC1aosZajxeO.r1fCtjLbvpVfbZQJD7XbR0oFQ9X1AC', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO user (id, id_person, username, password, active, created_at, updated_at) VALUES (41, 41, UPPER('rosa.isabela@domain.com'), '$2a$10$04MQf8gTMmbC1aosZajxeO.r1fCtjLbvpVfbZQJD7XbR0oFQ9X1AC', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO user (id, id_person, username, password, active, created_at, updated_at) VALUES (42, 42, UPPER('antonio.benedito@domain.com'), '$2a$10$04MQf8gTMmbC1aosZajxeO.r1fCtjLbvpVfbZQJD7XbR0oFQ9X1AC', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO user (id, id_person, username, password, active, created_at, updated_at) VALUES (43, 43, UPPER('yago.thomas@domain.com'), '$2a$10$04MQf8gTMmbC1aosZajxeO.r1fCtjLbvpVfbZQJD7XbR0oFQ9X1AC', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO user (id, id_person, username, password, active, created_at, updated_at) VALUES (44, 44, UPPER('bruna.luna@domain.com'), '$2a$10$04MQf8gTMmbC1aosZajxeO.r1fCtjLbvpVfbZQJD7XbR0oFQ9X1AC', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO user (id, id_person, username, password, active, created_at, updated_at) VALUES (45, 45, UPPER('raimundo.emanuel@domain.com'), '$2a$10$04MQf8gTMmbC1aosZajxeO.r1fCtjLbvpVfbZQJD7XbR0oFQ9X1AC', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO user (id, id_person, username, password, active, created_at, updated_at) VALUES (46, 46, UPPER('edson.leandro@domain.com'), '$2a$10$04MQf8gTMmbC1aosZajxeO.r1fCtjLbvpVfbZQJD7XbR0oFQ9X1AC', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO user (id, id_person, username, password, active, created_at, updated_at) VALUES (47, 47, UPPER('luna.mariana@domain.com'), '$2a$10$04MQf8gTMmbC1aosZajxeO.r1fCtjLbvpVfbZQJD7XbR0oFQ9X1AC', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO user (id, id_person, username, password, active, created_at, updated_at) VALUES (48, 48, UPPER('davi.gustavo@domain.com'), '$2a$10$04MQf8gTMmbC1aosZajxeO.r1fCtjLbvpVfbZQJD7XbR0oFQ9X1AC', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO user (id, id_person, username, password, active, created_at, updated_at) VALUES (49, 49, UPPER('marcelo.jose@domain.com'), '$2a$10$04MQf8gTMmbC1aosZajxeO.r1fCtjLbvpVfbZQJD7XbR0oFQ9X1AC', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO user (id, id_person, username, password, active, created_at, updated_at) VALUES (50, 50, UPPER('manuela.teresinha@domain.com'), '$2a$10$04MQf8gTMmbC1aosZajxeO.r1fCtjLbvpVfbZQJD7XbR0oFQ9X1AC', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
