CREATE TABLE modules (
id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(64) CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci' NOT NULL);

INSERT INTO modules (name) VALUES ('Docker');
INSERT INTO modules (name) VALUES ('Padrões e técnicas avançadas com Git e Github');
INSERT INTO modules (name) VALUES ('Integração contínua');
INSERT INTO modules (name) VALUES ('Kubernetes');
INSERT INTO modules (name) VALUES ('Service Mesh com Istio (em breve)');
INSERT INTO modules (name) VALUES ('Observabilidade (em breve)');
INSERT INTO modules (name) VALUES ('Deploy nos Cloud Providers (em breve)');
INSERT INTO modules (name) VALUES ('Fundamentos de Arquitetura de Software');
INSERT INTO modules (name) VALUES ('Comunicação');
INSERT INTO modules (name) VALUES ('RabbitMQ');
