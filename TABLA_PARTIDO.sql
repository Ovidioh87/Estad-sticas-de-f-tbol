DROP TABLE partido;
CREATE TABLE partido(
   id int primary key,
   fecha date not null,
   hora time not null,
   goles_visita int(10),
   goles_local int(10),
   puntos_visita int(10),	
   puntos_local int(10),
   id_estadio int(10),
   id_visitante int(10),
   id_local int(10),
   FOREIGN KEY fk_estadio(id_estadio)
   REFERENCES estadio(id)
   ON UPDATE CASCADE
   ON DELETE RESTRICT,
   FOREIGN KEY fk_visitante(id_visitante)
   REFERENCES equipo(id)
   ON UPDATE CASCADE
   ON DELETE RESTRICT,
   FOREIGN KEY fk_local(id_local)
   REFERENCES equipo(id)
   ON UPDATE CASCADE
   ON DELETE RESTRICT
)ENGINE=InnoDB;
