 DROP TABLE entrenador;
 CREATE TABLE entrenador(
   id int(10),
   dpi int(10),
   nombre varchar(50),
   PRIMARY KEY(id, dpi)
) ENGINE=InnoDB;