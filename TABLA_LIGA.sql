DROP TABLE liga;
CREATE TABLE liga(
   id int(10) primary key,
   nombre varchar(50) not null,
   descripción varchar(50) not null,
   id_pais int(10),
   id_continente int(10),
   FOREIGN KEY fk_pais(id_pais)
   REFERENCES pais(id)
   ON UPDATE CASCADE
   ON DELETE RESTRICT,
   FOREIGN KEY fk_continente(id_continente)
   REFERENCES continente(id)
   ON UPDATE CASCADE
   ON DELETE RESTRICT
)ENGINE=InnoDB;
