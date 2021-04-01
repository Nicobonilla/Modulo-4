
CREATE TABLE usuario (
    userNombre VARCHAR2(30) NOT NULL,
    userApellido VARCHAR2(30) NOT NULL,
    userFeNaci DATE,
    userRun NUMBER(9) NOT NULL,
    tipo_usuario VARCHAR2(50)
);
ALTER TABLE usuario ADD CONSTRAINT usuario_pk PRIMARY KEY (
userRun );
ALTER TABLE usuario ADD CONSTRAINT cx_tipo_usuairio
CHECK ( tipo_usuario IN ( 'Cliente', 'Profesional', 'Administrativo'));
 -- GRUPAL 5;
-- PREGUNTA 1 Y 2
-- CREACION DE TABLAS, PK, FK Y CONSTRAINT NO NULL 
-- cliente, capacitacion, accidente, asistentes
CREATE TABLE cliente (
    rutcliente NUMBER(9) NOT NULL,
    telefono VARCHAR2(20) NOT NULL,
    afp VARCHAR2(30),
    sistemasalud NUMBER(2),
    direccion VARCHAR2(70),
    comuna VARCHAR2(50),
    edad NUMBER(3) NOT NULL
);
ALTER TABLE cliente ADD CONSTRAINT cliente_pk PRIMARY KEY (
rutcliente );

-- TABLA CAPACITACION
CREATE TABLE capacitacion (
 idcapacitacion NUMBER(9) NOT NULL,
 fecha DATE,
 hora DATE,
 lugar VARCHAR2(50) NOT NULL,
 duracion NUMBER(3),
 cantidadasistentes NUMBER(5) NOT NULL,
 Cliente_rutcliente NUMBER(9) NOT NULL
);
ALTER TABLE capacitacion ADD CONSTRAINT capacitacion_pk PRIMARY KEY (
idcapacitacion );
-- FK CAPACITACIONES A CLIENTE
ALTER TABLE capacitacion
 ADD CONSTRAINT capacitacion_cliente_fk FOREIGN KEY (
Cliente_rutcliente)
 REFERENCES cliente ( rutcliente );
 
CREATE TABLE asistentes (
 idasistente NUMBER(9) NOT NULL,
 nombres VARCHAR2(100) NOT NULL,
 edad NUMBER(3) NOT NULL,
 Capacitacion_idcapacitacion NUMBER(9) NOT NULL
);
ALTER TABLE asistentes ADD CONSTRAINT asistentes_pk PRIMARY KEY (
idasistente );
ALTER TABLE asistentes
 ADD CONSTRAINT asistentes_capacitacion_fk FOREIGN KEY (
Capacitacion_idcapacitacion )
 REFERENCES capacitacion ( idcapacitacion );
 
 CREATE TABLE accidente (
 accidenteid NUMBER(9) NOT NULL,
 dia DATE,
 hora DATE,
 lugar VARCHAR2(50) NOT NULL,
 origen VARCHAR2(100),
 consecuencias VARCHAR2(100),
 Cliente_rutcliente NUMBER(9) NOT NULL
 );
 ALTER TABLE accidente ADD CONSTRAINT accidente_pk PRIMARY KEY (
accidenteid);

ALTER TABLE accidente
 ADD CONSTRAINT accidente_cliente_fk FOREIGN KEY (
Cliente_rutcliente)
 REFERENCES cliente ( rutcliente );
 
--PREGUNTA 3
 --CREAR SECUENCIA
 CREATE SEQUENCE asis_sc
    START WITH 0
    MINVALUE 0
    MAXVALUE 100;
 CREATE SEQUENCE cap_sc 
    START WITH 0
    MINVALUE 0
    MAXVALUE 100;
 CREATE SEQUENCE acc_sc
    START WITH 0
    MINVALUE 0
    MAXVALUE 100;
--AUTONUMBER PK CAPACITACION
CREATE OR REPLACE TRIGGER TRIGGERCAP
BEFORE INSERT ON capacitacion
FOR EACH ROW
  WHEN (new.idcapacitacion IS NULL)
BEGIN
  :new.idcapacitacion := cap_sc.NEXTVAL;
END;
/
--AUTONUMBER PK ASISTENTES 
CREATE OR REPLACE TRIGGER TRIGGERASIST
BEFORE INSERT ON asistentes
FOR EACH ROW
  WHEN (new.idasistente IS NULL)
BEGIN
  :new.idasistente := asis_sc.NEXTVAL;
END;
/
--AUTONUMBER PK ACCIDENTE
CREATE OR REPLACE TRIGGER TRIGGERACC
BEFORE INSERT ON accidente
FOR EACH ROW
  WHEN (new.accidenteid IS NULL)
BEGIN
  :new.accidenteid:= acc_sc.NEXTVAL;
END;
/
--PREGUNTA 3
ALTER TABLE cliente ADD CONSTRAINT UK_telefono
UNIQUE (telefono);
-- PREGUNTA 4
ALTER TABLE cliente ADD CONSTRAINT CX_sistemasalud
CHECK (sistemasalud IN (1,2));

------------------------------------------------------------------
--GRUPAL 6
------------------------------------------------------------------
-- MODIFICANDO TABLA CLIENTE - nombres
ALTER TABLE cliente RENAME COLUMN telefono to clitelefono;
ALTER TABLE cliente RENAME COLUMN afp to cliafp;
ALTER TABLE cliente RENAME COLUMN sistemasalud to clisistemasalud;
ALTER TABLE cliente RENAME COLUMN direccion to clidireccion;
ALTER TABLE cliente RENAME COLUMN comuna to clicomuna;
ALTER TABLE cliente RENAME COLUMN edad to cliedad;
-- MODIFICO RESTRICCION NULL
--ALTER TABLE cliente MODIFY (clidireccion NULL);
--ALTER TABLE cliente MODIFY (clicomuna NULL);
--CLICOMUNA
ALTER TABLE cliente MODIFY clidireccion VARCHAR2(100);
--ALTER TABLE cliente MODIFY ( cliapellidos VARCHAR2(50) );

-- AJUSTE TABLA CAPACITACION: TABLA_NAME
ALTER TABLE capacitacion RENAME COLUMN fecha to capfecha;
ALTER TABLE capacitacion RENAME COLUMN hora TO caphora;
ALTER TABLE capacitacion RENAME COLUMN lugar to caplugar;
ALTER TABLE capacitacion RENAME COLUMN duracion to capduracion;
-- RESTRICCIONES Y DROP
ALTER TABLE capacitacion MODIFY ( capfecha NOT NULL );
ALTER TABLE capacitacion MODIFY ( capduracion NUMBER(4));
ALTER TABLE capacitacion DROP COLUMN cantidadasistentes;

--ALTER TABLE accidente RENAME COLUMN idaccidente to accidenteid;
ALTER TABLE accidente RENAME COLUMN dia to accifecha;
ALTER TABLE accidente RENAME COLUMN hora to accihora;
ALTER TABLE accidente RENAME COLUMN lugar to accilugar;
ALTER TABLE accidente RENAME COLUMN origen to acciorigen;
ALTER TABLE accidente RENAME COLUMN consecuencias to acciconsecuencias;

-- MODIFICACION NOT NULL
ALTER TABLE accidente MODIFY ( accifecha NOT NULL);
ALTER TABLE accidente MODIFY ( accilugar NOT NULL);
--ALTER TABLE accidente MODIFY ( acciorigen NOT NULL);
-- TAMAÑOS
ALTER TABLE accidente MODIFY ( accilugar VARCHAR2(150));
-- TABLA ASISTENTES: NUEVAS COLUMNAS
ALTER TABLE asistentes ADD (
    asistcorreo VARCHAR2(70), 
    asisttelefono VARCHAR2(20)
    );
ALTER TABLE asistentes RENAME COLUMN nombres to asistnombrecompleto;
ALTER TABLE asistentes RENAME COLUMN edad to asistedad;

-- NUEVA TABLA VISITAS
CREATE TABLE visita (
 idvisita NUMBER(9) NOT NULL,
 visfecha DATE NOT NULL,
 vishora DATE,
 vilugar VARCHAR2(50) NOT NULL,
 viscomentarios VARCHAR2(250) NOT NULL,
 Cliente_rutcliente NUMBER(9) NOT NULL
 );
 ALTER TABLE visita ADD CONSTRAINT visita_pk PRIMARY KEY (
idvisita);
ALTER TABLE visita
 ADD CONSTRAINT visita_cliente_fk FOREIGN KEY (
cliente_rutcliente)
 REFERENCES cliente ( rutcliente );

------------------------------------------------------------------
--GRUPAL 8
------------------------------------------------------------------

CREATE TABLE chequeoTipo (
    idchequeo NUMBER(5) NOT NULL,
    chenombre VARCHAR2(30) NOT NULL
) ;
 ALTER TABLE chequeoTipo ADD CONSTRAINT chequeo_pk PRIMARY KEY (
idchequeo);

CREATE TABLE registroChequeo (
    idRegistroChequeo NUMBER(8) NOT NULL,
    visita_idvisita NUMBER(9) NOT NULL,
    chequeo_idchequeo NUMBER(5) NOT NULL ,
    estadoCumplimiento VARCHAR2(15) NOT NULL-- cumple, cumple con observaciones, no cumple)
);
 ALTER TABLE registroChequeo ADD CONSTRAINT registroChequeo_pk PRIMARY KEY (
idRegistroChequeo );
-- FK REGISTROS POR VISITA
ALTER TABLE registroChequeo 
 ADD CONSTRAINT registroChequeo_visita_fk FOREIGN KEY (
visita_idvisita)
 REFERENCES visita ( idvisita );
 
 -- TIPO DE CHEQUEO POR REGISTRO
 ALTER TABLE registroChequeo 
 ADD CONSTRAINT registroChequeo_chequeo_fk FOREIGN KEY (
chequeo_idchequeo)
 REFERENCES chequeoTipo ( idchequeo );
-- RESTRINGIENDO INPUT ESTADOCUMPLIMIENTO
ALTER TABLE registroChequeo ADD CONSTRAINT ck_estadoCumplimiento
CHECK ( estadoCumplimiento IN ( 'Cumple', 'Cumple con observaciones', 'No cumple'));

CREATE TABLE administrativo (
runAdm NUMBER(9) NOT NULL,
admCorreo VARCHAR2(30) ,
admArea VARCHAR2(20)
);
ALTER TABLE administrativo ADD CONSTRAINT administrativo_pk PRIMARY KEY (
runAdm);
-- FK USUARIO_ADM
ALTER TABLE administrativo 
 ADD CONSTRAINT administrativo_usuario_fk FOREIGN KEY (runAdm)
 REFERENCES usuario ( userRun );

--TABLA PROFESIONAL
CREATE TABLE profesional (
    runProfesional NUMBER(9),
    proTelefono VARCHAR2(30) ,
    proTitulo VARCHAR2(30) ,
    proProyecto VARCHAR2(30)
);  
ALTER TABLE profesional ADD CONSTRAINT profesional_pk PRIMARY KEY (runProfesional );
-- asociar a un usuario fk como adm y cliente

-- FK USUARIO_PROFESIONAL 
 ALTER TABLE profesional 
 ADD CONSTRAINT profesional_usuario_fk FOREIGN KEY (runProfesional )
REFERENCES usuario ( userRun );

 -- FK USUARIO_CLIENTE
 ALTER TABLE cliente 
 ADD CONSTRAINT cliente_usuario_fk FOREIGN KEY (rutCliente)
 REFERENCES usuario ( userRun );

 -- CREAR SEQ Y TRIG PARA NUEVAS PK VISITA, REG CHEQUEO
--AUTONUMBER PK VISITA
CREATE SEQUENCE visita_sc
    START WITH 0
    MINVALUE 0
    MAXVALUE 100;
CREATE OR REPLACE TRIGGER TRIGGERVIS
BEFORE INSERT ON visita
FOR EACH ROW
  WHEN (new.idvisita IS NULL)
BEGIN
  :new.idvisita := visita_sc.NEXTVAL;
END;
/
--AUTONUMBER PK REGISTRO CHEQUEO
CREATE SEQUENCE regchequeo_sc
    START WITH 0
    MINVALUE 0
    MAXVALUE 100;
CREATE OR REPLACE TRIGGER TRIGGERREG
BEFORE INSERT ON registroChequeo
FOR EACH ROW
  WHEN (new.idRegistroChequeo IS NULL)
BEGIN
  :new.idRegistroChequeo := regChequeo_sc.NEXTVAL;
END;
/

------------------------------------------------------------------
--FINAL MODULO 2
------------------------------------------------------------------
-- TABLA PAGO
CREATE TABLE pago (
    idpago NUMBER(6) NOT NULL, -- autoincremental
    fechaPago DATE, 
    montoPago NUMBER(12),
    mesPago VARCHAR2(15),
    añoPago NUMBER(4),
    cliente_rutCliente NUMBER(9) 
);
ALTER TABLE pago ADD CONSTRAINT pago_pk PRIMARY KEY (idPago);
ALTER TABLE pago
ADD CONSTRAINT cliente_pago_fk FOREIGN KEY (
cliente_rutCliente)
REFERENCES cliente (rutCliente);

-- AUTOINCREMENTAL PAGO
CREATE SEQUENCE pago_sc
   START WITH 0
    MINVALUE 0
    MAXVALUE 100;
    
CREATE OR REPLACE TRIGGER TRIGGERACT
BEFORE INSERT ON pago
FOR EACH ROW
  WHEN (new.idpago IS NULL)
BEGIN
  :new.idpago := pago_sc.NEXTVAL;
END;
/
-- TABLA ASESORIA
CREATE TABLE asesoria (
idasesoria NUMBER(4),
asesFechaRealizacion DATE,
asesMotivoSolicita VARCHAR2(100),
profesional_rutProfesional NUMBER(9)
);
ALTER TABLE asesoria ADD CONSTRAINT asesoria_pk PRIMARY KEY (idAsesoria);
--fk a profesional
ALTER TABLE asesoria
ADD CONSTRAINT profesional_asesoria_fk FOREIGN KEY (
profesional_rutProfesional)
REFERENCES profesional (runProfesional);

CREATE TABLE actividadMejora (
	idactividadMejora NUMBER(6) NOT NULL, -- AUTOINCREMENTAL
	amTitulo VARCHAR2(50),
	amDescripcion VARCHAR2(250),
	amPlazoRes NUMBER (3),-- dias
    asesoria_idactividadMejora NUMBER(9)
);
ALTER TABLE actividadMejora ADD CONSTRAINT actividadMejora_pk PRIMARY KEY (idactividadMejora);
--fk a actividadMejora
ALTER TABLE actividadMejora
ADD CONSTRAINT mejora_profesional_fk FOREIGN KEY (
asesoria_idactividadMejora)
REFERENCES asesoria (idasesoria);
-- AUTOINCREMENTAL IDAMEJORA
CREATE SEQUENCE act_sc
   START WITH 0
    MINVALUE 0
    MAXVALUE 100;
CREATE OR REPLACE TRIGGER TRIGGERACT
BEFORE INSERT ON actividadMejora
FOR EACH ROW
  WHEN (new.idactividadMejora IS NULL)
BEGIN
  :new.idactividadMejora := act_sc.NEXTVAL;
END;
/
