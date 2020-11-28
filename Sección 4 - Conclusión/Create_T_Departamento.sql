/* Ejecutar con user DPODESA */

CREATE TABLE t_departamento
(
  id_departamento          NUMBER(10)       NOT NULL,
  descripcion              VARCHAR2(100)    NOT NULL
);

COMMENT ON TABLE t_departamento IS 'departamentos de la empresa';

COMMENT ON COLUMN t_departamento.id_departamento IS 'codigo departamento';
COMMENT ON COLUMN t_departamento.descripcion     IS 'nombre del departamento';

ALTER TABLE t_departamento ADD (
  CONSTRAINT t_departamento_PK PRIMARY KEY (id_departamento)
    USING INDEX );

SET DEFINE OFF;
Insert into T_DEPARTAMENTO
   (ID_DEPARTAMENTO, DESCRIPCION)
 Values
   (101, 'DEPTO MERKETING');
Insert into T_DEPARTAMENTO
   (ID_DEPARTAMENTO, DESCRIPCION)
 Values
   (102, 'DEPTO VENTAS');
Insert into T_DEPARTAMENTO
   (ID_DEPARTAMENTO, DESCRIPCION)
 Values
   (103, 'DEPTO SISTEMAS');
Insert into T_DEPARTAMENTO
   (ID_DEPARTAMENTO, DESCRIPCION)
 Values
   (104, 'DEPTO CONTABLE');
Insert into T_DEPARTAMENTO
   (ID_DEPARTAMENTO, DESCRIPCION)
 Values
   (105, 'DEPTO RR.HH.');
COMMIT;
