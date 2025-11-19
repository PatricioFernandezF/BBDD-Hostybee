-- Crear el usuario hostybee_admin con TODOS los permisos desde el inicio
CREATE USER IF NOT EXISTS 'hostybee_admin'@'%' IDENTIFIED BY 'Solito674';
GRANT ALL PRIVILEGES ON *.* TO 'hostybee_admin'@'%' WITH GRANT OPTION;
FLUSH PRIVILEGES;

-- Crear las bases de datos
CREATE DATABASE IF NOT EXISTS `newsletter`;
CREATE DATABASE IF NOT EXISTS `uploads`;

FLUSH PRIVILEGES;
