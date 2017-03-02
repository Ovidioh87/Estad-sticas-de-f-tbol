DROP TABLE estadio;
CREATE TABLE estadio(
	   id int primary key,
	   nombre varchar(50) not null,
	   id_pais int(10),
	   FOREIGN KEY fk_pais(id_pais)
	   REFERENCES pais(id)
	   ON UPDATE CASCADE
	   ON DELETE RESTRICT
)ENGINE=InnoDB;