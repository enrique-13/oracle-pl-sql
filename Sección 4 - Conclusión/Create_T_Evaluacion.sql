/* Ejecutar con user DPODESA */

CREATE TABLE t_evaluacion
(
  id_evaluacion             NUMBER(10)      NOT NULL,
  id_empleado               number(10)      NOT NULL,
  ind_resultado             number(1),
  det_evaluacion            varchar2(100)
);

COMMENT ON TABLE t_evaluacion IS 'evaluacion de empleados';

COMMENT ON COLUMN t_evaluacion.id_evaluacion    IS 'codigo evaluacion';
COMMENT ON COLUMN t_evaluacion.id_empleado      IS 'codigo empleado';
COMMENT ON COLUMN t_evaluacion.ind_resultado    IS 'resultado de la evaluacion';
COMMENT ON COLUMN t_evaluacion.det_evaluacion   IS 'detalle de la evaluacion';

ALTER TABLE t_evaluacion ADD (
  CONSTRAINT t_evaluacion_PK PRIMARY KEY (id_evaluacion)
    USING INDEX );

SET DEFINE OFF;
Insert into T_EVALUACION
   (ID_EVALUACION, ID_EMPLEADO, IND_RESULTADO, DET_EVALUACION)
 Values
   (1, 10, 0, 'en proceso');
COMMIT;
