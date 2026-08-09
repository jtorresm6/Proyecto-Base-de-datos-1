USE Proyectobas1;
GO

--1 Visitantes con su país de origen e idioma

SELECT 
    pv.Nombre,
    pv.Apellido,
    pv.Edad,
    pv.GrupoEtnico,
    pv_pais.pais AS PaisOrigen,
    pv_idioma.Idioma
FROM Persona_visitante pv
INNER JOIN Pais_Visita pv_pais ON pv.Id_pasaporte = pv_pais.Id_pasaporte
INNER JOIN Idioma pv_idioma ON pv.Id_pasaporte = pv_idioma.Id_pasaporte
WHERE pv.Edad > 25;

--2 Empleados con información de puesto y contacto

SELECT 
    e.Nombre,
    e.Apellido,
    p.NombrePuesto,
    p.Sueldo,
    c.CorreoElectronico,
    t.Telefono
FROM Empleado e
INNER JOIN Puesto p ON e.id_puesto = p.id_puesto
INNER JOIN CorreoElectronico c ON e.id_correo = c.id_CorreoElectronico
INNER JOIN Telefono t ON e.id_telefono = t.id_Telefono
WHERE p.Sueldo > 5000;

--3 Piezas con información completa de sala, museo y seguro

SELECT 
    p.Titulo,
    p.Descripcion,
    s.NombreSala,
    m.NombreMuseo,
    sp.Valor_Asegurado,
    sp.Compania
FROM Pieza p
INNER JOIN Sala s ON p.id_sala = s.ID_Sala
INNER JOIN Museo_arqueologico_etnico m ON s.id_museo = m.id_museo
INNER JOIN Seguro_Pieza sp ON p.Id_Pieza = sp.id_pieza
WHERE sp.Valor_Asegurado > 30000;

--4 Hallazgos con información de excavación y categoría (estado conservacion)

SELECT 
    h.Descripcion,
    h.Material,
    h.Fecha_Descubrimiento,
    h.Estado_Conservacion,
    c.Nombre_categoria,
    e.Ubicacion AS UbicacionExcavacion,
    s.Nombre_Sitio
FROM Hallazgo h
INNER JOIN Categoria_hallazgo c ON h.ID_categoria = c.Id_cate_hallazgo
INNER JOIN Excavacion e ON h.Id_Excavacion = e.id_excavacion
INNER JOIN Sitio_arqueologico s ON e.id_sitio = s.ID_Sitio
WHERE h.Estado_Conservacion = 'Excelente';

--5 Facturas agrupadas por museo con totales

SELECT 
    m.NombreMuseo,
    COUNT(f.id_factura) AS TotalFacturas,
    SUM(f.ValorIngreso) AS IngresoTotal,
    AVG(f.ValorIngreso) AS PromedioIngreso
FROM Factura f
INNER JOIN Museo_arqueologico_etnico m ON f.id_museo = m.id_museo
GROUP BY m.NombreMuseo
HAVING SUM(f.ValorIngreso) > 5;

--6 Restauraciones con información de pieza y técnico

SELECT 
    p.Titulo AS Pieza,
    r.Tecnicas_Utilizadas,
    pu.NombrePuesto AS PuestoTecnico,
    e.Nombre + ' ' + e.Apellido AS Tecnico
FROM Restauracion r
INNER JOIN Pieza p ON r.id_Pieza = p.Id_Pieza
INNER JOIN Puesto pu ON r.Id_puesto = pu.id_puesto
INNER JOIN Empleado e ON pu.id_puesto = e.id_puesto
WHERE r.Tecnicas_Utilizadas LIKE '%Limpieza%';

--Restauración,Consolidación, Limpieza

--7 Conferencias con información de boletos y asistentes

SELECT 
    c.Titulo AS Conferencia,
    c.Exponente,
    c.Fecha,
    bc.Tipo AS TipoBoleto,
    bc.Precio_Boleto,
    pv.Nombre + ' ' + pv.Apellido AS Asistente
FROM Conferencia c
INNER JOIN Boleto_conferencia bc ON c.id_boletoc = bc.id_boletoc
INNER JOIN Persona_visitante pv ON bc.id_visitante = pv.Id_pasaporte
WHERE bc.Precio_Boleto > 50 ;



--8 Excavaciones con equipos asignados y herramientas

SELECT 
    e.Ubicacion AS UbicacionExcavacion,
    e.Objetivo,
    e.Estado,
    eq.Nombre_equipo,
    eq.Responsable_Del_Equipo,
    h.Nombre_Herramienta,
    h.Tipo_Herramienta
FROM Excavacion e
INNER JOIN Equipo_Excavacion_Detalle ed ON e.id_excavacion = ed.id_excavacion
INNER JOIN Equipo_Excavacion eq ON ed.id_equipo = eq.ID_Equipo
INNER JOIN Herramienta h ON ed.id_herramienta = h.ID_herramienta
WHERE e.Estado = 'Completada';

-- Completada, En proceso, planificada

--9 Préstamos de piezas con información de instituciones

SELECT 
    p.Titulo AS PiezaPrestada,
    pp.Fecha_Salida,
    pp.Fecha_Retorno,
    i.Nombre_institucion AS InstitucionPrestataria,
    tp.Tipo AS TipoPrestamo,
    tp.Requisitos,
    CASE 
        WHEN pp.Fecha_Retorno > GETDATE() THEN 'Vigente'
        ELSE 'Vencido'
    END AS EstadoPrestamo
FROM Prestamo_Pieza pp
INNER JOIN Pieza p ON pp.RegistroPieza = p.Id_Pieza
INNER JOIN Institucion_colaboradora i ON pp.id_institucioncolab = i.id_institucioncolab
INNER JOIN Tipo_Prestamo tp ON pp.Id_Prestamo = tp.Id_Prestamo
ORDER BY pp.Fecha_Retorno DESC;


update Prestamo_Pieza set Fecha_Retorno= '2026-05-11' where RegistroMunae=1010

--10  Análisis de laboratorio con resultados detallados

SELECT 
    p.Titulo AS PiezaAnalizada,
    h.Descripcion AS HallazgoAnalizado,
    a.nomb_analisis AS TipoAnalisis,
    ad.Fecha_Analisis,
    ad.Resultado
FROM Analisis_Laboratorio_Detalle ad
INNER JOIN Analisis_laboratorio a ON ad.id_analisis = a.id_analisis
LEFT JOIN Pieza p ON ad.id_pieza = p.Id_Pieza
LEFT JOIN Hallazgo h ON ad.id_hallazgo = h.ID_Hallazgo
WHERE ad.Resultado LIKE '%fecha%';

--- buscar resultado detallado en analasis_laboratorio motagua, identificados, fecha

--11 Visitantes guiados con información de talleres

SELECT 
    vg.NombVisita_Guiada,
    vg.Idioma,
    vg.Numero_Visitantes,
    vg.Fecha_Emision,
    t.nombre AS TallerAsociado,
    t.tema AS TemaTaller,
    m.NombreMuseo
FROM Visita_Guiada vg
INNER JOIN Taller_manualidades t ON vg.id_taller = t.id_taller
INNER JOIN Museo_arqueologico_etnico m ON vg.id_museo = m.id_museo
WHERE vg.Numero_Visitantes > 20;

--12 Mantenimiento de equipos con responsables

SELECT 
    me.nomb_mantenimiento AS TipoMantenimiento,
    md.Fecha_Mantenimiento,
    md.Descripcion,
    me.Id_mantenimiento,
    e.Nombre + ' ' + e.Apellido AS Responsable,
    ss.Tipo AS EquipoSeguridad,
    ss.Nombre_equipo
FROM Mantenimiento_Equipo_Detalle md
INNER JOIN Mantenimiento_equipo me ON md.id_mantenimiento = me.Id_mantenimiento
INNER JOIN Empleado e ON md.id_empleado = e.id_empleado
INNER JOIN sistema_seguridad ss ON md.id_sistema_seguridad = ss.id_sistema_seguridad
WHERE md.Fecha_Mantenimiento BETWEEN '2025-01-01' AND '2025-01-31';

update Mantenimiento_Equipo_Detalle set Fecha_Mantenimiento= '2025-05-03' where id_detalle_mant= 1

--13 Vehículos del museo con estado activos y (mantenimiento no mostrara)

SELECT 
    v.Tipo_vehiculo,
    v.Capacidad,
    v.Estado,
    v.Matricula,
    m.NombreMuseo,
    (SELECT COUNT(*) FROM Mantenimiento_Equipo_Detalle med 
     WHERE med.id_equipo = v.Id_vehiculo) AS TotalMantenimientos
FROM Vehiculos v
INNER JOIN Museo_arqueologico_etnico m ON v.id_museo = m.id_museo
WHERE v.Estado = 'Activo';

--14 Arqueólogos con sus publicaciones y excavaciones

SELECT 
    a.Nombre_Arqueologo,
    exc.Estado,
    e.Nombre + ' ' + e.Apellido AS Empleado,
    pc.nomb_publicacion AS Publicacion,
    s.Nombre_Sitio AS SitioInvestigacion,
    exc.Ubicacion AS UbicacionExcavacion
FROM Arqueologo a
INNER JOIN Empleado e ON a.id_empleado = e.id_empleado
INNER JOIN Publicacion_cientifica pc ON e.id_empleado = pc.id_publicacion
INNER JOIN Sitio_arqueologico s ON pc.ID_Sitio = s.ID_Sitio
INNER JOIN Excavacion exc ON s.ID_Sitio = exc.id_sitio
WHERE exc.Estado = 'completada';

-- estados posibles ,en proceso, completada, planificada.

--15 Informes de excavación con hallazgos asociados
-- arqueologo, informe_excavacion, sitio_arqueologico, excavacion

SELECT 
    ie.Titulo AS Informe,
    ie.Autor,
    ie.Conclusiones,
    exc.Ubicacion AS UbicacionExcavacion,
    exc.Objetivo,
    (SELECT COUNT(*) FROM Hallazgo h 
     WHERE h.Id_Excavacion = exc.id_excavacion) AS TotalHallazgos,
    (SELECT STRING_AGG(h.Descripcion, '; ') 
     FROM Hallazgo h 
     WHERE h.Id_Excavacion = exc.id_excavacion) AS DescripcionesHallazgos
FROM Informe_Excavacion ie
INNER JOIN Excavacion exc ON ie.id_excavacion = exc.id_excavacion
INNER JOIN Sitio_arqueologico s ON exc.id_sitio = s.ID_Sitio
WHERE exc.Fecha_inicio >= '2025-01-01'
ORDER BY TotalHallazgos DESC;









