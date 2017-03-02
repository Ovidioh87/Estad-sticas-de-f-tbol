SELECT SUM(puntos) puntos FROM (
	SELECT puntos_local puntos FROM partido
	WHERE id_local = 010  /*ID DE EQUIPO PRA VER PUNTOS, TANTO DE VISITANTE, COMO DE LOCAL*/
    
	UNION ALL
    
	SELECT puntos_visita puntos FROM partido
	WHERE id_visitante = 010
) partidos;