
USE Proyectobas1;
GO

ALTER ROLE db_owner ADD MEMBER usuario_administrador;
GO


-- Persona_visitante 1 y 2
INSERT INTO Persona_visitante VALUES 
('1234567890101', 'Juan', 'Pérez', 'Masculino', 25, 'Maya', 1),
('9876543210123', 'María', 'González', 'Femenino', 30, 'Otro', 2)


-- Persona_visitante 5 y 6 examen
INSERT INTO Persona_visitante VALUES 
('6789012340567', 'Luis', 'López', 'Masculino', 28, 'Maya', 5),
('2345678900789', 'Sofia', 'Ramírez', 'Femenino', 19, 'Ladino', 6)

select * from Bitacora_PersonaVisitante


-- Pais_visita 1 y 2
INSERT INTO Pais_Visita VALUES 
(1, 'Guatemala', '1234567890101'),
(2, 'Estados Unidos', '9876543210123')

-- Pais_visita 5 y 6 examen
INSERT INTO Pais_Visita VALUES 
(5, 'Guatemala', '6789012340567'),
(6, 'Guatemala', '2345678900789')


select *from Bitacora_PaisVisita


-- Idioma 1 y 2
INSERT INTO Idioma VALUES 
(1, 'Español', '1234567890101'),
(2, 'Inglés', '9876543210123')


-- Idioma 5 y 6 examen
INSERT INTO Idioma VALUES 
(5, 'Español', '6789012340567'),
(6, 'Español', '2345678900789')

select * from Bitacora_Idioma

update Idioma set Idioma= 'chino' where ID_idioma= 2

-- factura 1 y 2
INSERT INTO Factura VALUES 
(1, 5.00, 'Acuerdo 123', '2025-01-15', 'Entrada general', 1),
(2, 5.00, 'Acuerdo 123', '2025-01-16', 'Estudiante', 1)


-- factura 5 y 6 examen
INSERT INTO Factura VALUES 
(5, 5.00, 'Acuerdo 123', '2025-01-19', 'Tour especial',1 ),
(6, 5.00, 'Acuerdo 123', '2025-01-20', 'Estudiante', 1)


select * from Bitacora_Factura


