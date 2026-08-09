create database Proyectobas1

--1

CREATE TABLE Persona_visitante (
    Id_pasaporte VARCHAR(20) PRIMARY KEY,
    Nombre VARCHAR(50),
    Apellido VARCHAR(50),
    sexo VARCHAR(10),
    Edad INT,
    GrupoEtnico VARCHAR(50),
    id_fichaingreso int
);
--2
CREATE TABLE Pais_Visita (
    id_pais INT PRIMARY KEY,
    pais VARCHAR(50),
    Id_pasaporte VARCHAR(20)
);
--3
CREATE TABLE Idioma (
    ID_idioma INT PRIMARY KEY,
    Idioma VARCHAR(50),
    Id_pasaporte VARCHAR(20)
);
--4
CREATE TABLE Discapacidad (
    ID_Discapacidad INT PRIMARY KEY,
    Nombre_Discapacidad VARCHAR(50),
    Id_pasaporte VARCHAR(20)
);


--5
CREATE TABLE CorreoElectronico (
    id_CorreoElectronico INT PRIMARY KEY,
    CorreoElectronico VARCHAR(100)
);

CREATE TABLE Telefono (
    id_Telefono INT PRIMARY KEY,
    Telefono VARCHAR(15)
);

--6

CREATE TABLE Puesto (
    id_puesto INT PRIMARY KEY,
    NombrePuesto VARCHAR(50),
    HorarioES VARCHAR(50),
    Sueldo DECIMAL(10,2),
);
--7
CREATE TABLE Empleado (
    id_empleado INT PRIMARY KEY,
    Nombre VARCHAR(50),
    Apellido VARCHAR(50),
    Edad INT,
    DPI VARCHAR(20),
    IGSS VARCHAR(20),
    IRTRA VARCHAR(20),
    HorasExtras INT,
    Fecha_contratacion DATE,
    id_horario INT,
    Jornada VARCHAR(30),
    id_puesto INT,
    id_correo INT,
    id_telefono INT
);
--8
CREATE TABLE Museo_arqueologico_etnico (
    id_museo INT PRIMARY KEY,
    NombreMuseo VARCHAR(100),
    Tipo VARCHAR(50),
    Horario VARCHAR(50),
    PrecioEntrada DECIMAL(10,2)
);
--9

CREATE TABLE Ficha_Ingreso (
    id_fichaingreso INT PRIMARY KEY,
    Latitud VARCHAR(50),
    Longitud VARCHAR(50),
    Municipio VARCHAR(50),
    nombre_ficha VARCHAR(50),
    Departamento VARCHAR(50),
    id_empleado INT,
    id_museo INT
);
--10
CREATE TABLE Factura (
    id_factura INT PRIMARY KEY,
    ValorIngreso DECIMAL(10,2),
    Acuerdo_Gubernativo VARCHAR(50),
    fecha DATE,
    descripcion VARCHAR(100),
    id_museo INT
);
--10
CREATE TABLE Taller_manualidades (
    id_taller INT PRIMARY KEY,
    nombre VARCHAR(50),
    Encargado VARCHAR(50),
    tema VARCHAR(50),
    fecha DATE,
    lugar VARCHAR(50),
    id_museo INT
);
--11
CREATE TABLE RegistroMunae (
    RegistroMunae INT PRIMARY KEY
);
--12
CREATE TABLE Arqueologo (
    Id_Arqueologo INT PRIMARY KEY,
    Nombre_Arqueologo VARCHAR(100),
    id_empleado INT
);
--13
CREATE TABLE Institucion_colaboradora (
    id_institucioncolab INT PRIMARY KEY,
    Nombre_institucion VARCHAR(100)
);
--14
CREATE TABLE Vehiculos (
    Id_vehiculo INT PRIMARY KEY,
    Tipo_vehiculo VARCHAR(50),
    Capacidad INT,
    Estado VARCHAR(50),
    Matricula VARCHAR(20),
    id_museo INT
);
--15
CREATE TABLE Categoria_hallazgo (
    Id_cate_hallazgo INT PRIMARY KEY,
    Nombre_categoria VARCHAR(50),
    Descripcion VARCHAR(100)
);
--16
CREATE TABLE Sala (
    ID_Sala INT PRIMARY KEY,
    NombreSala VARCHAR(50),
    id_museo INT
);
--17
CREATE TABLE Pieza (
    Id_Pieza INT PRIMARY KEY,
    Titulo VARCHAR(50),
    Municipio VARCHAR(50),
    Pais VARCHAR(50),
    Periodo VARCHAR(50),
    Descripcion VARCHAR(100),
    RegistroMunae INT,
    id_sala INT
);
--18
CREATE TABLE Restauracion (
    Id_Restauracion INT PRIMARY KEY,
    RegistroMunae INT,
    id_Pieza INT,
    Tecnicas_Utilizadas VARCHAR(100),
    Id_puesto INT
);
--19
CREATE TABLE Evento_cultural (
    Id_evento INT PRIMARY KEY,
    Nombre_evento VARCHAR(100),
    id_museo INT
);
--20
CREATE TABLE Exposicion (
    Id_Expo INT PRIMARY KEY,
    Nombre_exposicion VARCHAR(100),
    id_museo INT
);
--21
CREATE TABLE Bodega (
    Id_bodega INT PRIMARY KEY,
    Nombre_bodega VARCHAR(100),
    id_museo int
);
--22
CREATE TABLE Mantenimiento_equipo (
    Id_mantenimiento INT PRIMARY KEY,
    nomb_mantenimiento VARCHAR(100)
    
);
--23

CREATE TABLE Fotografia_hallazgo (
    Id_fotoh INT PRIMARY KEY,
    nombre_fotoh VARCHAR(100),
    ID_Sitio Int
);
--24
CREATE TABLE Hallazgo (
    ID_Hallazgo INT PRIMARY KEY,
    ID_categoria INT,
    Id_Excavacion INT,
    Material VARCHAR(50),
    Fecha_Descubrimiento DATE,
    Estado_Conservacion VARCHAR(50),
    Descripcion VARCHAR(100)
);
--25
CREATE TABLE Sitio_arqueologico (
    ID_Sitio INT PRIMARY KEY,
    Nombre_Sitio VARCHAR(100),
    Ubicacion VARCHAR(100),
    Estado_conservacion VARCHAR(100),
    Periodo_Cultural VARCHAR(100)
);
--26
CREATE TABLE Visita_Guiada (
    Id_Visita INT PRIMARY KEY,
    NombVisita_Guiada VARCHAR(100),
    Idioma VARCHAR(50),
    Numero_Visitantes INT,
    Fecha_Emision DATE,
    id_taller int,
    id_museo INT
);
--27
CREATE TABLE Excavacion (
    id_excavacion INT PRIMARY KEY,
    id_sitio INT,
    Fecha_inicio DATE,
    Fecha_fin DATE,
    Estado VARCHAR(50),
    Objetivo VARCHAR(100),
    Ubicacion VARCHAR(100)
);
--28
CREATE TABLE Informe_Excavacion (
    id_informe INT PRIMARY KEY,
    id_excavacion INT,
    Titulo VARCHAR(100),
    Autor VARCHAR(50),
    Conclusiones VARCHAR(200)
);
--29
CREATE TABLE Analisis_laboratorio (
    id_analisis INT PRIMARY KEY,
    nomb_analisis VARCHAR(100)
);
--30

CREATE TABLE Convenio_Excavacion (
    id_convenio INT PRIMARY KEY,
    nomb_conv VARCHAR(100),
    ID_Sitio int
);
--31

CREATE TABLE Publicacion_cientifica (
    id_publicacion INT PRIMARY KEY,
    nomb_publicacion VARCHAR(100),
    ID_Sitio int 
);
--32
CREATE TABLE Permiso_gobierno (
    id_permgobierno INT PRIMARY KEY,
    nomb_permgobierno VARCHAR(100)
);
--33
CREATE TABLE Seguro_Pieza (
    id_seguro_pieza INT PRIMARY KEY,
    NombSegurop VARCHAR(100),
    Valor_Asegurado DECIMAL(10,2),
    Compania VARCHAR(100),
    id_pieza INT,
    RegistroMunae INT
);
--34
CREATE TABLE sistema_seguridad (
     id_sistema_seguridad  INT PRIMARY KEY,
    Tipo VARCHAR(50),
    Modelo VARCHAR(50),
    Nombre_equipo VARCHAR(100)
);
--35
CREATE TABLE Horario_seguridad (
    id_horarioseg INT PRIMARY KEY,
    Nombre_Horarioseg VARCHAR(100),
     id_sistema_seguridad  INT
);
--36
CREATE TABLE Boleto_conferencia (
    id_boletoc INT PRIMARY KEY,
    Tipo VARCHAR(50),
    Precio_Boleto DECIMAL(10,2),
    Fecha_Emision DATE,
    id_visitante VARCHAR(20)
);
--37
CREATE TABLE Conferencia (
    Id_Conferencia INT PRIMARY KEY,
    Titulo VARCHAR(100),
    Fecha DATE,
    Exponente VARCHAR(100),
    Publico_Objetivo VARCHAR(100),
    Lugar VARCHAR(100),
    id_taller int,
    id_boletoc int,
    id_museo INT
);
--38
CREATE TABLE Equipo_Excavacion (
    ID_Equipo INT PRIMARY KEY,
    Nombre_equipo VARCHAR(100),
    Responsable_Del_Equipo VARCHAR(100),
    Numero_Integrantes INT
);
--39
CREATE TABLE Herramienta (
    ID_herramienta INT PRIMARY KEY,
    Nombre_Herramienta VARCHAR(100),
    Tipo_Herramienta VARCHAR(50),
    Estado VARCHAR(50),
    Cantidad INT
);
--40
CREATE TABLE Prestamo_Pieza (
    Id_Prestamo INT PRIMARY KEY,
    RegistroPieza INT,
    RegistroMunae INT,
    id_institucioncolab INT,
    Fecha_Salida DATE,
    Fecha_Retorno DATE
);
--41
CREATE TABLE Tipo_Prestamo (
    Id_tipo_prestamo INT PRIMARY KEY,
    Id_Prestamo INT,
    Requisitos VARCHAR(100),
    Descripcion VARCHAR(100),
    Tipo VARCHAR(50)
);
--42
CREATE TABLE Equipo_Excavacion_Detalle (
    id_detalle INT PRIMARY KEY,
    id_equipo INT,
    id_herramienta INT,
    id_excavacion INT,
    Fecha_Asignacion DATE,
    Observaciones VARCHAR(150)
);


--43
CREATE TABLE Analisis_Laboratorio_Detalle (
    id_detalle_analisis INT PRIMARY KEY,
    id_analisis INT,
    id_pieza INT,
    id_hallazgo INT,
    Fecha_Analisis DATE,
    Resultado VARCHAR(150)
);
--44
CREATE TABLE Permiso_Gobierno_Detalle (
    id_detalle_permiso INT PRIMARY KEY,
    id_permgobierno INT,
    id_excavacion INT,
    id_restauracion INT,
    Fecha_Aprobacion DATE,
    Vigencia DATE
);
--45

CREATE TABLE Mantenimiento_Equipo_Detalle (
    id_detalle_mant INT PRIMARY KEY,
    id_mantenimiento INT,
    id_equipo INT,
    id_empleado INT,
    id_sistema_seguridad int,
    Fecha_Mantenimiento DATE,
    Descripcion VARCHAR(150)
);



--TABLA Bitacora_persona_visitante 46
CREATE TABLE Bitacora_Factura (
    id_bitacora INT IDENTITY(1,1) PRIMARY KEY,
    id_factura INT,
    ValorIngreso DECIMAL(10,2),
    Acuerdo_Gubernativo VARCHAR(50),
    fecha DATE,
    descripcion VARCHAR(100),
    id_museo INT,
    accion VARCHAR(10),       
    usuario VARCHAR(50),    
    TablaAfectada NVARCHAR(100),
    Explicacion NVARCHAR(MAX),
    fecha_modificacion DATETIME DEFAULT GETDATE()
);
--47
CREATE TABLE Bitacora_PersonaVisitante (
    id_bitacora INT IDENTITY(1,1) PRIMARY KEY,
    Id_pasaporte VARCHAR(20),
    Nombre VARCHAR(50),
    Apellido VARCHAR(50),
    sexo VARCHAR(10),
    Edad INT,
    GrupoEtnico VARCHAR(50),
    id_fichaingreso INT,
    accion VARCHAR(10),
    usuario VARCHAR(50),
    TablaAfectada NVARCHAR(100),
    Descripcion NVARCHAR(MAX),
    fecha_modificacion DATETIME DEFAULT GETDATE()
);
--48
CREATE TABLE Bitacora_PaisVisita (
    id_bitacora INT IDENTITY(1,1) PRIMARY KEY,
    id_pais INT,
    pais VARCHAR(50),
    Id_pasaporte VARCHAR(20),
    accion VARCHAR(10),
    usuario VARCHAR(50),
    TablaAfectada NVARCHAR(100),
    Descripcion NVARCHAR(MAX),
    fecha_modificacion DATETIME DEFAULT GETDATE()
);
--49
CREATE TABLE Bitacora_Idioma (
    id_bitacora INT IDENTITY(1,1) PRIMARY KEY,
    ID_idioma INT,
    Idioma VARCHAR(50),
    Id_pasaporte VARCHAR(20),
    accion VARCHAR(10),
    usuario VARCHAR(50),
    TablaAfectada NVARCHAR(100),
    Descripcion NVARCHAR(MAX),
    fecha_modificacion DATETIME DEFAULT GETDATE()
);

-- 50
CREATE TABLE renglon11 (
    id_renglon11 int primary key,
    id_puesto int,
    BonoIncentivo DECIMAL(10,2),
    Bono14 DECIMAL(10,2),
    Aguinaldo DECIMAL(10,2)
);


-- Relaciones Persona_visitante
ALTER TABLE Pais_Visita ADD CONSTRAINT FK_PaisVisitante FOREIGN KEY (Id_pasaporte) REFERENCES Persona_visitante(Id_pasaporte);
ALTER TABLE Idioma ADD CONSTRAINT FK_IdiomaVisitante FOREIGN KEY (Id_pasaporte) REFERENCES Persona_visitante(Id_pasaporte);
ALTER TABLE Discapacidad ADD CONSTRAINT FK_DiscapacidadVisitante FOREIGN KEY (Id_pasaporte) REFERENCES Persona_visitante(Id_pasaporte);

-- Relaciones Empleado
ALTER TABLE Empleado ADD CONSTRAINT FK_PuestoEmpleado FOREIGN KEY (id_puesto) REFERENCES Puesto(id_puesto);
ALTER TABLE Empleado ADD CONSTRAINT FK_CorreoEmpleado FOREIGN KEY (id_correo) REFERENCES CorreoElectronico(id_CorreoElectronico);
ALTER TABLE Empleado ADD CONSTRAINT FK_TelefonoEmpleado FOREIGN KEY (id_telefono) REFERENCES Telefono(id_Telefono);

-- Relaciones Ficha_Ingreso
ALTER TABLE Ficha_Ingreso ADD CONSTRAINT FK_FichaEmpleado FOREIGN KEY (id_empleado) REFERENCES Empleado(id_empleado);
ALTER TABLE Ficha_Ingreso ADD CONSTRAINT FK_FichaMuseo FOREIGN KEY (id_museo) REFERENCES Museo_arqueologico_etnico(id_museo);

-- Relaciones Factura, Taller, Sala, Evento, Exposición, Conferencia
ALTER TABLE Factura ADD CONSTRAINT FK_FacturaMuseo FOREIGN KEY (id_museo) REFERENCES Museo_arqueologico_etnico(id_museo);
ALTER TABLE Taller_manualidades ADD CONSTRAINT FK_TallerMuseo FOREIGN KEY (id_museo) REFERENCES Museo_arqueologico_etnico(id_museo);
ALTER TABLE Sala ADD CONSTRAINT FK_SalaMuseo FOREIGN KEY (id_museo) REFERENCES Museo_arqueologico_etnico(id_museo);
ALTER TABLE Evento_cultural ADD CONSTRAINT FK_EventoMuseo FOREIGN KEY (id_museo) REFERENCES Museo_arqueologico_etnico(id_museo);
ALTER TABLE Exposicion ADD CONSTRAINT FK_ExpoMuseo FOREIGN KEY (id_museo) REFERENCES Museo_arqueologico_etnico(id_museo);
ALTER TABLE Conferencia ADD CONSTRAINT FK_ConfMuseo FOREIGN KEY (id_museo) REFERENCES Museo_arqueologico_etnico(id_museo);

-- Relaciones Pieza
ALTER TABLE Pieza ADD CONSTRAINT FK_PiezaRegistro FOREIGN KEY (RegistroMunae) REFERENCES RegistroMunae(RegistroMunae);
ALTER TABLE Pieza ADD CONSTRAINT FK_PiezaSala FOREIGN KEY (id_sala) REFERENCES Sala(ID_Sala);

-- Relaciones Restauracion
ALTER TABLE Restauracion ADD CONSTRAINT FK_RestauracionRegistro FOREIGN KEY (RegistroMunae) REFERENCES RegistroMunae(RegistroMunae);
ALTER TABLE Restauracion ADD CONSTRAINT FK_RestauracionPieza FOREIGN KEY (id_Pieza) REFERENCES Pieza(Id_Pieza);
ALTER TABLE Restauracion ADD CONSTRAINT FK_RestauracionPuesto FOREIGN KEY (Id_puesto) REFERENCES Puesto(id_puesto);

-- Relaciones Hallazgo y Excavación
ALTER TABLE Hallazgo ADD CONSTRAINT FK_HallazgoCategoria FOREIGN KEY (ID_categoria) REFERENCES Categoria_hallazgo(Id_cate_hallazgo);
ALTER TABLE Hallazgo ADD CONSTRAINT FK_HallazgoExcav FOREIGN KEY (Id_Excavacion) REFERENCES Excavacion(id_excavacion);
ALTER TABLE Excavacion ADD CONSTRAINT FK_ExcavacionSitio FOREIGN KEY (id_sitio) REFERENCES Sitio_arqueologico(ID_Sitio);
ALTER TABLE Informe_Excavacion ADD CONSTRAINT FK_InformeExcav FOREIGN KEY (id_excavacion) REFERENCES Excavacion(id_excavacion);

-- Relaciones Seguro_Pieza
ALTER TABLE Seguro_Pieza ADD CONSTRAINT FK_SeguroPieza FOREIGN KEY (id_pieza) REFERENCES Pieza(Id_Pieza);
ALTER TABLE Seguro_Pieza ADD CONSTRAINT FK_SeguroRegistro FOREIGN KEY (RegistroMunae) REFERENCES RegistroMunae(RegistroMunae);

-- Relaciones Boleto
ALTER TABLE Boleto_conferencia ADD CONSTRAINT FK_BoletoVisitante FOREIGN KEY (id_visitante) REFERENCES Persona_visitante(Id_pasaporte);

-- Relaciones Arqueologo
ALTER TABLE Arqueologo ADD CONSTRAINT FK_ArqueologoEmpleado FOREIGN KEY (id_empleado) REFERENCES Empleado(id_empleado);

-- Relaciones Prestamo_Pieza y Tipo_Prestamo
ALTER TABLE Prestamo_Pieza ADD CONSTRAINT FK_PrestamoRegistro FOREIGN KEY (RegistroMunae) REFERENCES RegistroMunae(RegistroMunae);
ALTER TABLE Prestamo_Pieza ADD CONSTRAINT FK_PrestamoInst FOREIGN KEY (id_institucioncolab) REFERENCES Institucion_colaboradora(id_institucioncolab);
ALTER TABLE Tipo_Prestamo ADD CONSTRAINT FK_TipoPrestamo FOREIGN KEY (Id_Prestamo) REFERENCES Prestamo_Pieza(Id_Prestamo);


--equipo de excavacion
ALTER TABLE Equipo_Excavacion_Detalle ADD CONSTRAINT FK_EquipoExcav FOREIGN KEY (id_equipo) REFERENCES Equipo_Excavacion(ID_Equipo);

ALTER TABLE Equipo_Excavacion_Detalle ADD CONSTRAINT FK_HerramientaExcav FOREIGN KEY (id_herramienta) REFERENCES Herramienta(ID_herramienta);

ALTER TABLE Equipo_Excavacion_Detalle ADD CONSTRAINT FK_ExcavacionDetalle FOREIGN KEY (id_excavacion) REFERENCES Excavacion(id_excavacion);



 -- analisis de laboratorio
ALTER TABLE Analisis_Laboratorio_Detalle ADD CONSTRAINT FK_AnalisisLab FOREIGN KEY (id_analisis) REFERENCES Analisis_laboratorio(id_analisis);

ALTER TABLE Analisis_Laboratorio_Detalle ADD CONSTRAINT FK_AnalisisPieza FOREIGN KEY (id_pieza) REFERENCES Pieza(Id_Pieza);

ALTER TABLE Analisis_Laboratorio_Detalle ADD CONSTRAINT FK_AnalisisHallazgo FOREIGN KEY (id_hallazgo) REFERENCES Hallazgo(ID_Hallazgo);


--permiso de gobierno

ALTER TABLE Permiso_Gobierno_Detalle ADD CONSTRAINT FK_PermisoGob FOREIGN KEY (id_permgobierno) REFERENCES Permiso_gobierno(id_permgobierno);

ALTER TABLE Permiso_Gobierno_Detalle ADD CONSTRAINT FK_PermisoExcav FOREIGN KEY (id_excavacion) REFERENCES Excavacion(id_excavacion);

ALTER TABLE Permiso_Gobierno_Detalle  ADD CONSTRAINT FK_PermisoRest FOREIGN KEY (id_restauracion) REFERENCES Restauracion(Id_Restauracion);


-- mantenimiento de equipo 
drop foreign key Fk_MantControl
ALTER TABLE Mantenimiento_Equipo_Detalle  ADD CONSTRAINT FK_MantControl FOREIGN KEY (id_mantenimiento) REFERENCES Mantenimiento_equipo(Id_mantenimiento);

ALTER TABLE Mantenimiento_Equipo_Detalle ADD CONSTRAINT FK_MantEquipo FOREIGN KEY (id_sistema_seguridad) REFERENCES sistema_seguridad(id_sistema_seguridad);

ALTER TABLE Mantenimiento_Equipo_Detalle ADD CONSTRAINT FK_MantResponsable FOREIGN KEY (id_empleado) REFERENCES Empleado(id_empleado);



-- VEHICULO A MUSEO
ALTER TABLE Vehiculos ADD CONSTRAINT FK_museovh FOREIGN KEY (id_museo) REFERENCES Museo_arqueologico_etnico(id_museo);

--visita guiada a museo
ALTER TABLE Visita_Guiada ADD CONSTRAINT FK_id_museovg FOREIGN KEY (id_museo) REFERENCES Museo_arqueologico_etnico(id_museo);

-- Publicacion cientifica 
ALTER TABLE Publicacion_cientifica ADD CONSTRAINT FK_id_sitiopuc FOREIGN KEY (ID_Sitio) REFERENCES Sitio_arqueologico(ID_Sitio);

-- Horario de Seguridad a Equipo de Seguridad
ALTER TABLE Horario_seguridad  ADD CONSTRAINT FK_id_equipohs FOREIGN KEY (id_sistema_seguridad) REFERENCES sistema_seguridad (id_sistema_seguridad);

-- fotogradia hallazgo a sitio arquologico
ALTER TABLE Fotografia_hallazgo ADD CONSTRAINT FK_id_sitiopFH FOREIGN KEY (ID_Sitio) REFERENCES Sitio_arqueologico(ID_Sitio);

--convenio excavacion a sitio arqueologico

ALTER TABLE  Convenio_excavacion ADD CONSTRAINT FK_id_sitioce FOREIGN KEY (ID_Sitio) REFERENCES Sitio_arqueologico(ID_Sitio);

--bodega a museo
ALTER TABLE Bodega ADD CONSTRAINT FK_id_museobd FOREIGN KEY (id_museo) REFERENCES Museo_arqueologico_etnico(id_museo);

--persona visita a ficha de ingreso

ALTER TABLE  Persona_visitante ADD CONSTRAINT FK_id_fichaingresopv FOREIGN KEY (id_fichaingreso) REFERENCES Ficha_Ingreso(id_fichaingreso);
-- Renglon11 a Puesto
ALTER TABLE  renglon11 ADD CONSTRAINT FK_id_puestor11 FOREIGN KEY (id_puesto) REFERENCES  Puesto (id_puesto);

-- Horario_seguridad a sistema_seguridad
ALTER TABLE  Horario_seguridad ADD CONSTRAINT FK_id_sistema_seguridadhs FOREIGN KEY (id_sistema_seguridad ) REFERENCES  sistema_seguridad  (id_sistema_seguridad );

-- Conferencia a taller_manualidades
ALTER TABLE  conferencia ADD CONSTRAINT FK_id_tallercs FOREIGN KEY (id_taller ) REFERENCES  Taller_manualidades (id_taller);

-- Conferencia a boleto
ALTER TABLE  conferencia ADD CONSTRAINT FK_id_boletocs FOREIGN KEY (id_boletoc ) REFERENCES  Boleto_conferencia (id_boletoc);


--prueba de la bitacora visitante

-- Museo
INSERT INTO Museo_arqueologico_etnico (id_museo, NombreMuseo, Tipo, Horario, PrecioEntrada) VALUES (1, 'Museo Nacional de Arqueología', 'Arqueología', '8:00-16:00', 25.00);

-- Empleado
INSERT INTO Empleado (id_empleado, Nombre, Apellido, Edad, DPI, IGSS, IRTRA, HorasExtras, Fecha_contratacion, id_horario, Jornada, id_puesto, id_correo, id_telefono) VALUES (1, 'Carlos', 'Lopez', 30, '1234567890101', 'IGSS123', 'IRTRA456', 10, GETDATE(), NULL, 'Completa', NULL, NULL, NULL);

-- Visitante
INSERT INTO Persona_visitante (Id_pasaporte, Nombre, Apellido, sexo, Edad, GrupoEtnico, id_fichaingreso) VALUES ('554684654', 'Ana', 'Ramirez', 'Femenino', 25, 'Maya', NULL);





--trigger BitacoraFactura
CREATE TRIGGER BitacoraFactura
ON Factura
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
    DECLARE @Usuario NVARCHAR(100) = ORIGINAL_LOGIN()
    DECLARE @Accion NVARCHAR(50)
    DECLARE @Explicacion NVARCHAR(MAX)

    IF EXISTS (SELECT * FROM inserted) AND EXISTS (SELECT * FROM deleted)
    BEGIN
        SET @Accion = 'UPDATE'
        SET @Explicacion = 'Actualización de registro en Factura'
        INSERT INTO Bitacora_Factura (id_factura, ValorIngreso, Acuerdo_Gubernativo, fecha, descripcion, id_museo, accion, usuario, TablaAfectada, Explicacion)
        SELECT i.id_factura, i.ValorIngreso, i.Acuerdo_Gubernativo, i.fecha, i.descripcion, i.id_museo, 
               @Accion, @Usuario, 'Factura', @Explicacion
        FROM inserted i
    END
    ELSE IF EXISTS (SELECT * FROM inserted)
    BEGIN
        SET @Accion = 'INSERT'
        SET @Explicacion = 'Inserción de registro en Factura'
        INSERT INTO Bitacora_Factura (id_factura, ValorIngreso, Acuerdo_Gubernativo, fecha, descripcion, id_museo, accion, usuario, TablaAfectada, Explicacion)
        SELECT i.id_factura, i.ValorIngreso, i.Acuerdo_Gubernativo, i.fecha, i.descripcion, i.id_museo, 
               @Accion, @Usuario, 'Factura', @Explicacion
        FROM inserted i
    END
    ELSE IF EXISTS (SELECT * FROM deleted)
    BEGIN
        SET @Accion = 'DELETE'
        SET @Explicacion = 'Eliminación de registro en Factura'
        INSERT INTO Bitacora_Factura (id_factura, ValorIngreso, Acuerdo_Gubernativo, fecha, descripcion, id_museo, accion, usuario, TablaAfectada, Explicacion)
        SELECT d.id_factura, d.ValorIngreso, d.Acuerdo_Gubernativo, d.fecha, d.descripcion, d.id_museo, 
               @Accion, @Usuario, 'Factura', @Explicacion
        FROM deleted d
    END
END;


--trigger BitacoraPersonaVisitante
CREATE TRIGGER BitacoraPersonaVisitante
ON Persona_visitante
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
    DECLARE @Usuario NVARCHAR(100) = ORIGINAL_LOGIN()
    DECLARE @Accion NVARCHAR(50)
    DECLARE @Descripcion NVARCHAR(MAX)

    IF EXISTS (SELECT * FROM inserted) AND EXISTS (SELECT * FROM deleted)
    BEGIN
        SET @Accion = 'UPDATE'
        SET @Descripcion = 'Actualización de registro en Persona_visitante'
        INSERT INTO Bitacora_PersonaVisitante (Id_pasaporte, Nombre, Apellido, sexo, Edad, GrupoEtnico, id_fichaingreso, accion, usuario, TablaAfectada, Descripcion)
        SELECT i.Id_pasaporte, i.Nombre, i.Apellido, i.sexo, i.Edad, i.GrupoEtnico, i.id_fichaingreso, 
               @Accion, @Usuario, 'Persona_visitante', @Descripcion
        FROM inserted i
    END
    ELSE IF EXISTS (SELECT * FROM inserted)
    BEGIN
        SET @Accion = 'INSERT'
        SET @Descripcion = 'Inserción de registro en Persona_visitante'
        INSERT INTO Bitacora_PersonaVisitante (Id_pasaporte, Nombre, Apellido, sexo, Edad, GrupoEtnico, id_fichaingreso, accion, usuario, TablaAfectada, Descripcion)
        SELECT i.Id_pasaporte, i.Nombre, i.Apellido, i.sexo, i.Edad, i.GrupoEtnico, i.id_fichaingreso, 
               @Accion, @Usuario, 'Persona_visitante', @Descripcion
        FROM inserted i
    END
    ELSE IF EXISTS (SELECT * FROM deleted)
    BEGIN
        SET @Accion = 'DELETE'
        SET @Descripcion = 'Eliminación de registro en Persona_visitante'
        INSERT INTO Bitacora_PersonaVisitante (Id_pasaporte, Nombre, Apellido, sexo, Edad, GrupoEtnico, id_fichaingreso, accion, usuario, TablaAfectada, Descripcion)
        SELECT d.Id_pasaporte, d.Nombre, d.Apellido, d.sexo, d.Edad, d.GrupoEtnico, d.id_fichaingreso, 
               @Accion, @Usuario, 'Persona_visitante', @Descripcion
        FROM deleted d
    END
END;


--trigger pais visita
CREATE TRIGGER BitacoraPaisVisita
ON Pais_Visita
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
    DECLARE @Usuario NVARCHAR(100) = ORIGINAL_LOGIN()
    DECLARE @Accion NVARCHAR(50)
    DECLARE @Descripcion NVARCHAR(MAX)

    IF EXISTS (SELECT * FROM inserted) AND EXISTS (SELECT * FROM deleted)
    BEGIN
        SET @Accion = 'UPDATE'
        SET @Descripcion = 'Actualización de registro en Pais_Visita'
        INSERT INTO Bitacora_PaisVisita (id_pais, pais, Id_pasaporte, accion, usuario, TablaAfectada, Descripcion)
        SELECT i.id_pais, i.pais, i.Id_pasaporte, 
               @Accion, @Usuario, 'Pais_Visita', @Descripcion
        FROM inserted i
    END
    ELSE IF EXISTS (SELECT * FROM inserted)
    BEGIN
        SET @Accion = 'INSERT'
        SET @Descripcion = 'Inserción de registro en Pais_Visita'
        INSERT INTO Bitacora_PaisVisita (id_pais, pais, Id_pasaporte, accion, usuario, TablaAfectada, Descripcion)
        SELECT i.id_pais, i.pais, i.Id_pasaporte, 
               @Accion, @Usuario, 'Pais_Visita', @Descripcion
        FROM inserted i
    END
    ELSE IF EXISTS (SELECT * FROM deleted)
    BEGIN
        SET @Accion = 'DELETE'
        SET @Descripcion = 'Eliminación de registro en Pais_Visita'
        INSERT INTO Bitacora_PaisVisita (id_pais, pais, Id_pasaporte, accion, usuario, TablaAfectada, Descripcion)
        SELECT d.id_pais, d.pais, d.Id_pasaporte, 
               @Accion, @Usuario, 'Pais_Visita', @Descripcion
        FROM deleted d
    END
END;

--trigger idioma

CREATE TRIGGER BitacoraIdioma
ON Idioma
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
    DECLARE @Usuario NVARCHAR(100) = ORIGINAL_LOGIN()
    DECLARE @Accion NVARCHAR(50)
    DECLARE @Descripcion NVARCHAR(MAX)

    IF EXISTS (SELECT * FROM inserted) AND EXISTS (SELECT * FROM deleted)
    BEGIN
        SET @Accion = 'UPDATE'
        SET @Descripcion = 'Actualización de registro en Idioma'
        INSERT INTO Bitacora_Idioma (ID_idioma, Idioma, Id_pasaporte, accion, usuario, TablaAfectada, Descripcion)
        SELECT i.ID_idioma, i.Idioma, i.Id_pasaporte, 
               @Accion, @Usuario, 'Idioma', @Descripcion
        FROM inserted i
    END
    ELSE IF EXISTS (SELECT * FROM inserted)
    BEGIN
        SET @Accion = 'INSERT'
        SET @Descripcion = 'Inserción de registro en Idioma'
        INSERT INTO Bitacora_Idioma (ID_idioma, Idioma, Id_pasaporte, accion, usuario, TablaAfectada, Descripcion)
        SELECT i.ID_idioma, i.Idioma, i.Id_pasaporte, 
               @Accion, @Usuario, 'Idioma', @Descripcion
        FROM inserted i
    END
    ELSE IF EXISTS (SELECT * FROM deleted)
    BEGIN
        SET @Accion = 'DELETE'
        SET @Descripcion = 'Eliminación de registro en Idioma'
        INSERT INTO Bitacora_Idioma (ID_idioma, Idioma, Id_pasaporte, accion, usuario, TablaAfectada, Descripcion)
        SELECT d.ID_idioma, d.Idioma, d.Id_pasaporte, 
               @Accion, @Usuario, 'Idioma', @Descripcion
        FROM deleted d
    END
END;




--asginar permisos usuarios
DROP USER IF EXISTS usuario_lector;
CREATE USER usuario_lector FOR LOGIN usuario_lector;

USE Proyectobas1;
GO
ALTER ROLE db_owner ADD MEMBER usuario_administrador;
GO



-- 1Crear los logins a nivel del servidor
CREATE LOGIN usuario_lector WITH PASSWORD = '123';
CREATE LOGIN usuario_administrador WITH PASSWORD = '123';
CREATE LOGIN usuario_modificador WITH PASSWORD = '123';

-- Ahora sí, crear los usuarios en tu base de datos actual
CREATE USER usuario_lector FOR LOGIN usuario_lector;
CREATE USER usuario_administrador FOR LOGIN usuario_administrador;
CREATE USER usuario_modificador FOR LOGIN usuario_modificador;

--- crear roles y asignar permisos
create role rol_lector;
create role rol_administrador;
create role rol_modificador;


--secretario
-- Otorgar permiso de solo lectura a todas las tablas para el rol_lector
DECLARE @sql NVARCHAR(MAX) = N'';

SELECT @sql += 'GRANT SELECT ON [' + s.name + '].[' + t.name + '] TO [rol_lector];' + CHAR(13)
FROM sys.tables t
INNER JOIN sys.schemas s ON t.schema_id = s.schema_id;

EXEC sp_executesql @sql;

ALTER ROLE rol_lector ADD MEMBER usuario_lector;


--administrador 
GRANT CONTROL ON DATABASE::Proyectobas1 TO rol_administrador;


--empleado modificador y lectura

DECLARE @sql NVARCHAR(MAX) = N'';
SELECT @sql += 'GRANT SELECT, INSERT, UPDATE, DELETE ON [' + s.name + '].[' + t.name + '] TO [rol_modificador];' + CHAR(13)
FROM sys.tables 
INNER JOIN sys.schemas s ON t.schema_id = s.schema_id;
EXEC sp_executesql @sql;

ALTER ROLE rol_modificador ADD MEMBER usuario_modificador;



---- 1️⃣ ALERTA PARA FACTURA
CREATE TRIGGER Alerta_Factura
ON Factura
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
    IF EXISTS (SELECT * FROM inserted) AND EXISTS (SELECT * FROM deleted)
        RAISERROR('⚠️ Se ha actualizado un registro en la tabla Factura', 10, 1);
    ELSE IF EXISTS (SELECT * FROM inserted)
        RAISERROR('✅ Se ha insertado un nuevo registro en la tabla Factura', 10, 1);
    ELSE IF EXISTS (SELECT * FROM deleted)
        RAISERROR('❌ Se ha eliminado un registro de la tabla Factura', 10, 1);
END;
GO


-- 2️⃣ ALERTA PARA PERSONA_VISITANTE
CREATE TRIGGER Alerta_PersonaVisitante
ON Persona_visitante
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
    IF EXISTS (SELECT * FROM inserted) AND EXISTS (SELECT * FROM deleted)
        RAISERROR('⚠️ Se ha actualizado un registro en la tabla Persona_visitante', 10, 1);
    ELSE IF EXISTS (SELECT * FROM inserted)
        RAISERROR('✅ Se ha insertado un nuevo registro en la tabla Persona_visitante', 10, 1);
    ELSE IF EXISTS (SELECT * FROM deleted)
        RAISERROR('❌ Se ha eliminado un registro de la tabla Persona_visitante', 10, 1);
END;
GO


-- 3️⃣ ALERTA PARA PAIS_VISITA
CREATE TRIGGER Alerta_PaisVisita
ON Pais_Visita
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
    IF EXISTS (SELECT * FROM inserted) AND EXISTS (SELECT * FROM deleted)
        RAISERROR('⚠️ Se ha actualizado un registro en la tabla Pais_Visita', 10, 1);
    ELSE IF EXISTS (SELECT * FROM inserted)
        RAISERROR('✅ Se ha insertado un nuevo registro en la tabla Pais_Visita', 10, 1);
    ELSE IF EXISTS (SELECT * FROM deleted)
        RAISERROR('❌ Se ha eliminado un registro de la tabla Pais_Visita', 10, 1);
END;
GO


-- 4️⃣ ALERTA PARA IDIOMA
CREATE TRIGGER Alerta_Idioma
ON Idioma
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
    IF EXISTS (SELECT * FROM inserted) AND EXISTS (SELECT * FROM deleted)
        RAISERROR('⚠️ Se ha actualizado un registro en la tabla Idioma', 10, 1);
    ELSE IF EXISTS (SELECT * FROM inserted)
        RAISERROR('✅ Se ha insertado un nuevo registro en la tabla Idioma', 10, 1);
    ELSE IF EXISTS (SELECT * FROM deleted)
        RAISERROR('❌ Se ha eliminado un registro de la tabla Idioma', 10, 1);
END;
GO


-- procedure


--1 


CREATE PROCEDURE InsertarPersonaVisitante
    @Id_pasaporte VARCHAR(20), @Nombre VARCHAR(50), @Apellido VARCHAR(50), 
    @sexo VARCHAR(10), @Edad INT, @GrupoEtnico VARCHAR(50), @id_fichaingreso INT
AS BEGIN INSERT INTO Persona_visitante VALUES (@Id_pasaporte, @Nombre, @Apellido, @sexo, @Edad, @GrupoEtnico, @id_fichaingreso) END
GO
CREATE PROCEDURE ActualizarPersonaVisitante
    @Id_pasaporte VARCHAR(20), @Nombre VARCHAR(50), @Apellido VARCHAR(50), 
    @sexo VARCHAR(10), @Edad INT, @GrupoEtnico VARCHAR(50)
AS BEGIN UPDATE Persona_visitante SET Nombre=@Nombre, Apellido=@Apellido, sexo=@sexo, Edad=@Edad, GrupoEtnico=@GrupoEtnico WHERE Id_pasaporte=@Id_pasaporte END
GO
CREATE PROCEDURE EliminarPersonaVisitante @Id_pasaporte VARCHAR(20) AS BEGIN DELETE FROM Persona_visitante WHERE Id_pasaporte=@Id_pasaporte END
GO
CREATE PROCEDURE ObtenerPersonaVisitante @Id_pasaporte VARCHAR(20)=NULL AS BEGIN IF @Id_pasaporte IS NULL SELECT * FROM Persona_visitante ELSE SELECT * FROM Persona_visitante WHERE Id_pasaporte=@Id_pasaporte END
GO


--2

CREATE PROCEDURE InsertarPaisVisita @id_pais INT, @pais VARCHAR(50), @Id_pasaporte VARCHAR(20) AS BEGIN INSERT INTO Pais_Visita VALUES (@id_pais, @pais, @Id_pasaporte) END
GO
CREATE PROCEDURE ActualizarPaisVisita @id_pais INT, @pais VARCHAR(50) AS BEGIN UPDATE Pais_Visita SET pais=@pais WHERE id_pais=@id_pais END
GO
CREATE PROCEDURE EliminarPaisVisita @id_pais INT AS BEGIN DELETE FROM Pais_Visita WHERE id_pais=@id_pais END
GO
CREATE PROCEDURE ObtenerPaisVisita @id_pais INT=NULL AS BEGIN IF @id_pais IS NULL SELECT * FROM Pais_Visita ELSE SELECT * FROM Pais_Visita WHERE id_pais=@id_pais END
GO

--3
CREATE PROCEDURE InsertarIdioma @ID_idioma INT, @Idioma VARCHAR(50), @Id_pasaporte VARCHAR(20) AS BEGIN INSERT INTO Idioma VALUES (@ID_idioma, @Idioma, @Id_pasaporte) END
GO
CREATE PROCEDURE ActualizarIdioma @ID_idioma INT, @Idioma VARCHAR(50) AS BEGIN UPDATE Idioma SET Idioma=@Idioma WHERE ID_idioma=@ID_idioma END
GO
CREATE PROCEDURE EliminarIdioma @ID_idioma INT AS BEGIN DELETE FROM Idioma WHERE ID_idioma=@ID_idioma END
GO
CREATE PROCEDURE ObtenerIdioma @ID_idioma INT=NULL AS BEGIN IF @ID_idioma IS NULL SELECT * FROM Idioma ELSE SELECT * FROM Idioma WHERE ID_idioma=@ID_idioma END
GO

--4

CREATE PROCEDURE InsertarDiscapacidad @ID_Discapacidad INT, @Nombre_Discapacidad VARCHAR(50), @Id_pasaporte VARCHAR(20) AS BEGIN INSERT INTO Discapacidad VALUES (@ID_Discapacidad, @Nombre_Discapacidad, @Id_pasaporte) END
GO
CREATE PROCEDURE ActualizarDiscapacidad @ID_Discapacidad INT, @Nombre_Discapacidad VARCHAR(50) AS BEGIN UPDATE Discapacidad SET Nombre_Discapacidad=@Nombre_Discapacidad WHERE ID_Discapacidad=@ID_Discapacidad END
GO
CREATE PROCEDURE EliminarDiscapacidad @ID_Discapacidad INT AS BEGIN DELETE FROM Discapacidad WHERE ID_Discapacidad=@ID_Discapacidad END
GO
CREATE PROCEDURE ObtenerDiscapacidad @ID_Discapacidad INT=NULL AS BEGIN IF @ID_Discapacidad IS NULL SELECT * FROM Discapacidad ELSE SELECT * FROM Discapacidad WHERE ID_Discapacidad=@ID_Discapacidad END
GO

--5

CREATE PROCEDURE InsertarCorreoElectronico @id_CorreoElectronico INT, @CorreoElectronico VARCHAR(100) AS BEGIN INSERT INTO CorreoElectronico VALUES (@id_CorreoElectronico, @CorreoElectronico) END
GO
CREATE PROCEDURE ActualizarCorreoElectronico @id_CorreoElectronico INT, @CorreoElectronico VARCHAR(100) AS BEGIN UPDATE CorreoElectronico SET CorreoElectronico=@CorreoElectronico WHERE id_CorreoElectronico=@id_CorreoElectronico END
GO
CREATE PROCEDURE EliminarCorreoElectronico @id_CorreoElectronico INT AS BEGIN DELETE FROM CorreoElectronico WHERE id_CorreoElectronico=@id_CorreoElectronico END
GO
CREATE PROCEDURE ObtenerCorreoElectronico @id_CorreoElectronico INT=NULL AS BEGIN IF @id_CorreoElectronico IS NULL SELECT * FROM CorreoElectronico ELSE SELECT * FROM CorreoElectronico WHERE id_CorreoElectronico=@id_CorreoElectronico END
GO

--6
CREATE PROCEDURE InsertarTelefono @id_Telefono INT, @Telefono VARCHAR(15) AS BEGIN INSERT INTO Telefono VALUES (@id_Telefono, @Telefono) END
GO
CREATE PROCEDURE ActualizarTelefono @id_Telefono INT, @Telefono VARCHAR(15) AS BEGIN UPDATE Telefono SET Telefono=@Telefono WHERE id_Telefono=@id_Telefono END
GO
CREATE PROCEDURE EliminarTelefono @id_Telefono INT AS BEGIN DELETE FROM Telefono WHERE id_Telefono=@id_Telefono END
GO
CREATE PROCEDURE ObtenerTelefono @id_Telefono INT=NULL AS BEGIN IF @id_Telefono IS NULL SELECT * FROM Telefono ELSE SELECT * FROM Telefono WHERE id_Telefono=@id_Telefono END
GO

--7

CREATE PROCEDURE InsertarPuesto @id_puesto INT, @NombrePuesto VARCHAR(50), @HorarioES VARCHAR(50), @Sueldo DECIMAL(10,2) AS BEGIN INSERT INTO Puesto VALUES (@id_puesto, @NombrePuesto, @HorarioES, @Sueldo) END
GO
CREATE PROCEDURE ActualizarPuesto @id_puesto INT, @NombrePuesto VARCHAR(50), @HorarioES VARCHAR(50), @Sueldo DECIMAL(10,2) AS BEGIN UPDATE Puesto SET NombrePuesto=@NombrePuesto, HorarioES=@HorarioES, Sueldo=@Sueldo WHERE id_puesto=@id_puesto END
GO
CREATE PROCEDURE EliminarPuesto @id_puesto INT AS BEGIN DELETE FROM Puesto WHERE id_puesto=@id_puesto END
GO
CREATE PROCEDURE ObtenerPuesto @id_puesto INT=NULL AS BEGIN IF @id_puesto IS NULL SELECT * FROM Puesto ELSE SELECT * FROM Puesto WHERE id_puesto=@id_puesto END
GO

--8

CREATE PROCEDURE InsertarEmpleado @id_empleado INT, @Nombre VARCHAR(50), @Apellido VARCHAR(50), @Edad INT, @DPI VARCHAR(20), @IGSS VARCHAR(20), @IRTRA VARCHAR(20), @HorasExtras INT, @Fecha_contratacion DATE, @id_horario INT, @Jornada VARCHAR(30), @id_puesto INT, @id_correo INT, @id_telefono INT AS BEGIN INSERT INTO Empleado VALUES (@id_empleado, @Nombre, @Apellido, @Edad, @DPI, @IGSS, @IRTRA, @HorasExtras, @Fecha_contratacion, @id_horario, @Jornada, @id_puesto, @id_correo, @id_telefono) END
GO
CREATE PROCEDURE ActualizarEmpleado @id_empleado INT, @Nombre VARCHAR(50), @Apellido VARCHAR(50), @Edad INT, @HorasExtras INT, @Jornada VARCHAR(30) AS BEGIN UPDATE Empleado SET Nombre=@Nombre, Apellido=@Apellido, Edad=@Edad, HorasExtras=@HorasExtras, Jornada=@Jornada WHERE id_empleado=@id_empleado END
GO
CREATE PROCEDURE EliminarEmpleado @id_empleado INT AS BEGIN DELETE FROM Empleado WHERE id_empleado=@id_empleado END
GO
CREATE PROCEDURE ObtenerEmpleado @id_empleado INT=NULL AS BEGIN IF @id_empleado IS NULL SELECT * FROM Empleado ELSE SELECT * FROM Empleado WHERE id_empleado=@id_empleado END
GO

--9

CREATE PROCEDURE InsertarMuseo @id_museo INT, @NombreMuseo VARCHAR(100), @Tipo VARCHAR(50), @Horario VARCHAR(50), @PrecioEntrada DECIMAL(10,2) AS BEGIN INSERT INTO Museo_arqueologico_etnico VALUES (@id_museo, @NombreMuseo, @Tipo, @Horario, @PrecioEntrada) END
GO
CREATE PROCEDURE ActualizarMuseo @id_museo INT, @NombreMuseo VARCHAR(100), @Tipo VARCHAR(50), @Horario VARCHAR(50), @PrecioEntrada DECIMAL(10,2) AS BEGIN UPDATE Museo_arqueologico_etnico SET NombreMuseo=@NombreMuseo, Tipo=@Tipo, Horario=@Horario, PrecioEntrada=@PrecioEntrada WHERE id_museo=@id_museo END
GO
CREATE PROCEDURE EliminarMuseo @id_museo INT AS BEGIN DELETE FROM Museo_arqueologico_etnico WHERE id_museo=@id_museo END
GO
CREATE PROCEDURE ObtenerMuseo @id_museo INT=NULL AS BEGIN IF @id_museo IS NULL SELECT * FROM Museo_arqueologico_etnico ELSE SELECT * FROM Museo_arqueologico_etnico WHERE id_museo=@id_museo END
GO

--10
CREATE PROCEDURE InsertarFichaIngreso @id_fichaingreso INT, @Latitud VARCHAR(50), @Longitud VARCHAR(50), @Municipio VARCHAR(50), @nombre_ficha VARCHAR(50), @Departamento VARCHAR(50), @id_empleado INT, @id_museo INT AS BEGIN INSERT INTO Ficha_Ingreso VALUES (@id_fichaingreso, @Latitud, @Longitud, @Municipio, @nombre_ficha, @Departamento, @id_empleado, @id_museo) END
GO
CREATE PROCEDURE ActualizarFichaIngreso @id_fichaingreso INT, @Latitud VARCHAR(50), @Longitud VARCHAR(50), @Municipio VARCHAR(50), @nombre_ficha VARCHAR(50), @Departamento VARCHAR(50) AS BEGIN UPDATE Ficha_Ingreso SET Latitud=@Latitud, Longitud=@Longitud, Municipio=@Municipio, nombre_ficha=@nombre_ficha, Departamento=@Departamento WHERE id_fichaingreso=@id_fichaingreso END
GO
CREATE PROCEDURE EliminarFichaIngreso @id_fichaingreso INT AS BEGIN DELETE FROM Ficha_Ingreso WHERE id_fichaingreso=@id_fichaingreso END
GO
CREATE PROCEDURE ObtenerFichaIngreso @id_fichaingreso INT=NULL AS BEGIN IF @id_fichaingreso IS NULL SELECT * FROM Ficha_Ingreso ELSE SELECT * FROM Ficha_Ingreso WHERE id_fichaingreso=@id_fichaingreso END
GO

--11
CREATE PROCEDURE InsertarFactura @id_factura INT, @ValorIngreso DECIMAL(10,2), @Acuerdo_Gubernativo VARCHAR(50), @fecha DATE, @descripcion VARCHAR(100), @id_museo INT AS BEGIN INSERT INTO Factura VALUES (@id_factura, @ValorIngreso, @Acuerdo_Gubernativo, @fecha, @descripcion, @id_museo) END
GO
CREATE PROCEDURE ActualizarFactura @id_factura INT, @ValorIngreso DECIMAL(10,2), @descripcion VARCHAR(100) AS BEGIN UPDATE Factura SET ValorIngreso=@ValorIngreso, descripcion=@descripcion WHERE id_factura=@id_factura END
GO
CREATE PROCEDURE EliminarFactura @id_factura INT AS BEGIN DELETE FROM Factura WHERE id_factura=@id_factura END
GO
CREATE PROCEDURE ObtenerFactura @id_factura INT=NULL AS BEGIN IF @id_factura IS NULL SELECT * FROM Factura ELSE SELECT * FROM Factura WHERE id_factura=@id_factura END
GO

--12

CREATE PROCEDURE InsertarTaller @id_taller INT, @nombre VARCHAR(50), @Encargado VARCHAR(50), @tema VARCHAR(50), @fecha DATE, @lugar VARCHAR(50), @id_museo INT AS BEGIN INSERT INTO Taller_manualidades VALUES (@id_taller, @nombre, @Encargado, @tema, @fecha, @lugar, @id_museo) END
GO
CREATE PROCEDURE ActualizarTaller @id_taller INT, @nombre VARCHAR(50), @Encargado VARCHAR(50), @tema VARCHAR(50), @fecha DATE, @lugar VARCHAR(50) AS BEGIN UPDATE Taller_manualidades SET nombre=@nombre, Encargado=@Encargado, tema=@tema, fecha=@fecha, lugar=@lugar WHERE id_taller=@id_taller END
GO
CREATE PROCEDURE EliminarTaller @id_taller INT AS BEGIN DELETE FROM Taller_manualidades WHERE id_taller=@id_taller END
GO
CREATE PROCEDURE ObtenerTaller @id_taller INT=NULL AS BEGIN IF @id_taller IS NULL SELECT * FROM Taller_manualidades ELSE SELECT * FROM Taller_manualidades WHERE id_taller=@id_taller END
GO

--13

CREATE PROCEDURE InsertarRegistroMunae @RegistroMunae INT AS BEGIN INSERT INTO RegistroMunae VALUES (@RegistroMunae) END
GO
CREATE PROCEDURE EliminarRegistroMunae @RegistroMunae INT AS BEGIN DELETE FROM RegistroMunae WHERE RegistroMunae=@RegistroMunae END
GO
CREATE PROCEDURE ObtenerRegistroMunae @RegistroMunae INT=NULL AS BEGIN IF @RegistroMunae IS NULL SELECT * FROM RegistroMunae ELSE SELECT * FROM RegistroMunae WHERE RegistroMunae=@RegistroMunae END
GO

--14

CREATE PROCEDURE InsertarArqueologo @Id_Arqueologo INT, @Nombre_Arqueologo VARCHAR(100), @id_empleado INT AS BEGIN INSERT INTO Arqueologo VALUES (@Id_Arqueologo, @Nombre_Arqueologo, @id_empleado) END
GO
CREATE PROCEDURE ActualizarArqueologo @Id_Arqueologo INT, @Nombre_Arqueologo VARCHAR(100) AS BEGIN UPDATE Arqueologo SET Nombre_Arqueologo=@Nombre_Arqueologo WHERE Id_Arqueologo=@Id_Arqueologo END
GO
CREATE PROCEDURE EliminarArqueologo @Id_Arqueologo INT AS BEGIN DELETE FROM Arqueologo WHERE Id_Arqueologo=@Id_Arqueologo END
GO
CREATE PROCEDURE ObtenerArqueologo @Id_Arqueologo INT=NULL AS BEGIN IF @Id_Arqueologo IS NULL SELECT * FROM Arqueologo ELSE SELECT * FROM Arqueologo WHERE Id_Arqueologo=@Id_Arqueologo END
GO

--15

CREATE PROCEDURE InsertarInstitucion @id_institucioncolab INT, @Nombre_institucion VARCHAR(100) AS BEGIN INSERT INTO Institucion_colaboradora VALUES (@id_institucioncolab, @Nombre_institucion) END
GO
CREATE PROCEDURE ActualizarInstitucion @id_institucioncolab INT, @Nombre_institucion VARCHAR(100) AS BEGIN UPDATE Institucion_colaboradora SET Nombre_institucion=@Nombre_institucion WHERE id_institucioncolab=@id_institucioncolab END
GO
CREATE PROCEDURE EliminarInstitucion @id_institucioncolab INT AS BEGIN DELETE FROM Institucion_colaboradora WHERE id_institucioncolab=@id_institucioncolab END
GO
CREATE PROCEDURE ObtenerInstitucion @id_institucioncolab INT=NULL AS BEGIN IF @id_institucioncolab IS NULL SELECT * FROM Institucion_colaboradora ELSE SELECT * FROM Institucion_colaboradora WHERE id_institucioncolab=@id_institucioncolab END
GO

--16

CREATE PROCEDURE InsertarVehiculo @Id_vehiculo INT, @Tipo_vehiculo VARCHAR(50), @Capacidad INT, @Estado VARCHAR(50), @Matricula VARCHAR(20), @id_museo INT AS BEGIN INSERT INTO Vehiculos VALUES (@Id_vehiculo, @Tipo_vehiculo, @Capacidad, @Estado, @Matricula, @id_museo) END
GO
CREATE PROCEDURE ActualizarVehiculo @Id_vehiculo INT, @Tipo_vehiculo VARCHAR(50), @Capacidad INT, @Estado VARCHAR(50), @Matricula VARCHAR(20) AS BEGIN UPDATE Vehiculos SET Tipo_vehiculo=@Tipo_vehiculo, Capacidad=@Capacidad, Estado=@Estado, Matricula=@Matricula WHERE Id_vehiculo=@Id_vehiculo END
GO
CREATE PROCEDURE EliminarVehiculo @Id_vehiculo INT AS BEGIN DELETE FROM Vehiculos WHERE Id_vehiculo=@Id_vehiculo END
GO
CREATE PROCEDURE ObtenerVehiculo @Id_vehiculo INT=NULL AS BEGIN IF @Id_vehiculo IS NULL SELECT * FROM Vehiculos ELSE SELECT * FROM Vehiculos WHERE Id_vehiculo=@Id_vehiculo END
GO

--17

CREATE PROCEDURE InsertarCategoriaHallazgo @Id_cate_hallazgo INT, @Nombre_categoria VARCHAR(50), @Descripcion VARCHAR(100) AS BEGIN INSERT INTO Categoria_hallazgo VALUES (@Id_cate_hallazgo, @Nombre_categoria, @Descripcion) END
GO
CREATE PROCEDURE ActualizarCategoriaHallazgo @Id_cate_hallazgo INT, @Nombre_categoria VARCHAR(50), @Descripcion VARCHAR(100) AS BEGIN UPDATE Categoria_hallazgo SET Nombre_categoria=@Nombre_categoria, Descripcion=@Descripcion WHERE Id_cate_hallazgo=@Id_cate_hallazgo END
GO
CREATE PROCEDURE EliminarCategoriaHallazgo @Id_cate_hallazgo INT AS BEGIN DELETE FROM Categoria_hallazgo WHERE Id_cate_hallazgo=@Id_cate_hallazgo END
GO
CREATE PROCEDURE ObtenerCategoriaHallazgo @Id_cate_hallazgo INT=NULL AS BEGIN IF @Id_cate_hallazgo IS NULL SELECT * FROM Categoria_hallazgo ELSE SELECT * FROM Categoria_hallazgo WHERE Id_cate_hallazgo=@Id_cate_hallazgo END
GO

--18

CREATE PROCEDURE InsertarSala @ID_Sala INT, @NombreSala VARCHAR(50), @id_museo INT AS BEGIN INSERT INTO Sala VALUES (@ID_Sala, @NombreSala, @id_museo) END
GO
CREATE PROCEDURE ActualizarSala @ID_Sala INT, @NombreSala VARCHAR(50) AS BEGIN UPDATE Sala SET NombreSala=@NombreSala WHERE ID_Sala=@ID_Sala END
GO
CREATE PROCEDURE EliminarSala @ID_Sala INT AS BEGIN DELETE FROM Sala WHERE ID_Sala=@ID_Sala END
GO
CREATE PROCEDURE ObtenerSala @ID_Sala INT=NULL AS BEGIN IF @ID_Sala IS NULL SELECT * FROM Sala ELSE SELECT * FROM Sala WHERE ID_Sala=@ID_Sala END
GO

--19

CREATE PROCEDURE InsertarPieza @Id_Pieza INT, @Titulo VARCHAR(50), @Municipio VARCHAR(50), @Pais VARCHAR(50), @Periodo VARCHAR(50), @Descripcion VARCHAR(100), @RegistroMunae INT, @id_sala INT AS BEGIN INSERT INTO Pieza VALUES (@Id_Pieza, @Titulo, @Municipio, @Pais, @Periodo, @Descripcion, @RegistroMunae, @id_sala) END
GO
CREATE PROCEDURE ActualizarPieza @Id_Pieza INT, @Titulo VARCHAR(50), @Municipio VARCHAR(50), @Pais VARCHAR(50), @Periodo VARCHAR(50), @Descripcion VARCHAR(100) AS BEGIN UPDATE Pieza SET Titulo=@Titulo, Municipio=@Municipio, Pais=@Pais, Periodo=@Periodo, Descripcion=@Descripcion WHERE Id_Pieza=@Id_Pieza END
GO
CREATE PROCEDURE EliminarPieza @Id_Pieza INT AS BEGIN DELETE FROM Pieza WHERE Id_Pieza=@Id_Pieza END
GO
CREATE PROCEDURE ObtenerPieza @Id_Pieza INT=NULL AS BEGIN IF @Id_Pieza IS NULL SELECT * FROM Pieza ELSE SELECT * FROM Pieza WHERE Id_Pieza=@Id_Pieza END
GO

--20

CREATE PROCEDURE InsertarRestauracion @Id_Restauracion INT, @RegistroMunae INT, @id_Pieza INT, @Tecnicas_Utilizadas VARCHAR(100), @Id_puesto INT AS BEGIN INSERT INTO Restauracion VALUES (@Id_Restauracion, @RegistroMunae, @id_Pieza, @Tecnicas_Utilizadas, @Id_puesto) END
GO
CREATE PROCEDURE ActualizarRestauracion @Id_Restauracion INT, @Tecnicas_Utilizadas VARCHAR(100) AS BEGIN UPDATE Restauracion SET Tecnicas_Utilizadas=@Tecnicas_Utilizadas WHERE Id_Restauracion=@Id_Restauracion END
GO
CREATE PROCEDURE EliminarRestauracion @Id_Restauracion INT AS BEGIN DELETE FROM Restauracion WHERE Id_Restauracion=@Id_Restauracion END
GO
CREATE PROCEDURE ObtenerRestauracion @Id_Restauracion INT=NULL AS BEGIN IF @Id_Restauracion IS NULL SELECT * FROM Restauracion ELSE SELECT * FROM Restauracion WHERE Id_Restauracion=@Id_Restauracion END
GO

--21

CREATE PROCEDURE InsertarEventoCultural @Id_evento INT, @Nombre_evento VARCHAR(100), @id_museo INT AS BEGIN INSERT INTO Evento_cultural VALUES (@Id_evento, @Nombre_evento, @id_museo) END
GO
CREATE PROCEDURE ActualizarEventoCultural @Id_evento INT, @Nombre_evento VARCHAR(100) AS BEGIN UPDATE Evento_cultural SET Nombre_evento=@Nombre_evento WHERE Id_evento=@Id_evento END
GO
CREATE PROCEDURE EliminarEventoCultural @Id_evento INT AS BEGIN DELETE FROM Evento_cultural WHERE Id_evento=@Id_evento END
GO
CREATE PROCEDURE ObtenerEventoCultural @Id_evento INT=NULL AS BEGIN IF @Id_evento IS NULL SELECT * FROM Evento_cultural ELSE SELECT * FROM Evento_cultural WHERE Id_evento=@Id_evento END
GO

--22

CREATE PROCEDURE InsertarExposicion @Id_Expo INT, @Nombre_exposicion VARCHAR(100), @id_museo INT AS BEGIN INSERT INTO Exposicion VALUES (@Id_Expo, @Nombre_exposicion, @id_museo) END
GO
CREATE PROCEDURE ActualizarExposicion @Id_Expo INT, @Nombre_exposicion VARCHAR(100) AS BEGIN UPDATE Exposicion SET Nombre_exposicion=@Nombre_exposicion WHERE Id_Expo=@Id_Expo END
GO
CREATE PROCEDURE EliminarExposicion @Id_Expo INT AS BEGIN DELETE FROM Exposicion WHERE Id_Expo=@Id_Expo END
GO
CREATE PROCEDURE ObtenerExposicion @Id_Expo INT=NULL AS BEGIN IF @Id_Expo IS NULL SELECT * FROM Exposicion ELSE SELECT * FROM Exposicion WHERE Id_Expo=@Id_Expo END
GO

--23

CREATE PROCEDURE InsertarBodega @Id_bodega INT, @Nombre_bodega VARCHAR(100), @id_museo INT AS BEGIN INSERT INTO Bodega VALUES (@Id_bodega, @Nombre_bodega, @id_museo) END
GO
CREATE PROCEDURE ActualizarBodega @Id_bodega INT, @Nombre_bodega VARCHAR(100) AS BEGIN UPDATE Bodega SET Nombre_bodega=@Nombre_bodega WHERE Id_bodega=@Id_bodega END
GO
CREATE PROCEDURE EliminarBodega @Id_bodega INT AS BEGIN DELETE FROM Bodega WHERE Id_bodega=@Id_bodega END
GO
CREATE PROCEDURE ObtenerBodega @Id_bodega INT=NULL AS BEGIN IF @Id_bodega IS NULL SELECT * FROM Bodega ELSE SELECT * FROM Bodega WHERE Id_bodega=@Id_bodega END
GO

--24

CREATE PROCEDURE InsertarMantenimiento @Id_mantenimiento INT, @nomb_mantenimiento VARCHAR(100) AS BEGIN INSERT INTO Mantenimiento_equipo VALUES (@Id_mantenimiento, @nomb_mantenimiento) END
GO
CREATE PROCEDURE ActualizarMantenimiento @Id_mantenimiento INT, @nomb_mantenimiento VARCHAR(100) AS BEGIN UPDATE Mantenimiento_equipo SET nomb_mantenimiento=@nomb_mantenimiento WHERE Id_mantenimiento=@Id_mantenimiento END
GO
CREATE PROCEDURE EliminarMantenimiento @Id_mantenimiento INT AS BEGIN DELETE FROM Mantenimiento_equipo WHERE Id_mantenimiento=@Id_mantenimiento END
GO
CREATE PROCEDURE ObtenerMantenimiento @Id_mantenimiento INT=NULL AS BEGIN IF @Id_mantenimiento IS NULL SELECT * FROM Mantenimiento_equipo ELSE SELECT * FROM Mantenimiento_equipo WHERE Id_mantenimiento=@Id_mantenimiento END
GO

--25

CREATE PROCEDURE InsertarFotografiaHallazgo @Id_fotoh INT, @nombre_fotoh VARCHAR(100), @ID_Sitio INT AS BEGIN INSERT INTO Fotografia_hallazgo VALUES (@Id_fotoh, @nombre_fotoh, @ID_Sitio) END
GO
CREATE PROCEDURE ActualizarFotografiaHallazgo @Id_fotoh INT, @nombre_fotoh VARCHAR(100) AS BEGIN UPDATE Fotografia_hallazgo SET nombre_fotoh=@nombre_fotoh WHERE Id_fotoh=@Id_fotoh END
GO
CREATE PROCEDURE EliminarFotografiaHallazgo @Id_fotoh INT AS BEGIN DELETE FROM Fotografia_hallazgo WHERE Id_fotoh=@Id_fotoh END
GO
CREATE PROCEDURE ObtenerFotografiaHallazgo @Id_fotoh INT=NULL AS BEGIN IF @Id_fotoh IS NULL SELECT * FROM Fotografia_hallazgo ELSE SELECT * FROM Fotografia_hallazgo WHERE Id_fotoh=@Id_fotoh END
GO

--26

CREATE PROCEDURE InsertarHallazgo @ID_Hallazgo INT, @ID_categoria INT, @Id_Excavacion INT, @Material VARCHAR(50), @Fecha_Descubrimiento DATE, @Estado_Conservacion VARCHAR(50), @Descripcion VARCHAR(100) AS BEGIN INSERT INTO Hallazgo VALUES (@ID_Hallazgo, @ID_categoria, @Id_Excavacion, @Material, @Fecha_Descubrimiento, @Estado_Conservacion, @Descripcion) END
GO
CREATE PROCEDURE ActualizarHallazgo @ID_Hallazgo INT, @Material VARCHAR(50), @Estado_Conservacion VARCHAR(50), @Descripcion VARCHAR(100) AS BEGIN UPDATE Hallazgo SET Material=@Material, Estado_Conservacion=@Estado_Conservacion, Descripcion=@Descripcion WHERE ID_Hallazgo=@ID_Hallazgo END
GO
CREATE PROCEDURE EliminarHallazgo @ID_Hallazgo INT AS BEGIN DELETE FROM Hallazgo WHERE ID_Hallazgo=@ID_Hallazgo END
GO
CREATE PROCEDURE ObtenerHallazgo @ID_Hallazgo INT=NULL AS BEGIN IF @ID_Hallazgo IS NULL SELECT * FROM Hallazgo ELSE SELECT * FROM Hallazgo WHERE ID_Hallazgo=@ID_Hallazgo END
GO

--27

CREATE PROCEDURE InsertarSitioArqueologico @ID_Sitio INT, @Nombre_Sitio VARCHAR(100), @Ubicacion VARCHAR(100), @Estado_conservacion VARCHAR(100), @Periodo_Cultural VARCHAR(100) AS BEGIN INSERT INTO Sitio_arqueologico VALUES (@ID_Sitio, @Nombre_Sitio, @Ubicacion, @Estado_conservacion, @Periodo_Cultural) END
GO
CREATE PROCEDURE ActualizarSitioArqueologico @ID_Sitio INT, @Nombre_Sitio VARCHAR(100), @Ubicacion VARCHAR(100), @Estado_conservacion VARCHAR(100), @Periodo_Cultural VARCHAR(100) AS BEGIN UPDATE Sitio_arqueologico SET Nombre_Sitio=@Nombre_Sitio, Ubicacion=@Ubicacion, Estado_conservacion=@Estado_conservacion, Periodo_Cultural=@Periodo_Cultural WHERE ID_Sitio=@ID_Sitio END
GO
CREATE PROCEDURE EliminarSitioArqueologico @ID_Sitio INT AS BEGIN DELETE FROM Sitio_arqueologico WHERE ID_Sitio=@ID_Sitio END
GO
CREATE PROCEDURE ObtenerSitioArqueologico @ID_Sitio INT=NULL AS BEGIN IF @ID_Sitio IS NULL SELECT * FROM Sitio_arqueologico ELSE SELECT * FROM Sitio_arqueologico WHERE ID_Sitio=@ID_Sitio END
GO

--28

CREATE PROCEDURE InsertarVisitaGuiada @Id_Visita INT, @NombVisita_Guiada VARCHAR(100), @Idioma VARCHAR(50), @Numero_Visitantes INT, @Fecha_Emision DATE, @id_taller INT, @id_museo INT AS BEGIN INSERT INTO Visita_Guiada VALUES (@Id_Visita, @NombVisita_Guiada, @Idioma, @Numero_Visitantes, @Fecha_Emision, @id_taller, @id_museo) END
GO
CREATE PROCEDURE ActualizarVisitaGuiada @Id_Visita INT, @NombVisita_Guiada VARCHAR(100), @Idioma VARCHAR(50), @Numero_Visitantes INT, @Fecha_Emision DATE AS BEGIN UPDATE Visita_Guiada SET NombVisita_Guiada=@NombVisita_Guiada, Idioma=@Idioma, Numero_Visitantes=@Numero_Visitantes, Fecha_Emision=@Fecha_Emision WHERE Id_Visita=@Id_Visita END
GO
CREATE PROCEDURE EliminarVisitaGuiada @Id_Visita INT AS BEGIN DELETE FROM Visita_Guiada WHERE Id_Visita=@Id_Visita END
GO
CREATE PROCEDURE ObtenerVisitaGuiada @Id_Visita INT=NULL AS BEGIN IF @Id_Visita IS NULL SELECT * FROM Visita_Guiada ELSE SELECT * FROM Visita_Guiada WHERE Id_Visita=@Id_Visita END
GO

--29 

CREATE PROCEDURE InsertarExcavacion @id_excavacion INT, @id_sitio INT, @Fecha_inicio DATE, @Fecha_fin DATE, @Estado VARCHAR(50), @Objetivo VARCHAR(100), @Ubicacion VARCHAR(100) AS BEGIN INSERT INTO Excavacion VALUES (@id_excavacion, @id_sitio, @Fecha_inicio, @Fecha_fin, @Estado, @Objetivo, @Ubicacion) END
GO
CREATE PROCEDURE ActualizarExcavacion @id_excavacion INT, @Estado VARCHAR(50), @Objetivo VARCHAR(100), @Ubicacion VARCHAR(100) AS BEGIN UPDATE Excavacion SET Estado=@Estado, Objetivo=@Objetivo, Ubicacion=@Ubicacion WHERE id_excavacion=@id_excavacion END
GO
CREATE PROCEDURE EliminarExcavacion @id_excavacion INT AS BEGIN DELETE FROM Excavacion WHERE id_excavacion=@id_excavacion END
GO
CREATE PROCEDURE ObtenerExcavacion @id_excavacion INT=NULL AS BEGIN IF @id_excavacion IS NULL SELECT * FROM Excavacion ELSE SELECT * FROM Excavacion WHERE id_excavacion=@id_excavacion END
GO


--30

CREATE PROCEDURE InsertarInformeExcavacion @id_informe INT, @id_excavacion INT, @Titulo VARCHAR(100), @Autor VARCHAR(50), @Conclusiones VARCHAR(200) AS BEGIN INSERT INTO Informe_Excavacion VALUES (@id_informe, @id_excavacion, @Titulo, @Autor, @Conclusiones) END
GO
CREATE PROCEDURE ActualizarInformeExcavacion @id_informe INT, @Titulo VARCHAR(100), @Autor VARCHAR(50), @Conclusiones VARCHAR(200) AS BEGIN UPDATE Informe_Excavacion SET Titulo=@Titulo, Autor=@Autor, Conclusiones=@Conclusiones WHERE id_informe=@id_informe END
GO
CREATE PROCEDURE EliminarInformeExcavacion @id_informe INT AS BEGIN DELETE FROM Informe_Excavacion WHERE id_informe=@id_informe END
GO
CREATE PROCEDURE ObtenerInformeExcavacion @id_informe INT=NULL AS BEGIN IF @id_informe IS NULL SELECT * FROM Informe_Excavacion ELSE SELECT * FROM Informe_Excavacion WHERE id_informe=@id_informe END
GO

--31

CREATE PROCEDURE InsertarAnalisisLaboratorio @id_analisis INT, @nomb_analisis VARCHAR(100) AS BEGIN INSERT INTO Analisis_laboratorio VALUES (@id_analisis, @nomb_analisis) END
GO
CREATE PROCEDURE ActualizarAnalisisLaboratorio @id_analisis INT, @nomb_analisis VARCHAR(100) AS BEGIN UPDATE Analisis_laboratorio SET nomb_analisis=@nomb_analisis WHERE id_analisis=@id_analisis END
GO
CREATE PROCEDURE EliminarAnalisisLaboratorio @id_analisis INT AS BEGIN DELETE FROM Analisis_laboratorio WHERE id_analisis=@id_analisis END
GO
CREATE PROCEDURE ObtenerAnalisisLaboratorio @id_analisis INT=NULL AS BEGIN IF @id_analisis IS NULL SELECT * FROM Analisis_laboratorio ELSE SELECT * FROM Analisis_laboratorio WHERE id_analisis=@id_analisis END
GO

--32

CREATE PROCEDURE InsertarConvenioExcavacion @id_convenio INT, @nomb_conv VARCHAR(100), @ID_Sitio INT AS BEGIN INSERT INTO Convenio_Excavacion VALUES (@id_convenio, @nomb_conv, @ID_Sitio) END
GO
CREATE PROCEDURE ActualizarConvenioExcavacion @id_convenio INT, @nomb_conv VARCHAR(100) AS BEGIN UPDATE Convenio_Excavacion SET nomb_conv=@nomb_conv WHERE id_convenio=@id_convenio END
GO
CREATE PROCEDURE EliminarConvenioExcavacion @id_convenio INT AS BEGIN DELETE FROM Convenio_Excavacion WHERE id_convenio=@id_convenio END
GO
CREATE PROCEDURE ObtenerConvenioExcavacion @id_convenio INT=NULL AS BEGIN IF @id_convenio IS NULL SELECT * FROM Convenio_Excavacion ELSE SELECT * FROM Convenio_Excavacion WHERE id_convenio=@id_convenio END
GO

--33

CREATE PROCEDURE InsertarPublicacionCientifica @id_publicacion INT, @nomb_publicacion VARCHAR(100), @ID_Sitio INT AS BEGIN INSERT INTO Publicacion_cientifica VALUES (@id_publicacion, @nomb_publicacion, @ID_Sitio) END
GO
CREATE PROCEDURE ActualizarPublicacionCientifica @id_publicacion INT, @nomb_publicacion VARCHAR(100) AS BEGIN UPDATE Publicacion_cientifica SET nomb_publicacion=@nomb_publicacion WHERE id_publicacion=@id_publicacion END
GO
CREATE PROCEDURE EliminarPublicacionCientifica @id_publicacion INT AS BEGIN DELETE FROM Publicacion_cientifica WHERE id_publicacion=@id_publicacion END
GO
CREATE PROCEDURE ObtenerPublicacionCientifica @id_publicacion INT=NULL AS BEGIN IF @id_publicacion IS NULL SELECT * FROM Publicacion_cientifica ELSE SELECT * FROM Publicacion_cientifica WHERE id_publicacion=@id_publicacion END
GO

--34

CREATE PROCEDURE InsertarPermisoGobierno @id_permgobierno INT, @nomb_permgobierno VARCHAR(100) AS BEGIN INSERT INTO Permiso_gobierno VALUES (@id_permgobierno, @nomb_permgobierno) END
GO
CREATE PROCEDURE ActualizarPermisoGobierno @id_permgobierno INT, @nomb_permgobierno VARCHAR(100) AS BEGIN UPDATE Permiso_gobierno SET nomb_permgobierno=@nomb_permgobierno WHERE id_permgobierno=@id_permgobierno END
GO
CREATE PROCEDURE EliminarPermisoGobierno @id_permgobierno INT AS BEGIN DELETE FROM Permiso_gobierno WHERE id_permgobierno=@id_permgobierno END
GO
CREATE PROCEDURE ObtenerPermisoGobierno @id_permgobierno INT=NULL AS BEGIN IF @id_permgobierno IS NULL SELECT * FROM Permiso_gobierno ELSE SELECT * FROM Permiso_gobierno WHERE id_permgobierno=@id_permgobierno END
GO

--35

CREATE PROCEDURE InsertarSeguroPieza @id_seguro_pieza INT, @NombSegurop VARCHAR(100), @Valor_Asegurado DECIMAL(10,2), @Compania VARCHAR(100), @id_pieza INT, @RegistroMunae INT AS BEGIN INSERT INTO Seguro_Pieza VALUES (@id_seguro_pieza, @NombSegurop, @Valor_Asegurado, @Compania, @id_pieza, @RegistroMunae) END
GO
CREATE PROCEDURE ActualizarSeguroPieza @id_seguro_pieza INT, @NombSegurop VARCHAR(100), @Valor_Asegurado DECIMAL(10,2), @Compania VARCHAR(100) AS BEGIN UPDATE Seguro_Pieza SET NombSegurop=@NombSegurop, Valor_Asegurado=@Valor_Asegurado, Compania=@Compania WHERE id_seguro_pieza=@id_seguro_pieza END
GO
CREATE PROCEDURE EliminarSeguroPieza @id_seguro_pieza INT AS BEGIN DELETE FROM Seguro_Pieza WHERE id_seguro_pieza=@id_seguro_pieza END
GO
CREATE PROCEDURE ObtenerSeguroPieza @id_seguro_pieza INT=NULL AS BEGIN IF @id_seguro_pieza IS NULL SELECT * FROM Seguro_Pieza ELSE SELECT * FROM Seguro_Pieza WHERE id_seguro_pieza=@id_seguro_pieza END
GO

--36
CREATE PROCEDURE InsertarSistemaSeguridad @id_sistema_seguridad INT, @Tipo VARCHAR(50), @Modelo VARCHAR(50), @Nombre_equipo VARCHAR(100) AS BEGIN INSERT INTO sistema_seguridad VALUES (@id_sistema_seguridad, @Tipo, @Modelo, @Nombre_equipo) END
GO
CREATE PROCEDURE ActualizarSistemaSeguridad @id_sistema_seguridad INT, @Tipo VARCHAR(50), @Modelo VARCHAR(50), @Nombre_equipo VARCHAR(100) AS BEGIN UPDATE sistema_seguridad SET Tipo=@Tipo, Modelo=@Modelo, Nombre_equipo=@Nombre_equipo WHERE id_sistema_seguridad=@id_sistema_seguridad END
GO
CREATE PROCEDURE EliminarSistemaSeguridad @id_sistema_seguridad INT AS BEGIN DELETE FROM sistema_seguridad WHERE id_sistema_seguridad=@id_sistema_seguridad END
GO
CREATE PROCEDURE ObtenerSistemaSeguridad @id_sistema_seguridad INT=NULL AS BEGIN IF @id_sistema_seguridad IS NULL SELECT * FROM sistema_seguridad ELSE SELECT * FROM sistema_seguridad WHERE id_sistema_seguridad=@id_sistema_seguridad END
GO

--37
CREATE PROCEDURE InsertarHorarioSeguridad @id_horarioseg INT, @Nombre_Horarioseg VARCHAR(100), @id_sistema_seguridad INT AS BEGIN INSERT INTO Horario_seguridad VALUES (@id_horarioseg, @Nombre_Horarioseg, @id_sistema_seguridad) END
GO
CREATE PROCEDURE ActualizarHorarioSeguridad @id_horarioseg INT, @Nombre_Horarioseg VARCHAR(100) AS BEGIN UPDATE Horario_seguridad SET Nombre_Horarioseg=@Nombre_Horarioseg WHERE id_horarioseg=@id_horarioseg END
GO
CREATE PROCEDURE EliminarHorarioSeguridad @id_horarioseg INT AS BEGIN DELETE FROM Horario_seguridad WHERE id_horarioseg=@id_horarioseg END
GO
CREATE PROCEDURE ObtenerHorarioSeguridad @id_horarioseg INT=NULL AS BEGIN IF @id_horarioseg IS NULL SELECT * FROM Horario_seguridad ELSE SELECT * FROM Horario_seguridad WHERE id_horarioseg=@id_horarioseg END
GO


--38

CREATE PROCEDURE InsertarBoletoConferencia @id_boletoc INT, @Tipo VARCHAR(50), @Precio_Boleto DECIMAL(10,2), @Fecha_Emision DATE, @id_visitante VARCHAR(20) AS BEGIN INSERT INTO Boleto_conferencia VALUES (@id_boletoc, @Tipo, @Precio_Boleto, @Fecha_Emision, @id_visitante) END
GO
CREATE PROCEDURE ActualizarBoletoConferencia @id_boletoc INT, @Tipo VARCHAR(50), @Precio_Boleto DECIMAL(10,2), @Fecha_Emision DATE AS BEGIN UPDATE Boleto_conferencia SET Tipo=@Tipo, Precio_Boleto=@Precio_Boleto, Fecha_Emision=@Fecha_Emision WHERE id_boletoc=@id_boletoc END
GO
CREATE PROCEDURE EliminarBoletoConferencia @id_boletoc INT AS BEGIN DELETE FROM Boleto_conferencia WHERE id_boletoc=@id_boletoc END
GO
CREATE PROCEDURE ObtenerBoletoConferencia @id_boletoc INT=NULL AS BEGIN IF @id_boletoc IS NULL SELECT * FROM Boleto_conferencia ELSE SELECT * FROM Boleto_conferencia WHERE id_boletoc=@id_boletoc END
GO

--39

CREATE PROCEDURE InsertarConferencia @Id_Conferencia INT, @Titulo VARCHAR(100), @Fecha DATE, @Exponente VARCHAR(100), @Publico_Objetivo VARCHAR(100), @Lugar VARCHAR(100), @id_taller INT, @id_boletoc INT, @id_museo INT AS BEGIN INSERT INTO Conferencia VALUES (@Id_Conferencia, @Titulo, @Fecha, @Exponente, @Publico_Objetivo, @Lugar, @id_taller, @id_boletoc, @id_museo) END
GO
CREATE PROCEDURE ActualizarConferencia @Id_Conferencia INT, @Titulo VARCHAR(100), @Fecha DATE, @Exponente VARCHAR(100), @Publico_Objetivo VARCHAR(100), @Lugar VARCHAR(100) AS BEGIN UPDATE Conferencia SET Titulo=@Titulo, Fecha=@Fecha, Exponente=@Exponente, Publico_Objetivo=@Publico_Objetivo, Lugar=@Lugar WHERE Id_Conferencia=@Id_Conferencia END
GO
CREATE PROCEDURE EliminarConferencia @Id_Conferencia INT AS BEGIN DELETE FROM Conferencia WHERE Id_Conferencia=@Id_Conferencia END
GO
CREATE PROCEDURE ObtenerConferencia @Id_Conferencia INT=NULL AS BEGIN IF @Id_Conferencia IS NULL SELECT * FROM Conferencia ELSE SELECT * FROM Conferencia WHERE Id_Conferencia=@Id_Conferencia END
GO

--40

CREATE PROCEDURE InsertarEquipoExcavacion @ID_Equipo INT, @Nombre_equipo VARCHAR(100), @Responsable_Del_Equipo VARCHAR(100), @Numero_Integrantes INT AS BEGIN INSERT INTO Equipo_Excavacion VALUES (@ID_Equipo, @Nombre_equipo, @Responsable_Del_Equipo, @Numero_Integrantes) END
GO
CREATE PROCEDURE ActualizarEquipoExcavacion @ID_Equipo INT, @Nombre_equipo VARCHAR(100), @Responsable_Del_Equipo VARCHAR(100), @Numero_Integrantes INT AS BEGIN UPDATE Equipo_Excavacion SET Nombre_equipo=@Nombre_equipo, Responsable_Del_Equipo=@Responsable_Del_Equipo, Numero_Integrantes=@Numero_Integrantes WHERE ID_Equipo=@ID_Equipo END
GO
CREATE PROCEDURE EliminarEquipoExcavacion @ID_Equipo INT AS BEGIN DELETE FROM Equipo_Excavacion WHERE ID_Equipo=@ID_Equipo END
GO
CREATE PROCEDURE ObtenerEquipoExcavacion @ID_Equipo INT=NULL AS BEGIN IF @ID_Equipo IS NULL SELECT * FROM Equipo_Excavacion ELSE SELECT * FROM Equipo_Excavacion WHERE ID_Equipo=@ID_Equipo END
GO

--41

CREATE PROCEDURE InsertarHerramienta @ID_herramienta INT, @Nombre_Herramienta VARCHAR(100), @Tipo_Herramienta VARCHAR(50), @Estado VARCHAR(50), @Cantidad INT AS BEGIN INSERT INTO Herramienta VALUES (@ID_herramienta, @Nombre_Herramienta, @Tipo_Herramienta, @Estado, @Cantidad) END
GO
CREATE PROCEDURE ActualizarHerramienta @ID_herramienta INT, @Nombre_Herramienta VARCHAR(100), @Tipo_Herramienta VARCHAR(50), @Estado VARCHAR(50), @Cantidad INT AS BEGIN UPDATE Herramienta SET Nombre_Herramienta=@Nombre_Herramienta, Tipo_Herramienta=@Tipo_Herramienta, Estado=@Estado, Cantidad=@Cantidad WHERE ID_herramienta=@ID_herramienta END
GO
CREATE PROCEDURE EliminarHerramienta @ID_herramienta INT AS BEGIN DELETE FROM Herramienta WHERE ID_herramienta=@ID_herramienta END
GO
CREATE PROCEDURE ObtenerHerramienta @ID_herramienta INT=NULL AS BEGIN IF @ID_herramienta IS NULL SELECT * FROM Herramienta ELSE SELECT * FROM Herramienta WHERE ID_herramienta=@ID_herramienta END
GO

--42

CREATE PROCEDURE InsertarPrestamoPieza @Id_Prestamo INT, @RegistroPieza INT, @RegistroMunae INT, @id_institucioncolab INT, @Fecha_Salida DATE, @Fecha_Retorno DATE AS BEGIN INSERT INTO Prestamo_Pieza VALUES (@Id_Prestamo, @RegistroPieza, @RegistroMunae, @id_institucioncolab, @Fecha_Salida, @Fecha_Retorno) END
GO
CREATE PROCEDURE ActualizarPrestamoPieza @Id_Prestamo INT, @Fecha_Salida DATE, @Fecha_Retorno DATE AS BEGIN UPDATE Prestamo_Pieza SET Fecha_Salida=@Fecha_Salida, Fecha_Retorno=@Fecha_Retorno WHERE Id_Prestamo=@Id_Prestamo END
GO
CREATE PROCEDURE EliminarPrestamoPieza @Id_Prestamo INT AS BEGIN DELETE FROM Prestamo_Pieza WHERE Id_Prestamo=@Id_Prestamo END
GO
CREATE PROCEDURE ObtenerPrestamoPieza @Id_Prestamo INT=NULL AS BEGIN IF @Id_Prestamo IS NULL SELECT * FROM Prestamo_Pieza ELSE SELECT * FROM Prestamo_Pieza WHERE Id_Prestamo=@Id_Prestamo END
GO

--43

CREATE PROCEDURE InsertarTipoPrestamo @Id_tipo_prestamo INT, @Id_Prestamo INT, @Requisitos VARCHAR(100), @Descripcion VARCHAR(100), @Tipo VARCHAR(50) AS BEGIN INSERT INTO Tipo_Prestamo VALUES (@Id_tipo_prestamo, @Id_Prestamo, @Requisitos, @Descripcion, @Tipo) END
GO
CREATE PROCEDURE ActualizarTipoPrestamo @Id_tipo_prestamo INT, @Requisitos VARCHAR(100), @Descripcion VARCHAR(100), @Tipo VARCHAR(50) AS BEGIN UPDATE Tipo_Prestamo SET Requisitos=@Requisitos, Descripcion=@Descripcion, Tipo=@Tipo WHERE Id_tipo_prestamo=@Id_tipo_prestamo END
GO
CREATE PROCEDURE EliminarTipoPrestamo @Id_tipo_prestamo INT AS BEGIN DELETE FROM Tipo_Prestamo WHERE Id_tipo_prestamo=@Id_tipo_prestamo END
GO
CREATE PROCEDURE ObtenerTipoPrestamo @Id_tipo_prestamo INT=NULL AS BEGIN IF @Id_tipo_prestamo IS NULL SELECT * FROM Tipo_Prestamo ELSE SELECT * FROM Tipo_Prestamo WHERE Id_tipo_prestamo=@Id_tipo_prestamo END
GO

--44

CREATE PROCEDURE InsertarEquipoExcavacionDetalle @id_detalle INT, @id_equipo INT, @id_herramienta INT, @id_excavacion INT, @Fecha_Asignacion DATE, @Observaciones VARCHAR(150) AS BEGIN INSERT INTO Equipo_Excavacion_Detalle VALUES (@id_detalle, @id_equipo, @id_herramienta, @id_excavacion, @Fecha_Asignacion, @Observaciones) END
GO
CREATE PROCEDURE ActualizarEquipoExcavacionDetalle @id_detalle INT, @Fecha_Asignacion DATE, @Observaciones VARCHAR(150) AS BEGIN UPDATE Equipo_Excavacion_Detalle SET Fecha_Asignacion=@Fecha_Asignacion, Observaciones=@Observaciones WHERE id_detalle=@id_detalle END
GO
CREATE PROCEDURE EliminarEquipoExcavacionDetalle @id_detalle INT AS BEGIN DELETE FROM Equipo_Excavacion_Detalle WHERE id_detalle=@id_detalle END
GO
CREATE PROCEDURE ObtenerEquipoExcavacionDetalle @id_detalle INT=NULL AS BEGIN IF @id_detalle IS NULL SELECT * FROM Equipo_Excavacion_Detalle ELSE SELECT * FROM Equipo_Excavacion_Detalle WHERE id_detalle=@id_detalle END
GO

--45

CREATE PROCEDURE InsertarAnalisisLaboratorioDetalle @id_detalle_analisis INT, @id_analisis INT, @id_pieza INT, @id_hallazgo INT, @Fecha_Analisis DATE, @Resultado VARCHAR(150) AS BEGIN INSERT INTO Analisis_Laboratorio_Detalle VALUES (@id_detalle_analisis, @id_analisis, @id_pieza, @id_hallazgo, @Fecha_Analisis, @Resultado) END
GO
CREATE PROCEDURE ActualizarAnalisisLaboratorioDetalle @id_detalle_analisis INT, @Fecha_Analisis DATE, @Resultado VARCHAR(150) AS BEGIN UPDATE Analisis_Laboratorio_Detalle SET Fecha_Analisis=@Fecha_Analisis, Resultado=@Resultado WHERE id_detalle_analisis=@id_detalle_analisis END
GO
CREATE PROCEDURE EliminarAnalisisLaboratorioDetalle @id_detalle_analisis INT AS BEGIN DELETE FROM Analisis_Laboratorio_Detalle WHERE id_detalle_analisis=@id_detalle_analisis END
GO
CREATE PROCEDURE ObtenerAnalisisLaboratorioDetalle @id_detalle_analisis INT=NULL AS BEGIN IF @id_detalle_analisis IS NULL SELECT * FROM Analisis_Laboratorio_Detalle ELSE SELECT * FROM Analisis_Laboratorio_Detalle WHERE id_detalle_analisis=@id_detalle_analisis END
GO

--46

CREATE PROCEDURE InsertarPermisoGobiernoDetalle @id_detalle_permiso INT, @id_permgobierno INT, @id_excavacion INT, @id_restauracion INT, @Fecha_Aprobacion DATE, @Vigencia DATE AS BEGIN INSERT INTO Permiso_Gobierno_Detalle VALUES (@id_detalle_permiso, @id_permgobierno, @id_excavacion, @id_restauracion, @Fecha_Aprobacion, @Vigencia) END
GO
CREATE PROCEDURE ActualizarPermisoGobiernoDetalle @id_detalle_permiso INT, @Fecha_Aprobacion DATE, @Vigencia DATE AS BEGIN UPDATE Permiso_Gobierno_Detalle SET Fecha_Aprobacion=@Fecha_Aprobacion, Vigencia=@Vigencia WHERE id_detalle_permiso=@id_detalle_permiso END
GO
CREATE PROCEDURE EliminarPermisoGobiernoDetalle @id_detalle_permiso INT AS BEGIN DELETE FROM Permiso_Gobierno_Detalle WHERE id_detalle_permiso=@id_detalle_permiso END
GO
CREATE PROCEDURE ObtenerPermisoGobiernoDetalle @id_detalle_permiso INT=NULL AS BEGIN IF @id_detalle_permiso IS NULL SELECT * FROM Permiso_Gobierno_Detalle ELSE SELECT * FROM Permiso_Gobierno_Detalle WHERE id_detalle_permiso=@id_detalle_permiso END
GO

--47

CREATE PROCEDURE InsertarMantenimientoEquipoDetalle @id_detalle_mant INT, @id_mantenimiento INT, @id_equipo INT, @id_empleado INT, @id_sistema_seguridad INT, @Fecha_Mantenimiento DATE, @Descripcion VARCHAR(150) AS BEGIN INSERT INTO Mantenimiento_Equipo_Detalle VALUES (@id_detalle_mant, @id_mantenimiento, @id_equipo, @id_empleado, @id_sistema_seguridad, @Fecha_Mantenimiento, @Descripcion) END
GO
CREATE PROCEDURE ActualizarMantenimientoEquipoDetalle @id_detalle_mant INT, @Fecha_Mantenimiento DATE, @Descripcion VARCHAR(150) AS BEGIN UPDATE Mantenimiento_Equipo_Detalle SET Fecha_Mantenimiento=@Fecha_Mantenimiento, Descripcion=@Descripcion WHERE id_detalle_mant=@id_detalle_mant END
GO
CREATE PROCEDURE EliminarMantenimientoEquipoDetalle @id_detalle_mant INT AS BEGIN DELETE FROM Mantenimiento_Equipo_Detalle WHERE id_detalle_mant=@id_detalle_mant END
GO
CREATE PROCEDURE ObtenerMantenimientoEquipoDetalle @id_detalle_mant INT=NULL AS BEGIN IF @id_detalle_mant IS NULL SELECT * FROM Mantenimiento_Equipo_Detalle ELSE SELECT * FROM Mantenimiento_Equipo_Detalle WHERE id_detalle_mant=@id_detalle_mant END
GO


--inserts



-- 1. Museo

INSERT INTO Museo_arqueologico_etnico VALUES 
(1, 'Museo Nacional de Arqueología y Etnología', 'Arqueológico', '9:00-17:00', 5.00),
(2, 'Museo Nacional de Arqueología y Etnología', 'Historia', '8:00-16:00', 5.00), 
(3, 'Museo Nacional de Arqueología y Etnología', 'Arte moderno', '10:00-18:00', 5.00);

-- 2. Puesto

INSERT INTO Puesto VALUES 
(1, 'Arqueólogo Jefe', 'L-V 8:00-16:00', 8000.00),
(2, 'Guía Turístico', 'M-D 9:00-17:00', 3500.00),
(3, 'Restaurador', 'L-V 7:00-15:00', 3000.00),
(4, 'Conservador', 'L-V 8:00-16:00', 5000.00),
(5, 'Recepcionista', 'L-D 8:00-16:00', 2500.00),
(6, 'Seguridad', '24/7 por turnos', 2500.00),
(7, 'Administrador', 'L-V 8:00-17:00', 3500.00),
(8, 'Investigador', 'L-V 7:00-15:00', 6000.00),
(9, 'Educador', 'M-D 9:00-17:00', 3500.00),
(10, 'Técnico de Laboratorio', 'L-V 8:00-16:00', 10000.00);

-- 3 y 4. Correo y Teléfono
INSERT INTO CorreoElectronico VALUES 
(1, 'ana.garcia@museo.com'),
(2, 'carlos.lopez@museo.com'),
(3, 'maria.rodriguez@museo.com'),
(4, 'juan.martinez@museo.com'),
(5, 'lucia.hernandez@museo.com'),
(6, 'pedro.gomez@museo.com'),
(7, 'sofia.diaz@museo.com'),
(8, 'miguel.torres@museo.com'),
(9, 'elena.ramirez@museo.com'),
(10, 'david.castro@museo.com');

INSERT INTO Telefono VALUES 
(1, '12345678'),
(2, '23456789'),
(3, '34567890'),
(4, '45678901'),
(5, '56789012'),
(6, '67890123'),
(7, '78901234'),
(8, '89012345'),
(9, '90123456'),
(10, '01234567');

--5 empleados

INSERT INTO Empleado VALUES 
(1, 'Ana', 'García', 35, '1234567890101', 'IGSS001', 'IRTRA001', 5, '2020-03-15', 1, 'Completa', 1, 1, 1),
(2, 'Carlos', 'López', 28, '2345678901012', 'IGSS002', 'IRTRA002', 3, '2021-06-20', 2, 'Completa', 2, 2, 2),
(3, 'María', 'Rodríguez', 42, '3456789010123', 'IGSS003', 'IRTRA003', 8, '2018-11-10', 1, 'Completa', 3, 3, 3),
(4, 'Juan', 'Martínez', 31, '4567890101234', 'IGSS004', 'IRTRA004', 2, '2022-01-30', 3, 'Completa', 4, 4, 4),
(5, 'Lucía', 'Hernández', 26, '5678901012345', 'IGSS005', 'IRTRA005', 6, '2021-09-15', 2, 'Completa', 5, 5, 5),
(6, 'Pedro', 'Gómez', 38, '6789010123456', 'IGSS006', 'IRTRA006', 4, '2019-07-22', 1, 'Completa', 6, 6, 6),
(7, 'Sofía', 'Díaz', 29, '7890101234567', 'IGSS007', 'IRTRA007', 7, '2020-12-05', 3, 'Completa', 7, 7, 7),
(8, 'Miguel', 'Torres', 45, '8901012345678', 'IGSS008', 'IRTRA008', 1, '2017-05-18', 1, 'Completa', 8, 8, 8),
(9, 'Elena', 'Ramírez', 33, '9010123456789', 'IGSS009', 'IRTRA009', 5, '2021-02-28', 2, 'Completa', 9, 9, 9),
(10, 'David', 'Castro', 27, '0101234567890', 'IGSS010', 'IRTRA010', 3, '2022-08-10', 3, 'Completa', 10, 10, 10);


--6 ficha de ingreo

INSERT INTO Ficha_Ingreso VALUES 
(1, '14.6349', '-90.5156', 'Guatemala', 'Ficha001', 'Guatemala', 1, 1),
(2, '14.6350', '-90.5157', 'Guatemala', 'Ficha002', 'Guatemala', 2, 1),
(3, '14.6351', '-90.5158', 'Guatemala', 'Ficha003', 'Guatemala', 3, 2),
(4, '14.6352', '-90.5159', 'Guatemala', 'Ficha004', 'Guatemala', 4, 2),
(5, '14.6353', '-90.5160', 'Guatemala', 'Ficha005', 'Guatemala', 5, 3),
(6, '14.6354', '-90.5161', 'Guatemala', 'Ficha006', 'Guatemala', 6, 3),
(7, '14.6355', '-90.5162', 'Guatemala', 'Ficha007', 'Guatemala', 7, 1),
(8, '14.6356', '-90.5163', 'Guatemala', 'Ficha008', 'Guatemala', 8, 2),
(9, '14.6357', '-90.5164', 'Guatemala', 'Ficha009', 'Guatemala', 9, 3),
(10, '14.6358', '-90.5165', 'Guatemala', 'Ficha010', 'Guatemala', 10, 1);


--7 persona visitante

INSERT INTO Persona_visitante VALUES 
('1234567890101', 'Juan', 'Pérez', 'Masculino', 25, 'Maya', 1),
('9876543210123', 'María', 'González', 'Femenino', 30, 'Otro', 2),
('4567891230456', 'Carlos', 'Hernández', 'Masculino', 22, 'Otro', 3),
('3210987650432', 'Ana', 'Martínez', 'Femenino', 35, 'Xinca', 4),
('6789012340567', 'Luis', 'López', 'Masculino', 28, 'Maya', 5),
('2345678900789', 'Sofia', 'Ramírez', 'Femenino', 19, 'Ladino', 6),
('8901234560321', 'Pedro', 'Díaz', 'Masculino', 40, 'Maya', 7),
('7654321090654', 'Elena', 'Torres', 'Femenino', 32, 'Otro', 8),
('1092837460123', 'Miguel', 'Castro', 'Masculino', 27, 'Xinca', 9),
('5473829100456', 'Laura', 'Ruiz', 'Femenino', 29, 'Otro', 10);

--8 registro munae

INSERT INTO RegistroMunae VALUES 
(1001), (1002), (1003), (1004), (1005), (1006), (1007), (1008), (1009), (1010);

--9 Institucion_colaboradora

INSERT INTO Institucion_colaboradora VALUES 
(1, 'Universidad de San Carlos'),
(2, 'Universidad del Valle'),
(3, 'Universidad Rafael Landívar'),
(4, 'Ministerio de Cultura'),
(5, 'Universidad Mariano Galvez'),
(6, 'Smithsonian Institution'),
(7, 'National Geographic'),
(8, 'UNESCO'),
(9, 'Museo Británico'),
(10, 'Universidad Harvard');

--10 categorria de hallazgo

INSERT INTO Categoria_hallazgo VALUES 
(1, 'Cerámica', 'Vasijas y objetos de barro'),
(2, 'Lítica', 'Herramientas y armas de piedra'),
(3, 'Metálica', 'Objetos de metal y joyería'),
(4, 'Ósea', 'Objetos elaborados con hueso'),
(5, 'Textil', 'Tejidos y fibras'),
(6, 'Arquitectónico', 'Estructuras y edificaciones'),
(7, 'Funerario', 'Objetos de contextos funerarios'),
(8, 'Ritual', 'Objetos de uso ceremonial'),
(9, 'Doméstico', 'Objetos de uso cotidiano'),
(10, 'Escultórico', 'Esculturas y figuras');

-- 11. Sitio_arqueologico

INSERT INTO Sitio_arqueologico VALUES 
(1, 'Tikal', 'Petén', 'Buen estado', 'Clásico'),
(2, 'Kaminaljuyú', 'Guatemala', 'Regular', 'Preclásico'),
(3, 'Quiriguá', 'Izabal', 'Excelente', 'Clásico'),
(4, 'Mixco Viejo', 'Chimaltenango', 'Buen estado', 'Postclásico'),
(5, 'Takalik Abaj', 'Retalhuleu', 'Excelente', 'Preclásico'),
(6, 'Iximché', 'Chimaltenango', 'Buen estado', 'Postclásico'),
(7, 'Zaculeu', 'Huehuetenango', 'Regular', 'Postclásico'),
(8, 'El Baúl', 'Escuintla', 'Frágil', 'Preclásico'),
(9, 'Copán', 'Honduras', 'Excelente', 'Clásico'),
(10, 'Yaxhá', 'Petén', 'Buen estado', 'Clásico');

-- 12. Analisis_laboratorio

INSERT INTO Analisis_laboratorio VALUES 
(1, 'Análisis de Carbono 14'),
(2, 'Análisis de Materiales'),
(3, 'Estudio de Pigmentos'),
(4, 'Análisis de Residuos'),
(5, 'Estudio de ADN Antiguo'),
(6, 'Análisis de Isótopos'),
(7, 'Estudio de Huellas de Uso'),
(8, 'Análisis de Composición'),
(9, 'Estudio de Procedencia'),
(10, 'Análisis de Conservación');

-- 13. Permiso_gobierno

INSERT INTO Permiso_gobierno VALUES 
(1, 'Permiso de Excavación'),
(2, 'Permiso de Investigación'),
(3, 'Permiso de Exportación Temporal'),
(4, 'Permiso de Restauración'),
(5, 'Permiso de Análisis'),
(6, 'Permiso de Fotografía'),
(7, 'Permiso de Filmación'),
(8, 'Permiso de Acceso'),
(9, 'Permiso de Colecta'),
(10, 'Permiso de Publicación');

-- 14. sistema_seguridad

INSERT INTO sistema_seguridad VALUES 
(1, 'Alarma', 'Modelo A1', 'Sistema Central'),
(2, 'Cámaras', 'Modelo C2', 'Circuito Cerrado'),
(3, 'Sensores', 'Modelo S3', 'Detección Movimiento'),
(4, 'Control Acceso', 'Modelo CA4', 'Tarjetas Proximidad'),
(5, 'Incendios', 'Modelo I5', 'Detección Humo'),
(6, 'Alarma', 'Modelo A6', 'Sistema Perimetral'),
(7, 'Cámaras', 'Modelo C7', 'Vigilancia 360°'),
(8, 'Sensores', 'Modelo S8', 'Térmicos'),
(9, 'Control Acceso', 'Modelo CA9', 'Biométrico'),
(10, 'Incendios', 'Modelo I10', 'Extintores Automáticos');

-- 15. Mantenimiento_equipo

INSERT INTO Mantenimiento_equipo VALUES 
(1, 'Mantenimiento Preventivo'),
(2, 'Mantenimiento Correctivo'),
(3, 'Calibración de Equipos'),
(4, 'Limpieza Profunda'),
(5, 'Actualización de Software'),
(6, 'Revisión de Seguridad'),
(7, 'Cambio de Piezas'),
(8, 'Diagnóstico General'),
(9, 'Optimización'),
(10, 'Revisión Anual');


-- 16. Sala (depende de Museo)

INSERT INTO Sala VALUES 
(1, 'Sala Cultura Maya', 1),
(2, 'Sala Arte y Ciencia Maya', 1),
(3, 'Sala Religion Maya', 1),
(4, 'Sala Trascender la Muerte', 1),
(5, 'Sala Legado en Glifos', 1),
(6, 'Sala Exaltacion de poder y divinidad', 1),
(7, 'Sala El lugar sagrado de Yokib', 1),
(8, 'Sala Etnologia', 1),
(9, 'Sala Subacuatica', 1);

-- 17. Equipo_Excavacion

INSERT INTO Equipo_Excavacion VALUES 
(1, 'Equipo Tikal', 'Dr. Roberto Morales', 8),
(2, 'Equipo Kaminaljuyú', 'Dra. Isabel Gutiérrez', 6),
(3, 'Equipo Quiriguá', 'Lic. Fernando Castillo', 7),
(4, 'Equipo Mixco Viejo', 'Mtra. Gabriela Reyes', 5),
(5, 'Equipo Takalik Abaj', 'Dr. Alejandro Soto', 9),
(6, 'Equipo Iximché', 'Lic. Patricia Vargas', 6),
(7, 'Equipo Zaculeu', 'Mtro. Ricardo Méndez', 7),
(8, 'Equipo El Baúl', 'Dra. Claudia Rivas', 5),
(9, 'Equipo Copán', 'Lic. Oscar Duarte', 8),
(10, 'Equipo Yaxhá', 'Mtra. Veronica Palma', 6);

-- 18. Herramienta

INSERT INTO Herramienta VALUES 
(1, 'Pala', 'Excavación', 'Buen estado', 20),
(2, 'Pico', 'Excavación', 'Buen estado', 15),
(3, 'Cincel', 'Excavación', 'Regular', 30),
(4, 'Brocha', 'Limpieza', 'Excelente', 50),
(5, 'Cepillo', 'Limpieza', 'Buen estado', 40),
(6, 'Tamiz', 'Cribado', 'Buen estado', 10),
(7, 'Nivel', 'Topografía', 'Excelente', 5),
(8, 'Cinta Métrica', 'Medición', 'Regular', 15),
(9, 'GPS', 'Topografía', 'Buen estado', 3),
(10, 'Cámara', 'Documentación', 'Excelente', 8);


-- 19. Excavacion

INSERT INTO Excavacion VALUES 
(1, 1, '2025-01-01', '2025-01-31', 'Completada', 'Excavación de plaza principal', 'Plaza Central'),
(2, 1, '2025-02-01', '2025-02-28', 'En proceso', 'Excavación residencial', 'Área Habitacional'),
(3, 2, '2025-01-15', '2025-03-15', 'En proceso', 'Excavación de templo', 'Estructura 5D-43'),
(4, 3, '2025-02-01', '2025-04-30', 'Planificada', 'Excavación de estelas', 'Plaza de las Estelas'),
(5, 4, '2025-03-01', '2025-05-31', 'Planificada', 'Excavación defensiva', 'Murallas'),
(6, 5, '2025-01-10', '2025-02-10', 'Completada', 'Excavación ceremonial', 'Altar Central'),
(7, 6, '2025-02-15', '2025-04-15', 'En proceso', 'Excavación residencial', 'Palacio Real'),
(8, 7, '2025-03-01', '2025-06-30', 'Planificada', 'Excavación funeraria', 'Tumba 7'),
(9, 8, '2025-01-20', '2025-03-20', 'En proceso', 'Excavación doméstica', 'Área Habitacional'),
(10, 9, '2025-02-01', '2054-05-31', 'Planificada', 'Excavación ballcourt', 'Juego de Pelota');

-- 20 Pieza

INSERT INTO Pieza VALUES 
(1, 'Vasija Policroma', 'Tikal', 'Guatemala', 'Clásico', 'Vasija ceremonial maya', 1001, 1),
(2, 'Máscara de Jade', 'Kaminaljuyú', 'Guatemala', 'Preclásico', 'Máscara funeraria', 1002, 1),
(3, 'Incensario', 'Copán', 'Honduras', 'Clásico', 'Incensario ceremonial', 1003, 2),
(4, 'Estela D', 'Quiriguá', 'Guatemala', 'Clásico', 'Estela con glifos', 1004, 2),
(5, 'Collar de Jade', 'Tikal', 'Guatemala', 'Clásico', 'Joyería maya', 1005, 3),
(6, 'Vasija Zoomorfa', 'Zaculeu', 'Guatemala', 'Postclásico', 'Vasija en forma de animal', 1006, 3),
(7, 'Punta de Lanza', 'Mixco Viejo', 'Guatemala', 'Postclásico', 'Arma lítica', 1007, 4),
(8, 'Sello Cerámico', 'Takalik Abaj', 'Guatemala', 'Preclásico', 'Sello para textiles', 1008, 4),
(9, 'Figura Femenina', 'El Baúl', 'Guatemala', 'Preclásico', 'Figura de barro', 1009, 5),
(10, 'Ocarina', 'Iximché', 'Guatemala', 'Postclásico', 'Instrumento musical', 1010, 5);

-- 21 pais visita

INSERT INTO Pais_Visita VALUES 
(1, 'Guatemala', '1234567890101'),
(2, 'Estados Unidos', '9876543210123'),
(3, 'México', '4567891230456'),
(4, 'Guatemala', '3210987650432'),
(5, 'Guatemala', '6789012340567'),
(6, 'Guatemala', '2345678900789'),
(7, 'Guatemala', '8901234560321'),
(8, 'Francia', '7654321090654'),
(9, 'Guatemala', '1092837460123'),
(10, 'Chile', '5473829100456');


--22 Idioma 

INSERT INTO Idioma VALUES 
(1, 'Español', '1234567890101'),
(2, 'Inglés', '9876543210123'),
(3, 'Español', '4567891230456'),
(4, 'Español', '3210987650432'),
(5, 'Español', '6789012340567'),
(6, 'Español', '2345678900789'),
(7, 'Español', '8901234560321'),
(8, 'Frances', '7654321090654'),
(9, 'Español', '1092837460123'),
(10, 'Español', '5473829100456');

-- 23. Discapacidad (depende de Persona_visitante)

INSERT INTO Discapacidad VALUES 
(1, 'Ninguna', '1234567890101'),
(2, 'Auditiva', '9876543210123'),
(3, 'Visual', '4567891230456'),
(4, 'Motriz', '3210987650432'),
(5, 'Ninguna', '6789012340567'),
(6, 'Auditiva', '2345678900789'),
(7, 'Visual', '8901234560321'),
(8, 'Motriz', '7654321090654'),
(9, 'Ninguna', '1092837460123'),
(10, 'Auditiva', '5473829100456');

-- 24. Factura (depende de Museo) bitacora

INSERT INTO Factura VALUES 
(1, 5.00, 'Acuerdo 123', '2025-01-15', 'Entrada general', 1),
(2, 5.00, 'Acuerdo 123', '2025-01-16', 'Estudiante', 1),
(3, 5.00, 'Acuerdo 123', '2025-01-17', 'Tercera edad', 1),
(4, 5.00, 'Acuerdo 123', '2025-01-18', 'Entrada general', 1),
(5, 5.00, 'Acuerdo 123', '2025-01-19', 'Tour especial',1 ),
(6, 5.00, 'Acuerdo 123', '2025-01-20', 'Estudiante', 1),
(7, 5.00, 'Acuerdo 123', '2025-01-21', 'Entrada VIP', 1),
(8, 5.00, 'Acuerdo 123', '2025-01-22', 'Niño', 1),
(9, 5.00, 'Acuerdo 123', '2025-01-23', 'Promoción', 1),
(10, 5.00, 'Acuerdo 123', '2025-01-24', 'Entrada general', 1);


-- 25. Taller_manualidades (depende de Museo)
INSERT INTO Taller_manualidades VALUES 
(1, 'Taller de Cerámica Maya', 'Ana García', 'Cerámica Precolombina', '2025-02-01', 'Sala 1', 1),
(2, 'Tejido Tradicional', 'María Rodríguez', 'Textiles Mayas', '2025-02-02', 'Sala 1', 1),
(3, 'Joyería Antigua', 'Carlos López', 'Orfebrería', '2025-02-03', 'Sala 2', 1),
(4, 'Pintura Rupestre', 'Juan Martínez', 'Arte Rupestre', '2025-02-04', 'Sala 2', 1),
(5, 'Alfarería', 'Lucía Hernández', 'Cerámica', '2025-02-05', 'Sala 3', 1),
(6, 'Cestería', 'Pedro Gómez', 'Fibras Naturales', '2025-02-06', 'Sala 4', 1),
(7, 'Máscaras Ceremoniales', 'Sofía Díaz', 'Máscaras', '2025-02-07', 'Sala 5', 1),
(8, 'Instrumentos Musicales', 'Miguel Torres', 'Música Prehispánica', '2025-02-08', 'Sala 6', 1),
(9, 'Tintes Naturales', 'Elena Ramírez', 'Colorantes', '2025-02-09', 'Sala 7', 1),
(10, 'Escultura en Piedra', 'David Castro', 'Escultura', '2025-02-10', 'Sala 2', 1);


-- 26. Arqueologo (depende de Empleado)

INSERT INTO Arqueologo VALUES 
(1, 'Dr. Roberto Morales', 1),
(2, 'Dra. Isabel Gutiérrez', 3),
(3, 'Lic. Fernando Castillo', 8),
(4, 'Mtra. Gabriela Reyes', 9),
(5, 'Dr. Alejandro Soto', 10),
(6, 'Lic. Patricia Vargas', 2),
(7, 'Mtro. Ricardo Méndez', 4),
(8, 'Dra. Claudia Rivas', 5),
(9, 'Lic. Oscar Duarte', 6),
(10, 'Mtra. Veronica Palma', 7);

-- 27. Vehiculos (depende de Museo)

INSERT INTO Vehiculos VALUES 
(1, 'Camioneta', 8, 'Activo', 'P123ABC', 1),
(2, 'Automóvil', 5, 'Activo', 'P456DEF', 1),
(3, 'Camioneta', 8, 'Mantenimiento', 'P789GHI', 1),
(4, 'Motocicleta', 2, 'Activo', 'P101JKL', 1),
(5, 'Automóvil', 5, 'Activo', 'P112MNO', 1),
(6, 'Camioneta', 8, 'Activo', 'P131PQR', 1),
(7, 'Automóvil', 5, 'Mantenimiento', 'P415STU', 1),
(8, 'Camioneta', 8, 'Activo', 'P161VWX', 1),
(9, 'Motocicleta', 2, 'Activo', 'P718YZA', 1),
(10, 'Automóvil', 5, 'Activo', 'P192BCD', 1);

-- 28. Restauracion (depende de RegistroMunae, Pieza, Puesto)

INSERT INTO Restauracion VALUES 
(1, 1001, 1, 'Limpieza química y consolidación', 3),
(2, 1002, 2, 'Restauración de fracturas', 3),
(3, 1003, 3, 'Limpieza mecánica', 4),
(4, 1004, 4, 'Consolidación de superficie', 4),
(5, 1005, 5, 'Restauración de jade', 3),
(6, 1006, 6, 'Limpieza y protección', 4),
(7, 1007, 7, 'Conservación lítica', 3),
(8, 1008, 8, 'Restauración de sellos', 4),
(9, 1009, 9, 'Consolidación de barro', 3),
(10, 1010, 10, 'Restauración completa', 4);

-- 29. Evento_cultural (depende de Museo)

INSERT INTO Evento_cultural VALUES 
(1, 'Noche de Museos', 1),
(2, 'Festival Cultural Maya', 1),
(3, 'Exposición Temporal Etnográfica', 1),
(4, 'Concierto de Marimba', 1),
(5, 'Feria del Libro Antiguo', 1),
(6, 'Taller de Danza Tradicional', 1),
(7, 'Exposición Fotográfica', 1),
(8, 'Semana de la Arqueología', 1),
(9, 'Conferencia sobre Textiles', 1),
(10, 'Festival Gastronómico', 1);

-- 30. Exposicion (depende de Museo)

INSERT INTO Exposicion VALUES 
(1, 'Los Mayas: Legado Milenario', 1),
(2, 'Textiles de Guatemala', 1),
(3, 'Joyas Precolombinas', 1),
(4, 'Cerámica Ancestral', 1),
(5, 'Arte Rupestre', 1),
(6, 'Instrumentos Musicales', 1),
(7, 'Vestimenta Tradicional', 1),
(8, 'Herramientas Antiguas', 1),
(9, 'Escultura en Piedra', 1),
(10, 'Objetos Rituales', 1);

-- 31. Bodega (depende de Museo)

INSERT INTO Bodega VALUES 
(1, 'Bodega Principal', 1),
(2, 'Bodega de Cerámica', 1),
(3, 'Bodega de Textiles', 1),
(4, 'Bodega de Metales', 1),
(5, 'Bodega de Documentos', 1),
(6, 'Bodega de Lítica', 3),
(7, 'Bodega Temporal', 3),
(8, 'Bodega de Investigación', 2),
(9, 'Bodega de Restauración', 1),
(10, 'Bodega de Préstamos', 1);

-- 32. Fotografia_hallazgo (depende de Sitio_arqueologico)

INSERT INTO Fotografia_hallazgo VALUES 
(1, 'Excavación Tikal 2024', 1),
(2, 'Hallazgo Cerámico', 1),
(3, 'Estructura Principal', 2),
(4, 'Contexto Funerario', 2),
(5, 'Artefactos Líticos', 3),
(6, 'Secuencia Estratigráfica', 3),
(7, 'Restos Arquitectónicos', 4),
(8, 'Material Orgánico', 4),
(9, 'Cerámica Policroma', 5),
(10, 'Instrumentos Musicales', 5);

-- 33. Hallazgo (depende de Categoria_hallazgo, Excavacion)

INSERT INTO Hallazgo VALUES 
(1, 1, 1, 'Cerámica', '2025-01-15', 'Bueno', 'Vasija ceremonial completa'),
(2, 2, 1, 'Obsidiana', '2025-01-16', 'Excelente', 'Punta de proyectil'),
(3, 3, 2, 'Jade', '2025-01-17', 'Bueno', 'Cuenta de collar'),
(4, 4, 2, 'Hueso', '2025-01-18', 'Regular', 'Aguja de hueso'),
(5, 5, 3, 'Algodón', '2025-01-19', 'Frágil', 'Fragmento textil'),
(6, 6, 3, 'Piedra', '2025-01-20', 'Bueno', 'Base de columna'),
(7, 7, 4, 'Cerámica', '2025-01-21', 'Excelente', 'Ofrenda funeraria'),
(8, 8, 4, 'Obsidiana', '2025-01-22', 'Bueno', 'Cuchillo ceremonial'),
(9, 9, 5, 'Barro', '2025-01-23', 'Regular', 'Vasija doméstica'),
(10, 10, 5, 'Piedra', '2025-01-24', 'Bueno', 'Figura antropomorfa');

-- 34. Visita_Guiada (depende de Taller, Museo)

INSERT INTO Visita_Guiada VALUES 
(1, 'Recorrido Maya Clásico', 'Español', 25, '2024-01-25', 1, 1),
(2, 'Tour Etnográfico', 'Inglés', 15, '2024-01-26', 2, 1),
(3, 'Visita Arqueológica', 'Español', 30, '2024-01-27', 3, 1),
(4, 'Recorrido Histórico', 'Francés', 20, '2024-01-28', 4, 1),
(5, 'Tour Cerámico', 'Español', 18, '2024-01-29', 5, 1),
(6, 'Visita Textil', 'Inglés', 22, '2024-01-30', 6, 1),
(7, 'Recorrido Ritual', 'Español', 28, '2024-01-31', 7, 1),
(8, 'Tour Arquitectónico', 'Alemán', 12, '2024-02-01', 8, 1),
(9, 'Visita Doméstica', 'Español', 25, '2024-02-02', 9, 1),
(10, 'Recorrido Completo', 'Inglés', 35, '2024-02-03', 10, 1);

-- 35. Informe_Excavacion (depende de Excavacion)

INSERT INTO Informe_Excavacion VALUES 
(1, 1, 'Informe Plaza Central Tikal', 'Dr. Roberto Morales', 'Se encontraron importantes contextos ceremoniales'),
(2, 1, 'Análisis Estratigráfico Tikal', 'Dra. Isabel Gutiérrez', 'Secuencia completa del Clásico Tardío'),
(3, 2, 'Excavación Residencial Kaminaljuyú', 'Lic. Fernando Castillo', 'Estructuras habitacionales del Preclásico'),
(4, 3, 'Estelas de Quiriguá', 'Mtra. Gabriela Reyes', 'Nuevas interpretaciones de glifos'),
(5, 4, 'Fortificaciones Mixco Viejo', 'Dr. Alejandro Soto', 'Sistema defensivo del Postclásico'),
(6, 5, 'Cerámica Takalik Abaj', 'Lic. Patricia Vargas', 'Transición Olmeca-Maya'),
(7, 6, 'Arquitectura Iximché', 'Mtro. Ricardo Méndez', 'Patrones urbanísticos kaqchikeles'),
(8, 7, 'Contextos Funerarios Zaculeu', 'Dra. Claudia Rivas', 'Prácticas funerarias mam'),
(9, 8, 'Sitio El Baúl', 'Lic. Oscar Duarte', 'Ocupación del Preclásico Medio'),
(10, 9, 'Escultura Copán', 'Mtra. Veronica Palma', 'Nuevos hallazgos escultóricos');

-- 36. Convenio_Excavacion (depende de Sitio_arqueologico)

INSERT INTO Convenio_Excavacion VALUES 
(1, 'Convenio USAC-Tikal', 1),
(2, 'Convenio UVG-Kaminaljuyú', 2),
(3, 'Convenio URL-Quiriguá', 3),
(4, 'Convenio MINCULT-Mixco Viejo', 4),
(5, 'Convenio INAH-Takalik Abaj', 5),
(6, 'Convenio Smithsonian-Iximché', 6),
(7, 'Convenio NatGeo-Zaculeu', 7),
(8, 'Convenio UNESCO-El Baúl', 8),
(9, 'Convenio British Museum-Copán', 9),
(10, 'Convenio Harvard-Yaxhá', 10);

-- 37. Publicacion_cientifica (depende de Sitio_arqueologico)

INSERT INTO Publicacion_cientifica VALUES 
(1, 'Los Secretos de Tikal', 1),
(2, 'Kaminaljuyú: Ciudad Antigua', 2),
(3, 'Estelas de Quiriguá', 3),
(4, 'Mixco Viejo: Fortaleza Maya', 4),
(5, 'Takalik Abaj: Transición Cultural', 5),
(6, 'Iximché: Capital Kaqchikel', 6),
(7, 'Zaculeu: Centro Mam', 7),
(8, 'El Baúl: Escultura Antigua', 8),
(9, 'Copán: Dinastía Maya', 9),
(10, 'Yaxhá: Ciudad del Lago', 10);

-- 38. Seguro_Pieza (depende de Pieza, RegistroMunae)

INSERT INTO Seguro_Pieza VALUES 
(1, 'Seguro Vasija Policroma', 50000.00, 'Aseguradora Maya', 1, 1001),
(2, 'Seguro Máscara de Jade', 75000.00, 'Seguros Precolombinos', 2, 1002),
(3, 'Seguro Incensario', 30000.00, 'Aseguradora Cultural', 3, 1003),
(4, 'Seguro Estela D', 100000.00, 'Seguros Patrimonio', 4, 1004),
(5, 'Seguro Collar de Jade', 25000.00, 'Aseguradora Nacional', 5, 1005),
(6, 'Seguro Vasija Zoomorfa', 35000.00, 'Seguros Antiguos', 6, 1006),
(7, 'Seguro Punta de Lanza', 15000.00, 'Aseguradora Maya', 7, 1007),
(8, 'Seguro Sello Cerámico', 20000.00, 'Seguros Precolombinos', 8, 1008),
(9, 'Seguro Figura Femenina', 18000.00, 'Aseguradora Cultural', 9, 1009),
(10, 'Seguro Ocarina', 12000.00, 'Seguros Patrimonio', 10, 1010);

-- 39. Horario_seguridad (depende de sistema_seguridad)

INSERT INTO Horario_seguridad VALUES 
(1, 'Turno Mañana', 1),
(2, 'Turno Tarde', 2),
(3, 'Turno Noche', 3),
(4, 'Turno Completo', 4),
(5, 'Turno Fines de Semana', 5),
(6, 'Turno Especial', 6),
(7, 'Turno Festivos', 7),
(8, 'Turno Administrativo', 8),
(9, 'Turno Nocturno', 9),
(10, 'Turno Mixto', 10);

-- 40. Boleto_conferencia (depende de Persona_visitante)

INSERT INTO Boleto_conferencia VALUES 
(1, 'General', 100.00, '2025-03-01', '1234567890101'),
(2, 'Estudiante', 50.00, '2025-03-01', '9876543210123'),
(3, 'General', 100.00, '2025-03-02', '4567891230456'),
(4, 'Estudiante', 50.00, '2025-03-02', '3210987650432'),
(5, 'VIP', 200.00, '2025-03-03', '6789012340567'),
(6, 'General', 100.00, '2025-03-03', '2345678900789'),
(7, 'Estudiante', 50.00, '2025-03-04', '8901234560321'),
(8, 'General', 100.00, '2025-03-04', '7654321090654'),
(9, 'VIP', 200.00, '2025-03-05', '1092837460123'),
(10, 'Estudiante', 50.00, '2025-03-05', '5473829100456');


-- 41. Conferencia (depende de Taller, Boleto, Museo)
INSERT INTO Conferencia VALUES 
(1, 'Arqueología Maya Actual', '2025-03-01', 'Dr. Roberto Morales', 'Estudiantes y profesionales', 'Auditorio Principal', 1, 1, 1),
(2, 'Textiles Precolombinos', '2025-03-02', 'Dra. Isabel Gutiérrez', 'Público general', 'Sala de Conferencias', 2, 2, 1),
(3, 'Cerámica Antigua', '2025-03-03', 'Lic. Fernando Castillo', 'Arqueólogos', 'Auditorio Principal', 3, 3, 1),
(4, 'Joyas Mayas', '2025-03-04', 'Mtra. Gabriela Reyes', 'Estudiantes', 'Sala de Conferencias', 4, 4, 1),
(5, 'Arquitectura Prehispánica', '2025-03-05', 'Dr. Alejandro Soto', 'Arquitectos', 'Auditorio Principal', 5, 5, 1),
(6, 'Música Maya', '2025-03-06', 'Lic. Patricia Vargas', 'Músicos', 'Sala de Conferencias', 6, 6, 1),
(7, 'Agricultura Antigua', '2025-03-07', 'Mtro. Ricardo Méndez', 'Agricultores', 'Auditorio Principal', 7, 7, 1),
(8, 'Medicina Tradicional', '2025-03-08', 'Dra. Claudia Rivas', 'Médicos', 'Sala de Conferencias', 8, 8, 1),
(9, 'Astronomía Maya', '2025-03-09', 'Lic. Oscar Duarte', 'Astrónomos', 'Auditorio Principal', 9, 9, 1),
(10, 'Escritura Jeroglífica', '2025-03-10', 'Mtra. Veronica Palma', 'Lingüistas', 'Sala de Conferencias', 10, 10, 1);

-- 42. Prestamo_Pieza (depende de RegistroMunae, Institucion)

INSERT INTO Prestamo_Pieza VALUES 
(1, 1, 1001, 1, '2025-03-01', '2025-06-01'),
(2, 2, 1002, 2, '2025-03-02', '2025-06-02'),
(3, 3, 1003, 3, '2025-03-03', '2025-06-03'),
(4, 4, 1004, 4, '2025-03-04', '2025-06-04'),
(5, 5, 1005, 5, '2025-03-05', '2025-06-05'),
(6, 6, 1006, 6, '2025-03-06', '2025-06-06'),
(7, 7, 1007, 7, '2025-03-07', '2025-06-07'),
(8, 8, 1008, 8, '2025-03-08', '2025-06-08'),
(9, 9, 1009, 9, '2025-03-09', '2025-06-09'),
(10, 10, 1010, 10, '2025-03-10', '2025-06-10');

-- 43. Tipo_Prestamo (depende de Prestamo_Pieza)

INSERT INTO Tipo_Prestamo VALUES 
(1, 1, 'Seguro, embalaje profesional', 'Préstamo para exposición temporal', 'Exposición'),
(2, 2, 'Investigación autorizada', 'Préstamo para estudio científico', 'Investigación'),
(3, 3, 'Restauración especializada', 'Préstamo para restauración', 'Restauración'),
(4, 4, 'Documentación completa', 'Préstamo para documentación', 'Documentación'),
(5, 5, 'Exposición internacional', 'Préstamo para exposición internacional', 'Exposición'),
(6, 6, 'Estudio académico', 'Préstamo para tesis doctoral', 'Investigación'),
(7, 7, 'Análisis de laboratorio', 'Préstamo para análisis científico', 'Análisis'),
(8, 8, 'Exposición educativa', 'Préstamo para museo escolar', 'Educación'),
(9, 9, 'Estudio comparativo', 'Préstamo para investigación comparada', 'Investigación'),
(10, 10, 'Exposición itinerante', 'Préstamo para exposición móvil', 'Exposición');

-- 44. Equipo_Excavacion_Detalle (depende de Equipo, Herramienta, Excavacion)

INSERT INTO Equipo_Excavacion_Detalle VALUES 
(1, 1, 1, 1, '2025-01-01', 'Asignación inicial'),
(2, 1, 2, 1, '2025-01-01', 'Herramientas básicas'),
(3, 2, 3, 2, '2025-01-15', 'Equipo especializado'),
(4, 2, 4, 2, '2025-01-15', 'Material de limpieza'),
(5, 3, 5, 3, '2025-02-01', 'Herramientas delicadas'),
(6, 3, 6, 3, '2025-02-01', 'Equipo de cribado'),
(7, 4, 7, 4, '2025-03-01', 'Instrumentos topográficos'),
(8, 4, 8, 4, '2025-03-01', 'Equipo de medición'),
(9, 5, 9, 5, '2025-01-10', 'Tecnología GPS'),
(10, 5, 10, 5, '2025-01-10', 'Equipo documentación');

-- 45. Analisis_Laboratorio_Detalle (depende de Analisis, Pieza, Hallazgo)

INSERT INTO Analisis_Laboratorio_Detalle VALUES 
(1, 1, 1, 1, '2025-02-01', 'Fecha confirmada: 250-300 d.C.'),
(2, 2, 2, 2, '2025-02-02', 'Jade proveniente de Motagua'),
(3, 3, 3, 3, '2025-02-03', 'Pigmentos naturales identificados'),
(4, 4, 4, 4, '2025-02-04', 'Residuos de copal encontrados'),
(5, 5, 5, 5, '2025-02-05', 'ADN de algodón nativo'),
(6, 6, 6, 6, '2025-02-06', 'Isótopos indican origen local'),
(7, 7, 7, 7, '2025-02-07', 'Huellas de uso en filo'),
(8, 8, 8, 8, '2025-02-08', 'Composición arcilla local'),
(9, 9, 9, 9, '2025-02-09', 'Procedencia: cantera cercana'),
(10, 10, 10, 10, '2025-02-10', 'Estado estable, no requiere intervención');

-- 46. Permiso_Gobierno_Detalle (depende de Permiso, Excavacion, Restauracion)

INSERT INTO Permiso_Gobierno_Detalle VALUES 
(1, 1, 1, 1, '2025-01-01', '2025-12-31'),
(2, 2, 2, 2, '2025-01-15', '2025-12-31'),
(3, 3, 3, 3, '2025-02-01', '2025-12-31'),
(4, 4, 4, 4, '2025-02-15', '2025-12-31'),
(5, 5, 5, 5, '2025-03-01', '2025-12-31'),
(6, 6, 6, 6, '2025-03-15', '2025-12-31'),
(7, 7, 7, 7, '2025-01-20', '2025-12-31'),
(8, 8, 8, 8, '2025-02-20', '2025-12-31'),
(9, 9, 9, 9, '2025-03-20', '2025-12-31'),
(10, 10, 10, 10, '2025-01-25', '2025-12-31');

-- 47. Mantenimiento_Equipo_Detalle (depende de Mantenimiento, Equipo, Empleado, SistemaSeguridad)

INSERT INTO Mantenimiento_Equipo_Detalle VALUES 
(1, 1, 1, 1, 1, '2025-01-15', 'Mantenimiento preventivo rutinario'),
(2, 2, 2, 2, 2, '2025-01-16', 'Reparación de cámaras'),
(3, 3, 3, 3, 3, '2025-01-17', 'Calibración de sensores'),
(4, 4, 4, 4, 4, '2025-01-18', 'Actualización de software'),
(5, 5, 5, 5, 5, '2025-01-19', 'Limpieza profunda sistema'),
(6, 6, 6, 6, 6, '2025-01-20', 'Revisión de seguridad'),
(7, 7, 7, 7, 7, '2025-01-21', 'Cambio de piezas desgastadas'),
(8, 8, 8, 8, 8, '2025-01-22', 'Diagnóstico completo'),
(9, 9, 9, 9, 9, '2025-01-23', 'Optimización del sistema'),
(10, 10, 10, 10, 10, '2025-01-24', 'Revisión anual programada');


-- renglon 11
-- 48
INSERT INTO renglon11 VALUES 
(1,1,'250',4000,8000 ),
(2,2,'250',1750, 3500),
(3,3,'250',1500,3000 ),
(4,4,'250',2500, 5000),
(5,5,'250',1250,2500 ),
(6,6,'250',1250,2500 ),
(7,7,'250',1750,3500 ),
(8,8,'250',3000,6000 ),
(9,9,'250',1750,3500 ),
(10,10,'250',5000,10000 )


--joins y selects

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










