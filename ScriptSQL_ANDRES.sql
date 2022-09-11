




select a.modelo, b.nombre_marca, c.grupo_empresarial,d.fecha_compra, d.matricula , d.color, d.kilometros, e.aseguradora , e.numero_poliza  
from practicaandres.modelos a, practicaandres.marca b, practicaandres.grupo_empresarial c, practicaandres.coche d, practicaandres.seguro e
where a.id_modelo = d.id_modelo and a.id_marca = b.id_marca and c.id_grupo = b.id_grupo and d.id_coche = e.id_coche 