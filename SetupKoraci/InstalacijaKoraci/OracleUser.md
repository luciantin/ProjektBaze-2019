# Svatko mora imati ISTOG usera u oracle-xe

Username : veterinar

Password : 1234

- U cmd ili terminal uđite u sqlplus, >> sqlplus i enter
- U sqlplus logirajte se kao SYS a passwd je "passwd as sysdba" (passwd je passwd koji ste stavili pri instalaciji) i upišite sljdece :

```
create user veterinar identified by 1234;

grant CREATE SESSION, ALTER SESSION, CREATE DATABASE LINK, CREATE MATERIALIZED VIEW, CREATE PROCEDURE, CREATE PUBLIC SYNONYM, CREATE ROLE, CREATE SEQUENCE, CREATE SYNONYM, CREATE TABLE, CREATE TRIGGER, CREATE TYPE, CREATE VIEW, UNLIMITED TABLESPACE  to veterinar;
```

- Provjerite dali radi sa `connect veterinar/1234`


# TO je glavni user kao SYS admin za bazu veterinar, za ostale korisnike cemo po putu vidit
