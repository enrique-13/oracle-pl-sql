/* Ejecutar con user SYSTEM */

-- Crear esquema correcto --
CREATE USER dpodesa
IDENTIFIED BY dpo123
PROFILE DEFAULT
ACCOUNT UNLOCK;
-- 6 Roles for dpodesa --
GRANT CONNECT TO dpodesa;
GRANT RESOURCE TO dpodesa;
GRANT SELECT_CATALOG_ROLE TO dpodesa;
GRANT EXP_FULL_DATABASE TO dpodesa;
GRANT EXECUTE_CATALOG_ROLE TO dpodesa;
ALTER USER dpodesa DEFAULT ROLE ALL;

