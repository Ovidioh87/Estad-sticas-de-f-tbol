DROP TABLE resultado;
CREATE TABLE resultado(
	id int primary key,
    id_equipo int,
    goles int(10),
    puntos int(10),
    id_estatus int(10),
    id_partidonuevo int(10),
    FOREIGN KEY fk_equipo(id_equipo)
	REFERENCES equipo(id)
    ON UPDATE CASCADE
    ON DELETE RESTRICT,
    FOREIGN KEY fk_estatus(id_estatus)
    REFERENCES estatus(id)
    ON UPDATE CASCADE
    ON DELETE RESTRICT
)ENGINE=InnoDB;