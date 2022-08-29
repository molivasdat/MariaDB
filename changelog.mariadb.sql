--liquibase formatted sql

--changeset MikeO:45555-createtablecontacts
CREATE TABLE contacts (
  id int PRIMARY KEY,
  firstname VARCHAR(255),
  lastname VARCHAR(255)
);
--rollback drop table contacts;

--changeset MikeO:45555-createtableactor
CREATE TABLE actor (
	"Name" char(1) NULL
);
--rollback drop table actor;

--changeset MikeO:45556-altertableactor
ALTER TABLE actor
  ADD COLUMN twitter VARCHAR(15);
--rollback alter table actor drop column twitter;
 
--changeset AmyS:45678-createtablecolors
CREATE TABLE colors (
  id int PRIMARY KEY,
  bcolor VARCHAR,
  fcolor VARCHAR
);
--rollback drop table colors;
 
--changeset AdeelM:45679-insertcolors
INSERT INTO colors (bcolor, fcolor)
VALUES
  ('red', 'red'),
  ('red', 'red'),
  ('red', NULL),
  (NULL, 'red'),
  ('red', 'green'),
  ('red', 'blue'),
  ('green', 'red'),
  ('green', 'blue'),
  ('green', 'green'),
  ('blue', 'red'),
  ('blue', 'green'),
  ('blue', 'blue');
--rollback delete from colors where bcolor = 'red' and fcolor = 'red';
--rollback delete from colors where bcolor = 'red' and fcolor IS NULL;
--rollback delete from colors where bcolor IS NULL and fcolor = 'red';
--rollback delete from colors where bcolor = 'red' and fcolor = 'green';
--rollback delete from colors where bcolor = 'red' and fcolor = 'blue';
--rollback delete from colors where bcolor = 'green' and fcolor = 'red';
--rollback delete from colors where bcolor = 'green' and fcolor = 'blue';
--rollback delete from colors where bcolor = 'green' and fcolor = 'green';
--rollback delete from colors where bcolor = 'blue' and fcolor = 'red';
--rollback delete from colors where bcolor = 'blue' and fcolor = 'green';
--rollback delete from colors where bcolor = 'blue' and fcolor = 'blue';
