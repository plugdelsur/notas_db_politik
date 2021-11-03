-- MySQL dump 10.13  Distrib 5.5.62, for Win64 (AMD64)
--
-- Host: localhost    Database: notas_db
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.21-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categorias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_categoria` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'Terror'),(2,'Humor'),(3,'Actualidad'),(4,'Politica'),(5,'Elecciones'),(6,'Economia'),(7,'Chicanas'),(8,'Planeamiento'),(9,'Futuro'),(10,'Congreso');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notas`
--

DROP TABLE IF EXISTS `notas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) NOT NULL,
  `fecha_de_creacion` date NOT NULL,
  `fecha_de_modificacion` date NOT NULL,
  `descripcion` text NOT NULL,
  `es_eliminable` tinyint(4) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `notas_FK` (`usuario_id`),
  CONSTRAINT `notas_FK` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notas`
--

LOCK TABLES `notas` WRITE;
/*!40000 ALTER TABLE `notas` DISABLE KEYS */;
INSERT INTO `notas` VALUES (2,'Alberto Fernández regresó al país tras asistir a la cumbre del G20 y la COP26','2021-12-10','2021-12-15','El Presidente arribó acompañado por la Primera Dama y parte del gabinete. Cabandié y Kulfas se quedaron en la ciudad escocesa. Guzmán y Béliz siguen en Roma para cerrar el acuerdo de la deuda con el FMI.',1,1),(3,'Mauricio Macri se disculpó por la agresión al periodista de C5N','2021-10-09','2021-10-10','El expresidente escribió en sus redes sociales sobre el episodio, que ocurrió cuando ingresó al juzgado de Dolores',0,2),(4,'Qué declaró el encargado del edificio de Cristina Kirchner en el Juicio por la obra pública','2020-09-10','2020-09-20','La fiscalía esperaba que Eduardo Eurnekian sugiriera que hubo irregularidades en las licitaciones obtenidas por Lázaro Báez, pero el empresario dijo que no sabe nada de las obras. El otro testigo de la jornada fue el encargado del edificio en el que vive Cristina Kirchner. Tampoco aportó nada para la hipótesis delictiva y confirmó que de 2003 a 2015 ni Néstor Kirchner ni CFK fueron al edificio.',1,3),(5,'A 26 años de las explosiones en la Fábrica Militar de Río Tercero siguen los reclamos de justicia','2019-08-15','2019-08-16','\"La gente en su conjunto tiene un pensamiento concreto de quiénes fueron los responsables de estos hechos\", dijo el intendente local, Marcos Ferrer.',1,4),(6,'Wado de Pedro y Matías Lammens homenajearon a Néstor Kirchner en Bariloche','2020-10-09','2020-10-12','En un gimnasio colmado de militantes, los funcionarios rindieron tributo al fallecido ex presidente y también manifestaron su apoyo a los candidatos del Frente de Todos.',0,5),(7,'Para Larreta son cuestiones de \"convivencia\" las quejas de los vecinos contra las torres','2021-11-01','2021-11-02','\"En una Ciudad de tres millones de habitantes, va a haber casos particulares en lo que alguien no esté de acuerdo con lo que pasa al lado\", consideró el jefe de Gobierno porteño. ',1,6),(8,'Javier Milei aseguró que buscará proyectar su partido a nivel nacional','2021-08-07','2021-08-08','A 13 días de las elecciones, el candidato a diputado destacó la presencia de La Libertad Avanza en todo el país; “El movimiento es mucho más fuerte de lo que algunos pretenden señalar”, dijo',0,7),(9,'María Eugenia Vidal rechazó las acusaciones de Tolosa Paz','2019-04-10','2019-04-11','En camino al próximo 14 de noviembre, la candidata del JxC cruzó a la del oficialismo por sus declaraciones.',0,8),(10,'Elisa Carrió tuvo una descompensación y fue internada de urgencia','2020-06-28','2020-06-30','La líder de la Coalición Cívica fue ingresada a una clínica privada Belgrano, de la ciudad de Mar del Plata. \"Quedó en observación por precaución\", señalaron fuentes cercanas a la exdiputada.',1,9),(11,'Espert redobló la apuesta y se burló de Nicolás del Caño','2021-10-29','2021-10-30','Luego de protagonizar un incómodo cruce al aire, el candidato liberal compartió un irónico mensaje en redes sociales burlándose de los dirigentes del FIT.',1,10);
/*!40000 ALTER TABLE `notas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notas_categorias`
--

DROP TABLE IF EXISTS `notas_categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notas_categorias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nota_id` int(11) NOT NULL,
  `categoria_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `notas_categorias_FK` (`nota_id`),
  KEY `notas_categorias_FK_1` (`categoria_id`),
  CONSTRAINT `notas_categorias_FK` FOREIGN KEY (`nota_id`) REFERENCES `notas` (`id`),
  CONSTRAINT `notas_categorias_FK_1` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notas_categorias`
--

LOCK TABLES `notas_categorias` WRITE;
/*!40000 ALTER TABLE `notas_categorias` DISABLE KEYS */;
INSERT INTO `notas_categorias` VALUES (1,2,5),(2,10,5),(3,3,2),(4,2,2),(5,3,5),(6,7,7),(7,5,8),(8,9,8),(9,10,9),(10,3,10),(11,2,3),(12,4,4),(13,7,7),(14,5,6),(15,9,5),(16,8,5),(17,4,5),(18,10,2),(19,7,6),(20,8,3),(21,8,10),(22,9,2),(23,4,3),(24,5,1),(25,6,4),(26,6,2),(27,7,5),(28,8,7),(29,9,8),(30,5,10);
/*!40000 ALTER TABLE `notas_categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Alberto','alberto@gmail.com'),(2,'Mauricio','mauricio@gmail.com'),(3,'Cristina','cristina@gmail.com'),(4,'Carlos','carlos@gmail.com'),(5,'Nestor','nestor@gmail.com'),(6,'Horacio','horacio@gmail.com'),(7,'Javier','javier@gmail.com'),(8,'Maria Eugenia','maria@gmail.com'),(9,'Elisa','elisa@gmail.com'),(10,'Jose Luis','jose@gmail.com');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'notas_db'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-03 19:48:49
