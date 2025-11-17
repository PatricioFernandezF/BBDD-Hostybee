-- Crear las bases de datos
CREATE DATABASE IF NOT EXISTS `newsletter`;
CREATE DATABASE IF NOT EXISTS `uploads`;

-- Crear usuario si no existe
CREATE USER IF NOT EXISTS 'hostybee_admin'@'%' IDENTIFIED BY 'Solito674';

-- Otorgar permisos al usuario
GRANT ALL PRIVILEGES ON `newsletter`.* TO 'hostybee_admin'@'%';
GRANT ALL PRIVILEGES ON `uploads`.* TO 'hostybee_admin'@'%';
FLUSH PRIVILEGES;
