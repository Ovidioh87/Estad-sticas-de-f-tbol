DROP TABLE partidonuevo;
CREATE TABLE partidonuevo(
   id int primary key,
   fecha date not null,
   hora time not null,
   id_estadio int(10),
   FOREIGN KEY fk_estadio(id_estadio)
   REFERENCES estadio(id)
   ON UPDATE CASCADE
   ON DELETE RESTRICT
)ENGINE=InnoDB;