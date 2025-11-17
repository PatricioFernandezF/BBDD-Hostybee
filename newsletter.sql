-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Servidor: mysql-1745666787842-db:3306
-- Tiempo de generación: 17-11-2025 a las 19:50:22
-- Versión del servidor: 8.0.40
-- Versión de PHP: 8.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `newsletter`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `payment_events`
--

CREATE TABLE `payment_events` (
  `id` int NOT NULL,
  `event_type` varchar(255) NOT NULL,
  `stripe_event_id` varchar(255) DEFAULT NULL,
  `subscriber_id` int DEFAULT NULL,
  `data` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `subscription_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `stripe_customer_id` varchar(255) DEFAULT NULL,
  `subscription_status` enum('active','canceled','paused') DEFAULT 'active',
  `payment_status` enum('paid','pending','failed') DEFAULT 'pending',
  `subscription_plan` varchar(100) DEFAULT 'monthly',
  `last_payment_date` timestamp NULL DEFAULT NULL,
  `next_payment_date` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`, `name`, `password`, `subscription_date`, `stripe_customer_id`, `subscription_status`, `payment_status`, `subscription_plan`, `last_payment_date`, `next_payment_date`, `created_at`, `updated_at`) VALUES
(12, 'cdeivis1970@gmail.com', 'David Tamayo', '056439132a3f9325c196f954a7392cd18c1c4e15c920cdf6904255c696533156', '2025-05-02 15:43:03', 'cus_SEpOw0id7h8Xr5', 'active', 'pending', 'mensual', NULL, '2025-12-02 15:43:03', '2025-05-02 15:43:09', '2025-11-02 15:43:23'),
(13, 'carlosnarro@gmail.com', 'CARLOS NARRO DIEGO', '8cd731fdbc19efe8cbf0fbb159c8d1d4451f5130c5949ee615656cab572b98da', '2025-05-02 15:47:50', 'cus_SEpTzxcZYHPopc', 'active', 'pending', 'mensual', NULL, '2025-12-02 15:47:50', '2025-05-02 15:48:32', '2025-11-02 15:48:16'),
(14, 'holapsanchez@gmail.com', 'Jose Sanchez Garcia', '95ac9845ccef9ce03d80f101b26b0b9be4bf45a786e88fbaab083fe2aa3a850c', '2025-05-02 16:15:52', 'cus_SEpvSxY0n15fLZ', 'active', 'pending', 'mensual', NULL, '2025-12-02 16:15:52', '2025-05-02 16:16:51', '2025-11-02 16:16:54'),
(18, 'moralescorreaed@gmail.com', 'Edwin Morales', '4e27ada4bbaf31f544eeb214e43e73e1d532157f837fd7ef036dc871cf896c65', '2025-05-02 17:30:47', 'cus_SEr8g49vGNdEs4', 'active', 'pending', 'mensual', NULL, '2025-12-02 17:30:47', '2025-05-02 17:30:52', '2025-11-02 17:31:06'),
(19, 'anabia2200@gmail.com', 'Ana Belen Iglesias Alvarez', '28e254c778b86d8e9f7807d2253bb51b409490b2b67e882aba632a618e7728f9', '2025-05-02 17:51:36', 'cus_SErTb5THjZMSda', 'active', 'pending', 'mensual', NULL, '2025-12-02 17:51:36', '2025-05-02 17:52:28', '2025-11-02 17:51:54'),
(21, 'luisma.gallego@gmail.com', 'Luis Manuel Gallego', '23fc6754e7107abd90bfd5c33084dad8431f7310913cf829ea0c6b8556ca19eb', '2025-05-02 18:12:41', 'cus_SEroR9h32puFPH', 'active', 'pending', 'mensual', NULL, '2025-12-02 18:12:41', '2025-05-02 18:13:16', '2025-11-02 18:12:58'),
(24, 'alvaro.ricon@gmail.com', 'Alvaro Ricon Rivera', '563672eeb7786a756386662c05abbad4d49c783ecac9745dee4a4f936b44691b', '2025-05-02 18:59:35', 'cus_SEsZ78vSkbeeAp', 'active', 'pending', 'mensual', NULL, '2025-12-02 18:59:35', '2025-05-02 19:01:49', '2025-11-02 19:00:02'),
(25, 'mediabuyer@grupoimpuls.es', 'Cristian Quiles', 'e7ff2a6f0608ac486c45b789690dc2b34091e0513073910450bea667c44828a5', '2025-05-02 19:47:16', 'cus_SEtKAPMzJ2U7R5', 'active', 'pending', 'mensual', NULL, '2025-12-02 19:47:16', '2025-05-02 19:48:32', '2025-11-02 19:47:39'),
(28, 'nicobranca@gmail.com', 'Branca Manso Nicolas', '67f6a4e978343e5d308397b828b23a2b45a86975b62e9d3e9a9ca8a0f8d6b937', '2025-05-02 22:21:23', 'cus_SEvpkHI8VoBXu5', 'active', 'pending', 'mensual', NULL, '2025-12-02 22:21:23', '2025-05-02 22:21:30', '2025-11-02 22:22:22'),
(29, 'frmengibar@gmail.com', 'FRANCISCO MENGIBAR GUTIERREZ', '23740d14d61b2d17f4cdccfae3ae096627b991f33bd5a1c78c7e7fdd883267bb', '2025-05-02 22:29:36', 'cus_SEvxbjxGMagY3r', 'active', 'pending', 'mensual', NULL, '2025-12-02 22:29:36', '2025-05-02 22:30:14', '2025-11-02 22:30:25'),
(33, 'thonyreyes@gmail.com', 'Thony Reyes', '091a474b09095c43ad4294137226cc14bc70d38bbcfad2e8617ac351a31d186a', '2025-05-03 01:22:56', 'cus_SEykkxGOGVpnJN', 'active', 'pending', 'mensual', NULL, '2025-12-03 01:22:56', '2025-05-03 01:23:07', '2025-11-03 01:23:51'),
(35, 'juan31an@gmail.com', 'juan francisco gomez dominguez', '33395e3c1759161051352b6e4c27986e1ad87741603c4a2aa3644d7bea1f67c3', '2025-05-03 05:30:56', 'cus_SF2kniTlC1d6ay', 'active', 'pending', 'mensual', NULL, '2025-12-03 05:30:56', '2025-05-03 05:31:31', '2025-11-03 05:31:48'),
(37, 'markentis.com@gmail.com', 'Jose I Espinel', '0f49019d5e121fcab965172787aefaf925b401be89c88cf0639727b436144287', '2025-05-03 08:50:20', 'cus_SF5yXQOldvfpZA', 'active', 'pending', 'mensual', NULL, '2025-12-03 08:50:20', '2025-05-03 08:51:02', '2025-11-03 08:50:40'),
(38, 'elgatodeescayola@gmail.com', 'Eduardo Marcos Alejos', '771f5b557ce046bb0a5088d8b3b39c89ac570e3b8759494eefb581bf65fce3ab', '2025-05-03 09:14:32', 'cus_SF6MifGLi94qFT', 'active', 'pending', 'mensual', NULL, '2025-12-03 09:14:32', '2025-05-03 09:15:03', '2025-11-03 09:15:41'),
(39, 'digital.mailbox77@gmail.com', 'CARLOS GOMEZ', 'cab194de4acc192b6d248d1d7b60e7f8473cbc9800b44e15d602864296595001', '2025-05-03 12:34:58', 'cus_SF9asKiqBltLwu', 'active', 'pending', 'mensual', NULL, '2025-12-03 12:34:58', '2025-05-03 12:35:04', '2025-11-03 12:35:54'),
(40, 'frhoydon@gmail.com', 'Florencio Francisco Hoyos Donis', '4b2caf6ef5190368beee411823471202d5786f57e8294914d2d5975f4f88c67f', '2025-05-03 12:37:25', 'cus_SF9dqiy7tMHd69', 'active', 'pending', 'mensual', NULL, '2025-12-03 12:37:25', '2025-05-03 12:38:51', '2025-11-03 12:38:05'),
(41, 'psamar@gmail.com', 'paul saavedra', 'a3130c3f513fb30964e0a37ba255e707a3dd73c06e07f7c61ccba3c2b9cfe0f2', '2025-05-03 16:16:03', 'cus_SFD90xlMbzbTNc', 'active', 'pending', 'mensual', NULL, '2025-12-03 16:16:03', '2025-05-03 16:16:14', '2025-11-03 16:16:43'),
(46, 'rc@ricardocampos.es', 'Ricardo  Campos', '26127d4dccb1411ded9aa2581ded77947f8f85d8e595e1ea157e2d82207461a3', '2025-05-03 21:53:30', 'cus_SFIbnyrEPws2P9', 'active', 'pending', 'mensual', NULL, '2025-12-03 21:53:30', '2025-05-03 21:53:35', '2025-11-03 21:54:04'),
(47, 'elbagonzalocarrera@gmail.com', 'Maria elba Gonzalo carrera', 'c93a374d54fa6c383debb7fd709ab8c851911f08cdc415880e224e8cab88dd46', '2025-05-04 14:21:05', 'cus_SFYWfQSjgSLumL', 'active', 'pending', 'mensual', NULL, '2025-12-04 14:21:05', '2025-05-04 14:30:49', '2025-11-04 14:21:46'),
(48, 'j82caballero@gmail.com', 'José Caballero', '0cbd3b8119029bbe3961991ee31a653a534110b257e1d75c59e34cc5d683ca04', '2025-05-04 15:29:31', 'cus_SFZdhZpx0DkBH9', 'active', 'pending', 'mensual', NULL, '2025-12-04 15:29:31', '2025-05-04 15:30:27', '2025-11-04 15:30:34'),
(49, 'vitxuia@gmail.com', 'Pedro Imaz Lasarte', '44cc77ba3a1b2817696fd3a93d9f28b9beeb79a436c87c7f283882d97f725f89', '2025-05-04 21:21:43', 'cus_SFfJSNewvCRRJ5', 'active', 'pending', 'mensual', NULL, '2025-12-04 21:21:43', '2025-05-04 21:22:14', '2025-11-04 21:22:10'),
(51, 'pcacermo@gmail.com', 'Jose Caceres', 'a9153c9510797c4308b8dcdef5cc8adb788d9fc7f9a1d30b1c0230f0ad3ed4ec', '2025-05-09 16:24:36', 'cus_SHSel1tHlRgzei', 'active', 'pending', 'mensual', NULL, '2025-11-09 16:24:36', '2025-05-09 16:24:41', '2025-10-09 16:25:09'),
(53, 'eugortega@gmail.com', 'A partir de ahora habla en espanol', 'fe7a925eebbe2a49183a730d3da5ae7054e4f71723c4c85144acc2ed95b51f02', '2025-05-09 17:19:37', 'cus_SHTXL41I8gZC9h', 'active', 'pending', 'mensual', NULL, '2025-11-09 17:19:37', '2025-05-09 17:19:44', '2025-10-09 17:19:59'),
(54, 'ruben.9591@hotmail.com', 'RUBEN ARANA', '9cf9adb833d900be283b3d5ba284aabe47ddf591f966ed854b7a67b8c4aa9fc7', '2025-05-09 17:58:51', 'cus_SHUAQxedPsZ1fE', 'active', 'pending', 'mensual', NULL, '2025-11-09 17:58:51', '2025-05-09 17:59:02', '2025-10-09 17:59:34'),
(55, 'marcos.perez@gmail.com', 'Marcos Perez Novo', '3753fbd1a1e32ab39ca2b6a2f5cb15318bff04be4ab0e0a366f6dd0ce59f5841', '2025-05-09 22:54:19', 'cus_SHYvFF3jRbGs54', 'active', 'pending', 'mensual', NULL, '2025-11-09 22:54:19', '2025-05-09 22:54:26', '2025-10-09 22:55:15'),
(56, 'romassardo@gmail.com', 'Rodrigo Massardo', '7b53faa60b9588492422afbe6f50f04d0f936d6882c88a7bba08442f311b6563', '2025-05-10 03:06:33', 'cus_SHd0NssjdXIbo2', 'active', 'pending', 'mensual', NULL, '2025-11-10 03:06:33', '2025-05-10 03:06:40', '2025-10-10 03:07:32'),
(57, 'aramosseijo@gmail.com', 'Ángel Miguel Ramos Seijo', '1a3a047b67c136b9c27a4e1aa12deb3deafd8b69692a1142a1b624af34b785bd', '2025-05-16 22:58:22', 'cus_SKBansXcVI1eih', 'active', 'pending', 'mensual', NULL, '2025-12-16 22:58:22', '2025-05-10 09:19:33', '2025-11-16 22:58:42'),
(58, 'usblsb@mac.com', 'JUAN LUIS MARTEL REVUEL', 'aa7e63c9c670ce80e4869e72f89c0e6a45afdbc8ba63faf36412f9086bd48d98', '2025-05-10 09:24:56', 'cus_SHj6wxhuYEyC1M', 'active', 'pending', 'mensual', NULL, '2025-11-10 09:24:56', '2025-05-10 09:25:59', '2025-10-10 09:25:57'),
(60, 'angel73388@gmail.com', 'Angel Mtz', '60dd03266d89a81a66e6e3cf1f0f9c6895d99b2ad060e5cce855793a5cc3d9e1', '2025-05-10 13:48:35', 'cus_SHnMGEZ0U2M2w1', 'active', 'pending', 'mensual', NULL, '2025-11-10 13:48:35', '2025-05-10 13:49:16', '2025-10-10 13:49:32'),
(62, 'soyjoseluislopez@gmail.com', 'Jose Luis López Hernández', 'cc529c1e033fa2f8691e7b4f326d9a5bf5363e280473fc0e33b5e4900352dfb5', '2025-05-10 21:16:35', 'cus_SHuaDudslJzjCQ', 'active', 'pending', 'mensual', NULL, '2025-11-10 21:16:35', '2025-05-10 21:17:26', '2025-10-10 21:16:43'),
(63, 'aruizmon@icloud.com', 'Alberto Ruiz Mondaza', '880c788d4bfb60d6c61cc278c9b6829d85cfe6e23730be6c41b5b622b26a2ad1', '2025-05-11 17:59:10', 'cus_SIEctSJ66SxSTx', 'active', 'pending', 'mensual', NULL, '2025-11-11 17:59:10', '2025-05-11 17:59:45', '2025-10-11 17:59:28'),
(65, 'jordi@atipus.com', 'Jordi Blanch', 'fc6e2cdd6a76ff6d7ebb97d021e2256cb1088a70f0c7224e452205dc196a1f6a', '2025-05-13 18:29:16', 'cus_SIzY61xrY2Zugq', 'active', 'pending', 'mensual', NULL, '2025-12-13 18:29:16', '2025-05-13 18:29:21', '2025-11-16 15:12:15'),
(66, 'moises.menendez@icam.es', 'MOISES', 'fad934df447beb40cc701c9b899429c8edca52240586ed7bdc2eca1f9b5a7aa4', '2025-05-17 04:43:20', 'cus_SKH8TFBG4qSXeA', 'active', 'pending', 'mensual', NULL, '2025-12-17 04:43:20', '2025-05-17 04:44:24', '2025-11-17 04:44:13'),
(68, 'facugb@gmail.com', 'Benitez Facundo G', '974b5365e9798e199cdabe7fe377d1c3a1cfad65ba8035b31707ec3d6a74fa16', '2025-05-17 12:26:02', 'cus_SKObLyQKE24jvx', 'active', 'pending', 'mensual', NULL, '2025-12-17 12:26:02', '2025-05-17 12:26:07', '2025-11-17 12:26:56'),
(69, 'secoviejo@hotmail.com', 'Luis Enrique Seco Viejo', 'bfcd4cad213d6e196a2176bc89e68ee5c7e62ba28e9c91b5fe0f70e972ad015e', '2025-05-17 17:20:16', 'cus_SKTL1EPI2kCFVv', 'active', 'pending', 'mensual', NULL, '2025-12-17 17:20:16', '2025-05-17 17:21:20', '2025-11-17 17:21:18'),
(70, 'lucaentrenador@gmail.com', 'BRUNO LUCA.RAFFAELE', 'd408b8af36d4f34054d10096a75384149b3b76f0f01150f5309b3ebe1994eab8', '2025-05-18 08:57:03', 'cus_SKiSxC5HFIkwQo', 'active', 'pending', 'mensual', NULL, '2025-11-18 08:57:03', '2025-05-18 08:57:58', '2025-10-18 08:58:10'),
(75, 'harold.rovira@hotmail.com', 'Harold Lopez', '58f1112cb89aecf6552163b908a83d7088e201925d487c9e6c708541a6761f87', '2025-05-30 16:26:03', 'cus_SPKPZkHy3qBkYk', 'active', 'pending', 'mensual', NULL, '2025-11-30 16:26:03', '2025-05-30 16:26:09', '2025-10-30 16:27:12'),
(76, 'mgferrer2000@gmail.com', 'MIGUEL A GONZÁLEZ FERRER', '6ee9829c602eb3a46821266e59f0a7847d649417f1ca7335f3c90a56eb4817fd', '2025-05-30 19:07:52', 'cus_SPN13jpseHWv6W', 'active', 'pending', 'mensual', NULL, '2025-11-30 19:07:52', '2025-05-30 19:08:35', '2025-10-30 19:08:03'),
(77, 'joseantonio.lahaba@gmail.com', 'Jose Antonio', '02e33e97e1aa1d95e6a6b63d51ee076a66d40a35982ee84ebb8a47d77d713b00', '2025-06-07 22:00:48', 'cus_SSPcg5Wq6LBP3O', 'active', 'pending', 'mensual', NULL, '2025-11-07 22:00:48', '2025-06-07 22:01:12', '2025-10-07 22:01:17'),
(79, 'cperalta@gmail.com', 'CRHISTIAN PERALTA RAMIREZ', 'ae3d8f61827bbc296e5751b20deb12a29a67c5b363e08e08d31b8c11647674bc', '2025-06-12 21:51:52', 'cus_SUHbKhPd1VcgZS', 'active', 'pending', 'mensual', NULL, '2025-11-12 21:51:52', '2025-06-12 21:51:58', '2025-10-19 00:05:52'),
(80, 'jjlunam@gmail.com', 'Josias Luna', '8c6670ff51033277a0e8e4e0cae3ceccb965668b515f1b7cdb1a55e20e6d321a', '2025-06-14 20:13:32', 'cus_SV0Tv73Iy7knx1', 'active', 'pending', 'mensual', NULL, '2025-12-14 20:13:32', '2025-06-14 20:13:40', '2025-11-16 17:01:30'),
(81, 'natividadblanco9@gmail.com', 'natividad Blanco Peña', '9c276a7c97e0e2919a3cfd7e156a0136e9db8d2c53a17f033c85ecd11e30a8e1', '2025-06-15 11:03:17', 'cus_SVEoMFxHhHOTTb', 'active', 'pending', 'mensual', NULL, '2025-12-15 11:03:17', '2025-06-15 11:03:57', '2025-11-16 07:56:12'),
(82, 'angel@martin.click', 'ANGEL MARTIN HERNANDEZ', 'cce80c77ba7e15e5dadc5f9d4e970c162fe53817f4db0ec3c5c89d9bbe34bcde', '2025-06-17 16:05:58', 'cus_SW48NjD94ChRGz', 'active', 'pending', 'mensual', NULL, '2025-12-17 16:05:58', '2025-06-17 16:06:15', '2025-11-17 16:06:28'),
(86, 'javff@me.com', 'Javier Fernandez', '4609aecb5ebf63286346a5875e3bc8b542ed083e3c272cf2f3e0664dd474858b', '2025-07-05 18:15:54', 'cus_ScqJNjgwVwKDZX', 'active', 'pending', 'mensual', NULL, '2025-12-05 18:15:54', '2025-07-05 18:15:59', '2025-11-05 18:16:42'),
(90, 'oocampoo35@gmail.com', 'OSCAR DAVID OCAMPO OTERO', '59fdcf4917af2aa2690cfa75f6325d68d35e731eb4c0830f5fbe33fc40894b41', '2025-07-12 15:20:12', 'cus_SfQ3nSzJjKc6t4', 'active', 'pending', 'mensual', NULL, '2025-11-12 15:20:12', '2025-07-12 15:20:39', '2025-10-12 15:20:35'),
(91, 'florian.collazo@gmail.com', 'FLORIAN COLLAZO TELLEZ', 'ResetPassword', '2025-08-15 15:33:13', 'cus_SsCE76bwyYcC1m', 'active', 'pending', 'mensual', NULL, '2025-12-15 17:54:23', '2025-08-16 13:34:47', '2025-11-15 20:58:01'),
(92, 'secoviejo@gmail.com', 'Luis Enrique Seco Viejo', '99ca2f3d4d1a4222bf3ba3c25fd804f0a4d6d2989cbcdb6575c24d2fed68e0eb', '2025-08-17 18:03:19', 'cus_Sswo9Odx2cV3Ll', 'active', 'pending', 'mensual', NULL, '2025-12-17 18:03:19', '2025-08-19 15:24:22', '2025-11-17 18:03:55'),
(93, 'abbarbara75@gmail.com', 'BARBARA I. SANCHEZ CALVO', '95d442db2bd6ff48d609d14b569b5bab6cffe1a8ee04f58e910d67636840f156', '2025-08-23 10:00:56', 'cus_Sv4NpQc8OeUVtb', 'active', 'pending', 'monthly', NULL, '2025-11-23 09:59:36', '2025-08-23 10:00:56', '2025-10-23 09:59:46'),
(95, 'jmanuel@clinicosta.com', 'Jose Manuel Ramírez', 'bd8a7e87f4f476b18f9df07da57ee71dbcb7031a5deb1a442d3f188c88c251ba', '2025-08-23 15:15:35', 'cus_Sv9TyGLQs1KLTr', 'active', 'pending', 'mensual', NULL, '2025-11-23 15:15:35', '2025-08-23 15:16:21', '2025-10-23 15:15:57'),
(96, 'ozonito@gmail.com', 'Victor', 'b4384510edb5d178954195a4f384c3accbf7c7b2f73b022f7a39daa80bc8b7cf', '2025-08-24 09:40:32', 'cus_SvRIpSXAQYB1e4', 'active', 'pending', 'mensual', NULL, '2025-11-24 09:40:32', '2025-08-24 09:41:11', '2025-10-24 09:41:00'),
(97, 'andresmtz.arq@gmail.com', 'Andrés Martinez', '50a8e4143bbdbd8758a363eb9d821fcf6900b50c5974ba8ed1696cd2a076a6b6', '2025-08-25 15:50:27', 'cus_SvuUOvpiYTrcGA', 'active', 'pending', 'mensual', NULL, '2025-11-25 15:50:27', '2025-08-25 15:50:34', '2025-10-25 15:51:17'),
(99, 'kudosfacilities@gmail.com', 'Christian Badilla Ortega', '53887b2040690d160c864f0e319e2b682871bcd3e3fb869964e74f7529ae6715', '2025-05-12 23:05:43', 'cus_SIgnGFpAtWKiVh', 'active', 'pending', 'mensual', NULL, '2025-12-12 23:05:43', '2025-09-14 14:06:28', '2025-11-15 20:32:00'),
(105, 'analeon264@gmail.com', 'Ana María León Gómez', 'cdfa501146eed1aa7dc7b334e0679bc64423f48b7b1b173cc9a1c51a68f67a26', '2025-09-15 20:54:21', 'cus_T3r892lDt4evEL', 'active', 'pending', 'mensual', NULL, '2025-12-15 20:54:21', '2025-09-15 20:54:52', '2025-11-15 20:55:07'),
(106, 'astronum12@proton.me', 'XAVIER CABRE COSTAFRDA', '0666f0803c2bcea716b08bb51ab0aa4bde536a6bf0424e30b6d5f680e8079c3e', '2025-09-26 13:16:19', 'cus_T7rDh5gnE489yV', 'active', 'pending', 'mensual', NULL, '2025-11-26 13:16:19', '2025-09-26 13:18:13', '2025-10-26 13:16:34'),
(108, 'als261115@gmail.com', 'cesar savinon', 'd6f208b0284e4d5dffd5108c7c0321807301bb6bd02a509263856ad5aade5a7a', '2025-05-02 23:51:07', 'cus_SExGk862mHnxOn', 'active', 'pending', 'mensual', NULL, '2025-12-02 23:51:07', '2025-10-11 18:52:32', '2025-11-02 23:51:38'),
(111, 'luisdelaiglesia@outlook.com', 'Luis de la Iglesia Anglada', '9686f652384f97b7316c5df5a2a84bc5598ff2f4f6212a8049acc073d2fe81e7', '2025-10-23 08:07:39', 'cus_THtLp6RX9pLkDu', 'active', 'pending', 'mensual', NULL, '2025-11-23 08:07:39', '2025-10-23 08:08:34', '2025-10-23 08:08:35'),
(112, 'globalpromociones@gmail.com', 'Collins Suarez Tatiana', 'asdsadasddsadasdd', '2025-10-23 08:07:39', 'cus_SEr3NbiK3WM38Q', 'active', 'pending', 'mensual', '2025-11-09 01:07:29', '2025-12-09 08:07:39', '2025-10-23 08:08:34', '2025-10-23 08:08:35'),
(321, 'ricardo.guimaray@outlook.com', 'Ricardo Guimaray', 'dsaasdsad', '2025-11-15 18:34:50', 'cus_TQfegc9flNJkza', 'active', 'pending', 'mensual', NULL, '2025-12-15 18:34:50', '2025-11-15 19:48:45', '2025-11-15 21:36:13');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `payment_events`
--
ALTER TABLE `payment_events`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `stripe_event_id` (`stripe_event_id`),
  ADD KEY `subscriber_id` (`subscriber_id`);

--
-- Indices de la tabla `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `idx_email` (`email`),
  ADD KEY `idx_stripe_customer_id` (`stripe_customer_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `payment_events`
--
ALTER TABLE `payment_events`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=324;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `payment_events`
--
ALTER TABLE `payment_events`
  ADD CONSTRAINT `payment_events_ibfk_1` FOREIGN KEY (`subscriber_id`) REFERENCES `subscribers` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
