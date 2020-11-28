/* Ejecutar con user DPODESA */

CREATE TABLE t_estado_civil
(
  id_estado_civil             NUMBER(10)      NOT NULL,
  nom_estado_civil            varchar2(30)
);

COMMENT ON TABLE t_estado_civil IS 'estados civiles';

COMMENT ON COLUMN t_estado_civil.id_estado_civil    IS 'id estado civil';
COMMENT ON COLUMN t_estado_civil.nom_estado_civil   IS 'nombre estado civil';

ALTER TABLE t_estado_civil ADD (
  CONSTRAINT t_estado_civil_PK PRIMARY KEY (id_estado_civil)
    USING INDEX );

SET DEFINE OFF;
Insert into T_ESTADO_CIVIL
   (ID_ESTADO_CIVIL, NOM_ESTADO_CIVIL)
 Values
   (1, 'SOLTERO');
Insert into T_ESTADO_CIVIL
   (ID_ESTADO_CIVIL, NOM_ESTADO_CIVIL)
 Values
   (2, 'CASADO');
Insert into T_ESTADO_CIVIL
   (ID_ESTADO_CIVIL, NOM_ESTADO_CIVIL)
 Values
   (3, 'SEPARADO');
Insert into T_ESTADO_CIVIL
   (ID_ESTADO_CIVIL, NOM_ESTADO_CIVIL)
 Values
   (4, 'VIUDO');
COMMIT;
