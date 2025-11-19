-- Crear las bases de datos
CREATE DATABASE IF NOT EXISTS `newsletter`;
CREATE DATABASE IF NOT EXISTS `uploads`;

-- Crear usuario si no existe
CREATE USER IF NOT EXISTS 'hostybee_admin'@'%' IDENTIFIED BY 'Solito674';

-- Otorgar TODOS los permisos al usuario, incluyendo crear bases de datos
GRANT ALL PRIVILEGES ON *.* TO 'hostybee_admin'@'%' WITH GRANT OPTION;
FLUSH PRIVILEGES;
