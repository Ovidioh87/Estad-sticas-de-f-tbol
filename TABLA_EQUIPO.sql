DROP TABLE equipo;
CREATE TABLE equipo(
   id int primary key,
   nombre varchar(50) not null,
   id_entrenador int(10),
   FOREIGN KEY fk_entrenador(id_entrenador)
   REFERENCES entrenador(id)
   ON UPDATE CASCADE
   ON DELETE RESTRICT
)ENGINE=InnoDB;
