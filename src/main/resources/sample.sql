CREATE TABLE person (identifier varchar(45), name varchar(45) NOT NULL, PRIMARY KEY (identifier))
;
--WITH "template=replicated,data_region=default";

--CREATE TABLE person (identifier varchar(45), name varchar(45) NOT NULL, PRIMARY KEY (identifier))
--WITH "template=replicated,data_region=rule_engine_data_region";

INSERT INTO person VALUES ('id1', 'Jeevan');
INSERT INTO person VALUES ('id2', 'Abhijeet');