/*
 Navicat MySQL Data Transfer

 Source Server         : Proyectos
 Source Server Type    : MySQL
 Source Server Version : 100432 (10.4.32-MariaDB)
 Source Host           : localhost:3306
 Source Schema         : biblioteca_escolar

 Target Server Type    : MySQL
 Target Server Version : 100432 (10.4.32-MariaDB)
 File Encoding         : 65001

 Date: 24/06/2024 17:11:49
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for alumno
-- ----------------------------
DROP TABLE IF EXISTS `alumno`;
CREATE TABLE `alumno`  (
  `Matricula` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Nombre` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Ap1` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Ap2` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Grado` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Grupo` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`Matricula`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of alumno
-- ----------------------------
INSERT INTO `alumno` VALUES ('12345', 'Guadalupe Cristel', 'Martinez', 'Martinez', '1', 'A');
INSERT INTO `alumno` VALUES ('202123018', 'Astrit Lariza', 'Garcia', 'Castillo', '1', 'A');

-- ----------------------------
-- Table structure for autor
-- ----------------------------
DROP TABLE IF EXISTS `autor`;
CREATE TABLE `autor`  (
  `clv_autor` mediumint NOT NULL AUTO_INCREMENT,
  `nombre_autor` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`clv_autor`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 53 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of autor
-- ----------------------------
INSERT INTO `autor` VALUES (1, 'Lariza');
INSERT INTO `autor` VALUES (2, 'Olivia');
INSERT INTO `autor` VALUES (3, 'hola');
INSERT INTO `autor` VALUES (4, 'adios');
INSERT INTO `autor` VALUES (5, 'o');
INSERT INTO `autor` VALUES (6, 'e');
INSERT INTO `autor` VALUES (7, 's');
INSERT INTO `autor` VALUES (8, 'uu');
INSERT INTO `autor` VALUES (9, 'a');
INSERT INTO `autor` VALUES (10, 'sa');
INSERT INTO `autor` VALUES (11, 'd');
INSERT INTO `autor` VALUES (12, 'Jane Austen');
INSERT INTO `autor` VALUES (13, 'Lariza Garcia');
INSERT INTO `autor` VALUES (14, 'u');
INSERT INTO `autor` VALUES (15, 'dd');
INSERT INTO `autor` VALUES (16, 'ss');
INSERT INTO `autor` VALUES (17, 'ee');
INSERT INTO `autor` VALUES (18, 'hh');
INSERT INTO `autor` VALUES (19, 'tu');
INSERT INTO `autor` VALUES (20, 'yo');
INSERT INTO `autor` VALUES (21, 'tu6');
INSERT INTO `autor` VALUES (22, 'Bibiana Castillo');
INSERT INTO `autor` VALUES (23, 'b');
INSERT INTO `autor` VALUES (24, 't');
INSERT INTO `autor` VALUES (25, 'q');
INSERT INTO `autor` VALUES (26, 'w');
INSERT INTO `autor` VALUES (27, 'r');
INSERT INTO `autor` VALUES (28, 'y');
INSERT INTO `autor` VALUES (29, 'p');
INSERT INTO `autor` VALUES (30, 'po');
INSERT INTO `autor` VALUES (31, 'cc');
INSERT INTO `autor` VALUES (32, 'oo');
INSERT INTO `autor` VALUES (33, 'z');
INSERT INTO `autor` VALUES (34, 'c');
INSERT INTO `autor` VALUES (35, 'n');
INSERT INTO `autor` VALUES (36, 'x');
INSERT INTO `autor` VALUES (37, 'f');
INSERT INTO `autor` VALUES (38, 'iii');
INSERT INTO `autor` VALUES (39, 'ftt');
INSERT INTO `autor` VALUES (40, 'ey');
INSERT INTO `autor` VALUES (41, 'BB');
INSERT INTO `autor` VALUES (42, 'v');
INSERT INTO `autor` VALUES (43, 'AA');
INSERT INTO `autor` VALUES (44, 'Aleksei Tolstoy');
INSERT INTO `autor` VALUES (45, 'Niamh Sharkey');
INSERT INTO `autor` VALUES (46, 'Astrit');
INSERT INTO `autor` VALUES (47, 'Sor Juana Inez De La Cruz');
INSERT INTO `autor` VALUES (48, 'Astrit Lariza');
INSERT INTO `autor` VALUES (49, 'Criste-');
INSERT INTO `autor` VALUES (50, 'Niamh');
INSERT INTO `autor` VALUES (51, 'AstritGarcia');
INSERT INTO `autor` VALUES (52, 'Ciencias');

-- ----------------------------
-- Table structure for disciplina
-- ----------------------------
DROP TABLE IF EXISTS `disciplina`;
CREATE TABLE `disciplina`  (
  `Clv_disciplina` mediumint NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`Clv_disciplina`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of disciplina
-- ----------------------------
INSERT INTO `disciplina` VALUES (1, 'Español');
INSERT INTO `disciplina` VALUES (2, 'Artes');
INSERT INTO `disciplina` VALUES (3, 'Ciencias');
INSERT INTO `disciplina` VALUES (4, 'Fomacion Civica');
INSERT INTO `disciplina` VALUES (5, 'Geografia');
INSERT INTO `disciplina` VALUES (6, 'Educacion');
INSERT INTO `disciplina` VALUES (8, 'Historia');
INSERT INTO `disciplina` VALUES (9, 'Ingles');
INSERT INTO `disciplina` VALUES (10, 'Matematicas');
INSERT INTO `disciplina` VALUES (11, 'Tecnologia');
INSERT INTO `disciplina` VALUES (12, 'Tutorias');

-- ----------------------------
-- Table structure for editorial
-- ----------------------------
DROP TABLE IF EXISTS `editorial`;
CREATE TABLE `editorial`  (
  `Clv_editorial` mediumint NOT NULL AUTO_INCREMENT,
  `Nombre_editorial` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Clv_editorial`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of editorial
-- ----------------------------
INSERT INTO `editorial` VALUES (1, 'Libros de la SEP');
INSERT INTO `editorial` VALUES (2, 'Trillas');

-- ----------------------------
-- Table structure for ejemplar
-- ----------------------------
DROP TABLE IF EXISTS `ejemplar`;
CREATE TABLE `ejemplar`  (
  `Folio` mediumint NOT NULL AUTO_INCREMENT,
  `ISBN` varchar(13) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Estado` enum('Disponible','Prestado') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'Disponible',
  PRIMARY KEY (`Folio`) USING BTREE,
  INDEX `ISBN`(`ISBN` ASC) USING BTREE,
  CONSTRAINT `FK_ejemplar_libro` FOREIGN KEY (`ISBN`) REFERENCES `libro` (`ISBN`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 71 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of ejemplar
-- ----------------------------
INSERT INTO `ejemplar` VALUES (1, '6713289', 'Disponible');
INSERT INTO `ejemplar` VALUES (2, '6713289', 'Disponible');
INSERT INTO `ejemplar` VALUES (3, '6713289', 'Disponible');
INSERT INTO `ejemplar` VALUES (4, '6713289', 'Disponible');
INSERT INTO `ejemplar` VALUES (6, '123456789', 'Disponible');
INSERT INTO `ejemplar` VALUES (7, '123456789', 'Disponible');
INSERT INTO `ejemplar` VALUES (8, '123456789', 'Disponible');
INSERT INTO `ejemplar` VALUES (9, '6789', 'Disponible');
INSERT INTO `ejemplar` VALUES (10, '6789', 'Disponible');
INSERT INTO `ejemplar` VALUES (11, '6789', 'Disponible');
INSERT INTO `ejemplar` VALUES (12, '098826892', 'Disponible');
INSERT INTO `ejemplar` VALUES (13, '098826892', 'Disponible');

-- ----------------------------
-- Table structure for genero
-- ----------------------------
DROP TABLE IF EXISTS `genero`;
CREATE TABLE `genero`  (
  `Clv_genero` mediumint NOT NULL AUTO_INCREMENT,
  `Nombre_genero` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`Clv_genero`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of genero
-- ----------------------------
INSERT INTO `genero` VALUES (1, 'Narrativo');
INSERT INTO `genero` VALUES (2, 'Literario');

-- ----------------------------
-- Table structure for libro
-- ----------------------------
DROP TABLE IF EXISTS `libro`;
CREATE TABLE `libro`  (
  `ISBN` varchar(13) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Titulo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Subtitulo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Serie` mediumint NOT NULL,
  `Disciplina` mediumint NOT NULL,
  `Editorial` mediumint NULL DEFAULT NULL,
  `Genero` mediumint NOT NULL,
  PRIMARY KEY (`ISBN`) USING BTREE,
  INDEX `Serie`(`Serie` ASC) USING BTREE,
  INDEX `Disciplina`(`Disciplina` ASC) USING BTREE,
  INDEX `Editorial`(`Editorial` ASC) USING BTREE,
  INDEX `Genero`(`Genero` ASC) USING BTREE,
  CONSTRAINT `FK_libro_disciplina` FOREIGN KEY (`Disciplina`) REFERENCES `disciplina` (`Clv_disciplina`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_libro_editorial` FOREIGN KEY (`Editorial`) REFERENCES `editorial` (`Clv_editorial`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_libro_genero` FOREIGN KEY (`Genero`) REFERENCES `genero` (`Clv_genero`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_libro_serie` FOREIGN KEY (`Serie`) REFERENCES `serie` (`Clv_serie`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of libro
-- ----------------------------
INSERT INTO `libro` VALUES ('098826892', 'Hola', 'que hay', 1, 6, 1, 1);
INSERT INTO `libro` VALUES ('123456789', 'El nabo gigante', 'Una gran aventura', 1, 2, 1, 1);
INSERT INTO `libro` VALUES ('6713289', 'w', 'w', 1, 3, 1, 1);
INSERT INTO `libro` VALUES ('6789', 'Hola', 'que ase', 1, 3, 1, 1);

-- ----------------------------
-- Table structure for libro-autor
-- ----------------------------
DROP TABLE IF EXISTS `libro-autor`;
CREATE TABLE `libro-autor`  (
  `id_libroautor` mediumint NOT NULL AUTO_INCREMENT,
  `ISBN` varchar(13) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `clv_autor` mediumint NOT NULL,
  PRIMARY KEY (`id_libroautor`) USING BTREE,
  INDEX `clv_autor`(`clv_autor` ASC) USING BTREE,
  INDEX `ISBN`(`ISBN` ASC) USING BTREE,
  CONSTRAINT `FK_libroautor_autor` FOREIGN KEY (`clv_autor`) REFERENCES `autor` (`clv_autor`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_libroautor_libro` FOREIGN KEY (`ISBN`) REFERENCES `libro` (`ISBN`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 274 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of libro-autor
-- ----------------------------
INSERT INTO `libro-autor` VALUES (266, '6713289', 25);
INSERT INTO `libro-autor` VALUES (267, '123456789', 44);
INSERT INTO `libro-autor` VALUES (268, '123456789', 45);
INSERT INTO `libro-autor` VALUES (269, '6789', 6);
INSERT INTO `libro-autor` VALUES (273, '098826892', 20);

-- ----------------------------
-- Table structure for prestamo
-- ----------------------------
DROP TABLE IF EXISTS `prestamo`;
CREATE TABLE `prestamo`  (
  `Folio_prestamo` mediumint NOT NULL AUTO_INCREMENT,
  `Folio_ejemplar` mediumint NOT NULL,
  `Matricula` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Fecha_Prestamo` datetime NOT NULL,
  `Fecha_Entrega` datetime NULL DEFAULT NULL,
  `Estado` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Folio_prestamo`) USING BTREE,
  INDEX `Folio_ejemplar`(`Folio_ejemplar` ASC) USING BTREE,
  INDEX `Matricula`(`Matricula` ASC) USING BTREE,
  CONSTRAINT `FK_prestamo_alumno` FOREIGN KEY (`Matricula`) REFERENCES `alumno` (`Matricula`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_prestamo_ejemplar` FOREIGN KEY (`Folio_ejemplar`) REFERENCES `ejemplar` (`Folio`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 36 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of prestamo
-- ----------------------------
INSERT INTO `prestamo` VALUES (31, 4, '12345', '2024-06-20 00:00:00', '2024-06-12 00:00:00', 'Entregado');
INSERT INTO `prestamo` VALUES (32, 3, '202123018', '2024-06-25 00:00:00', '2024-06-25 00:00:00', 'Entregado');
INSERT INTO `prestamo` VALUES (33, 2, '202123018', '2024-06-25 00:00:00', '2024-06-28 00:00:00', 'Entregado');
INSERT INTO `prestamo` VALUES (35, 9, '202123018', '2024-06-25 00:00:00', '0000-00-00 00:00:00', NULL);

-- ----------------------------
-- Table structure for serie
-- ----------------------------
DROP TABLE IF EXISTS `serie`;
CREATE TABLE `serie`  (
  `Clv_serie` mediumint NOT NULL AUTO_INCREMENT,
  `Nombre_serie` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `imagen` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`Clv_serie`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of serie
-- ----------------------------
INSERT INTO `serie` VALUES (1, 'Al sol solito', 'uploads/s1.png');
INSERT INTO `serie` VALUES (2, 'Pasos de luna', 'imagenes\\s2.png');
INSERT INTO `serie` VALUES (3, 'Astrolabio', 'imagenes\\s3.png');
INSERT INTO `serie` VALUES (4, 'Espejo de urania', 'imagenes\\s4.png');
INSERT INTO `serie` VALUES (5, 'Cometas convidados', 'imagenes\\s5.png');

-- ----------------------------
-- Table structure for usuarios
-- ----------------------------
DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `correo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nombre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `contraseña` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `rol` enum('orientador','profesor') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `correo`(`correo` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of usuarios
-- ----------------------------
INSERT INTO `usuarios` VALUES (10, 'lariza@gmail.com', 'Astrit Lariza', '123', 'orientador');
INSERT INTO `usuarios` VALUES (11, 'ana@gmail.com', 'Ana', '1234', 'profesor');

-- ----------------------------
-- Procedure structure for ActualizarFechaEntrega
-- ----------------------------
DROP PROCEDURE IF EXISTS `ActualizarFechaEntrega`;
delimiter ;;
CREATE PROCEDURE `ActualizarFechaEntrega`(IN ClavePrestamo INT,
    IN FolioPrestamo INT,
    IN FechaEntrega DATE)
BEGIN
    UPDATE prestamo
    SET Fecha_Entrega = FechaEntrega,
        Estado = 'Entregado'
    WHERE Folio_prestamo = ClavePrestamo
        AND Folio_ejemplar = FolioPrestamo;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for EditarEditorial
-- ----------------------------
DROP PROCEDURE IF EXISTS `EditarEditorial`;
delimiter ;;
CREATE PROCEDURE `EditarEditorial`(IN p_Clv_editorial INT,
    IN p_NuevoNombre VARCHAR(100))
BEGIN
    UPDATE editorial
    SET Nombre_editorial = p_NuevoNombre
    WHERE Clv_editorial = p_Clv_editorial;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for EditarGenero
-- ----------------------------
DROP PROCEDURE IF EXISTS `EditarGenero`;
delimiter ;;
CREATE PROCEDURE `EditarGenero`(IN p_clave INT,
    IN p_nombre VARCHAR(100))
BEGIN
    UPDATE genero SET Nombre_genero = p_nombre WHERE Clv_genero = p_clave;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for EditarLibroYAutores
-- ----------------------------
DROP PROCEDURE IF EXISTS `EditarLibroYAutores`;
delimiter ;;
CREATE PROCEDURE `EditarLibroYAutores`(IN p_ISBN VARCHAR(13),
    IN p_Titulo VARCHAR(100),
    IN p_Subtitulo VARCHAR(100),
    IN p_Serie MEDIUMINT,
    IN p_Disciplina MEDIUMINT,
    IN p_Editorial MEDIUMINT,
    IN p_Genero MEDIUMINT,
    IN p_Autores VARCHAR(255))
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE autor_id INT;
    DECLARE i INT DEFAULT 1;
    DECLARE autor_nombre VARCHAR(255);

    -- Iniciar una transacción
    START TRANSACTION;

    -- Actualizar los datos del libro en la tabla libro
    UPDATE libro
    SET Titulo = p_Titulo,
        Subtitulo = p_Subtitulo,
        Serie = p_Serie,
        Disciplina = p_Disciplina,
        Editorial = p_Editorial,
        Genero = p_Genero
    WHERE ISBN = p_ISBN;

    -- Eliminar relaciones libro-autor existentes
    DELETE FROM `libro-autor` WHERE ISBN = p_ISBN;

    -- Procesar la lista de autores para actualizar o insertar nuevos
    WHILE (i <= LENGTH(p_Autores) - LENGTH(REPLACE(p_Autores, ',', '')) + 1) DO
        -- Extraer el siguiente autor de la lista
        SET autor_nombre = TRIM(SUBSTRING_INDEX(SUBSTRING_INDEX(p_Autores, ',', i), ',', -1));

        -- Verificar si el autor ya existe en la tabla autor
        SELECT clv_autor INTO autor_id FROM autor WHERE nombre_autor = autor_nombre LIMIT 1;

        -- Si no existe, insertar el nuevo autor y obtener su ID
        IF autor_id IS NULL THEN
            INSERT INTO autor (nombre_autor) VALUES (autor_nombre);
            SET autor_id = LAST_INSERT_ID();
        END IF;

        -- Insertar la nueva relación libro-autor
        INSERT INTO `libro-autor` (ISBN, clv_autor) VALUES (p_ISBN, autor_id);

        -- Incrementar el contador
        SET i = i + 1;
    END WHILE;

    -- Confirmar la transacción
    COMMIT;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for EliminarEditorial
-- ----------------------------
DROP PROCEDURE IF EXISTS `EliminarEditorial`;
delimiter ;;
CREATE PROCEDURE `EliminarEditorial`(IN p_Clv_editorial INT)
BEGIN
    DELETE FROM editorial WHERE Clv_editorial = p_Clv_editorial;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for EliminarEjemplar
-- ----------------------------
DROP PROCEDURE IF EXISTS `EliminarEjemplar`;
delimiter ;;
CREATE PROCEDURE `EliminarEjemplar`(IN p_Folio INT)
BEGIN
    -- Eliminar el ejemplar de la tabla ejemplar
    DELETE FROM ejemplar WHERE Folio = p_Folio;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for EliminarGenero
-- ----------------------------
DROP PROCEDURE IF EXISTS `EliminarGenero`;
delimiter ;;
CREATE PROCEDURE `EliminarGenero`(IN p_clv_genero INT)
BEGIN
    DELETE FROM genero WHERE Clv_genero = p_clv_genero;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for EliminarLibro
-- ----------------------------
DROP PROCEDURE IF EXISTS `EliminarLibro`;
delimiter ;;
CREATE PROCEDURE `EliminarLibro`(IN isbn_a_eliminar VARCHAR(13))
BEGIN
    DECLARE total_ejemplar INT;
    DECLARE total_prestamo INT;

    -- Comprobar si el libro está referenciado por algún ejemplar
    SELECT COUNT(*) INTO total_ejemplar 
    FROM ejemplar 
    WHERE ISBN = isbn_a_eliminar;

    -- Comprobar si el libro está referenciado por algún préstamo
    SELECT COUNT(*) INTO total_prestamo
    FROM prestamo p
    INNER JOIN ejemplar e ON p.Folio_ejemplar = e.Folio
    WHERE e.ISBN = isbn_a_eliminar;

    -- Si el libro no está referenciado por ejemplares o préstamos, eliminar las referencias y el libro
    IF total_ejemplar = 0 AND total_prestamo = 0 THEN
        -- Eliminar referencias en libro-autor
        DELETE FROM `libro-autor` WHERE ISBN = isbn_a_eliminar;
        
        -- Eliminar el libro
        DELETE FROM libro WHERE ISBN = isbn_a_eliminar;
    END IF;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for eliminar_libro_y_ejemplares
-- ----------------------------
DROP PROCEDURE IF EXISTS `eliminar_libro_y_ejemplares`;
delimiter ;;
CREATE PROCEDURE `eliminar_libro_y_ejemplares`(IN isbn_libro VARCHAR(20))
BEGIN
    -- Eliminar ejemplares relacionados con el libro
    DELETE FROM ejemplar WHERE ISBN = isbn_libro;
    
    -- Eliminar el libro
    DELETE FROM libro WHERE ISBN = isbn_libro;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for eliminar_prestamo
-- ----------------------------
DROP PROCEDURE IF EXISTS `eliminar_prestamo`;
delimiter ;;
CREATE PROCEDURE `eliminar_prestamo`(IN p_Folio_prestamo MEDIUMINT)
BEGIN
    DECLARE v_Folio_ejemplar MEDIUMINT;
    DECLARE v_Matricula VARCHAR(10);

    -- Verificar si el préstamo existe
    IF EXISTS (SELECT 1 FROM prestamo WHERE Folio_prestamo = p_Folio_prestamo) THEN
        
        -- Obtener el folio del ejemplar y la matrícula del alumno asociados al préstamo
        SELECT Folio_ejemplar, Matricula INTO v_Folio_ejemplar, v_Matricula
        FROM prestamo
        WHERE Folio_prestamo = p_Folio_prestamo;

        -- Eliminar el préstamo
        DELETE FROM prestamo WHERE Folio_prestamo = p_Folio_prestamo;

        -- Actualizar el estado del ejemplar a 'Disponible' si es necesario
        UPDATE ejemplar
        SET Estado = 'Disponible'
        WHERE Folio = v_Folio_ejemplar;

        -- Aquí puedes agregar más lógica si necesitas realizar otras acciones después de eliminar el préstamo

    ELSE
        -- Si el préstamo no existe, puedes manejar el error según tus necesidades
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El préstamo no existe';
    END IF;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for MostrarAlumnos
-- ----------------------------
DROP PROCEDURE IF EXISTS `MostrarAlumnos`;
delimiter ;;
CREATE PROCEDURE `MostrarAlumnos`()
BEGIN
    SELECT Matricula, Nombre, Ap1, Ap2, Grado, Grupo
    FROM alumno;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for MostrarEditoriales
-- ----------------------------
DROP PROCEDURE IF EXISTS `MostrarEditoriales`;
delimiter ;;
CREATE PROCEDURE `MostrarEditoriales`()
BEGIN
    SELECT * FROM editorial;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for MostrarEjemplares
-- ----------------------------
DROP PROCEDURE IF EXISTS `MostrarEjemplares`;
delimiter ;;
CREATE PROCEDURE `MostrarEjemplares`()
BEGIN
    SELECT 
        e.Folio,
        e.Estado,
        l.ISBN,
        l.Titulo,
        l.Subtitulo,
        s.Nombre_serie AS Serie,
        d.Descripcion AS Disciplina,
        ed.Nombre_editorial AS Editorial,
        g.Nombre_genero AS Genero,
        GROUP_CONCAT(a.nombre_autor SEPARATOR ', ') AS Autores
    FROM 
        ejemplar e
    JOIN 
        libro l ON e.ISBN = l.ISBN
    JOIN 
        serie s ON l.Serie = s.Clv_serie
    JOIN 
        disciplina d ON l.Disciplina = d.Clv_disciplina
    LEFT JOIN 
        editorial ed ON l.Editorial = ed.Clv_editorial
    JOIN 
        genero g ON l.Genero = g.Clv_genero
    JOIN 
        `libro-autor` la ON l.ISBN = la.ISBN
    JOIN 
        autor a ON la.clv_autor = a.clv_autor
    GROUP BY 
        e.Folio, e.Estado, l.ISBN, l.Titulo, l.Subtitulo, s.Nombre_serie, d.Descripcion, ed.Nombre_editorial, g.Nombre_genero;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for MostrarEspanol
-- ----------------------------
DROP PROCEDURE IF EXISTS `MostrarEspanol`;
delimiter ;;
CREATE PROCEDURE `MostrarEspanol`()
BEGIN
    SELECT 
        l.ISBN,
        l.Titulo,
        l.Subtitulo,
        s.imagen AS SerieImagen,
        e.Nombre_editorial AS Editorial,
        g.Nombre_genero AS Genero,
        GROUP_CONCAT(a.nombre_autor SEPARATOR ', ') AS Autores
    FROM
        libro l
        LEFT JOIN serie s ON l.Serie = s.Clv_serie -- asegúrate de que la columna de unión sea correcta
        LEFT JOIN disciplina d ON l.Disciplina = d.Clv_disciplina
        LEFT JOIN editorial e ON l.Editorial = e.Clv_editorial
        LEFT JOIN genero g ON l.Genero = g.Clv_genero
        LEFT JOIN `libro-autor` la ON l.ISBN = la.ISBN
        LEFT JOIN autor a ON la.clv_autor = a.clv_autor
    WHERE
        d.Descripcion = 'Español'
    GROUP BY
        l.ISBN;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for MostrarGeneros
-- ----------------------------
DROP PROCEDURE IF EXISTS `MostrarGeneros`;
delimiter ;;
CREATE PROCEDURE `MostrarGeneros`()
BEGIN
    SELECT * FROM genero;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for MostrarLibrosArtes
-- ----------------------------
DROP PROCEDURE IF EXISTS `MostrarLibrosArtes`;
delimiter ;;
CREATE PROCEDURE `MostrarLibrosArtes`()
BEGIN
    SELECT 
        ej.Folio,
        ej.ISBN,
        ej.Estado,
        l.Titulo AS Titulo_libro,
        l.Subtitulo AS Subtitulo_libro,
        s.imagen AS imagen,  -- Mostramos la URL de la imagen que representa la serie
        e.Nombre_editorial AS Editorial,
        g.Nombre_genero AS Genero,
        GROUP_CONCAT(a.nombre_autor SEPARATOR ', ') AS Autores
    FROM 
        ejemplar ej
    JOIN 
        libro l ON ej.ISBN = l.ISBN
    LEFT JOIN 
        `libro-autor` la ON ej.ISBN = la.ISBN
    LEFT JOIN 
        autor a ON la.clv_autor = a.clv_autor
    LEFT JOIN 
        editorial e ON l.Editorial = e.Clv_editorial
    LEFT JOIN 
        genero g ON l.Genero = g.Clv_genero
    LEFT JOIN 
        serie s ON l.Serie = s.Clv_serie  -- Relacionamos con la tabla serie para obtener la imagen
    LEFT JOIN 
        disciplina d ON l.Disciplina = d.Clv_disciplina
    WHERE 
        d.Descripcion = 'Artes'  -- Filtramos por la disciplina Español
    GROUP BY 
        ej.Folio;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for MostrarLibrosCiencias
-- ----------------------------
DROP PROCEDURE IF EXISTS `MostrarLibrosCiencias`;
delimiter ;;
CREATE PROCEDURE `MostrarLibrosCiencias`()
BEGIN
    SELECT 
        ej.Folio,
        ej.ISBN,
        ej.Estado,
        l.Titulo AS Titulo_libro,
        l.Subtitulo AS Subtitulo_libro,
        s.imagen AS imagen,  -- Mostramos la URL de la imagen que representa la serie
        e.Nombre_editorial AS Editorial,
        g.Nombre_genero AS Genero,
        GROUP_CONCAT(a.nombre_autor SEPARATOR ', ') AS Autores
    FROM 
        ejemplar ej
    JOIN 
        libro l ON ej.ISBN = l.ISBN
    LEFT JOIN 
        `libro-autor` la ON ej.ISBN = la.ISBN
    LEFT JOIN 
        autor a ON la.clv_autor = a.clv_autor
    LEFT JOIN 
        editorial e ON l.Editorial = e.Clv_editorial
    LEFT JOIN 
        genero g ON l.Genero = g.Clv_genero
    LEFT JOIN 
        serie s ON l.Serie = s.Clv_serie  -- Relacionamos con la tabla serie para obtener la imagen
    LEFT JOIN 
        disciplina d ON l.Disciplina = d.Clv_disciplina
    WHERE 
        d.Descripcion = 'Ciencias'  -- Filtramos por la disciplina Español
    GROUP BY 
        ej.Folio;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for MostrarLibrosEducacion
-- ----------------------------
DROP PROCEDURE IF EXISTS `MostrarLibrosEducacion`;
delimiter ;;
CREATE PROCEDURE `MostrarLibrosEducacion`()
BEGIN
    SELECT 
        ej.Folio,
        ej.ISBN,
        ej.Estado,
        l.Titulo AS Titulo_libro,
        l.Subtitulo AS Subtitulo_libro,
        s.imagen AS imagen,  -- Mostramos la URL de la imagen que representa la serie
        e.Nombre_editorial AS Editorial,
        g.Nombre_genero AS Genero,
        GROUP_CONCAT(a.nombre_autor SEPARATOR ', ') AS Autores
    FROM 
        ejemplar ej
    JOIN 
        libro l ON ej.ISBN = l.ISBN
    LEFT JOIN 
        `libro-autor` la ON ej.ISBN = la.ISBN
    LEFT JOIN 
        autor a ON la.clv_autor = a.clv_autor
    LEFT JOIN 
        editorial e ON l.Editorial = e.Clv_editorial
    LEFT JOIN 
        genero g ON l.Genero = g.Clv_genero
    LEFT JOIN 
        serie s ON l.Serie = s.Clv_serie  -- Relacionamos con la tabla serie para obtener la imagen
    LEFT JOIN 
        disciplina d ON l.Disciplina = d.Clv_disciplina
    WHERE 
        d.Descripcion = 'Educacion'  -- Filtramos por la disciplina Español
    GROUP BY 
        ej.Folio;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for MostrarLibrosEspañol
-- ----------------------------
DROP PROCEDURE IF EXISTS `MostrarLibrosEspañol`;
delimiter ;;
CREATE PROCEDURE `MostrarLibrosEspañol`()
BEGIN
    SELECT 
        ej.Folio,
        ej.ISBN,
        ej.Estado,
        l.Titulo AS Titulo_libro,
        l.Subtitulo AS Subtitulo_libro,
        s.imagen AS imagen,  -- Mostramos la URL de la imagen que representa la serie
        e.Nombre_editorial AS Editorial,
        g.Nombre_genero AS Genero,
        GROUP_CONCAT(a.nombre_autor SEPARATOR ', ') AS Autores
    FROM 
        ejemplar ej
    JOIN 
        libro l ON ej.ISBN = l.ISBN
    LEFT JOIN 
        `libro-autor` la ON ej.ISBN = la.ISBN
    LEFT JOIN 
        autor a ON la.clv_autor = a.clv_autor
    LEFT JOIN 
        editorial e ON l.Editorial = e.Clv_editorial
    LEFT JOIN 
        genero g ON l.Genero = g.Clv_genero
    LEFT JOIN 
        serie s ON l.Serie = s.Clv_serie  -- Relacionamos con la tabla serie para obtener la imagen
    LEFT JOIN 
        disciplina d ON l.Disciplina = d.Clv_disciplina
    WHERE 
        d.Descripcion = 'Español'  -- Filtramos por la disciplina Español
    GROUP BY 
        ej.Folio;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for MostrarLibrosFormacion
-- ----------------------------
DROP PROCEDURE IF EXISTS `MostrarLibrosFormacion`;
delimiter ;;
CREATE PROCEDURE `MostrarLibrosFormacion`()
BEGIN
    SELECT 
        ej.Folio,
        ej.ISBN,
        ej.Estado,
        l.Titulo AS Titulo_libro,
        l.Subtitulo AS Subtitulo_libro,
        s.imagen AS imagen,  -- Mostramos la URL de la imagen que representa la serie
        e.Nombre_editorial AS Editorial,
        g.Nombre_genero AS Genero,
        GROUP_CONCAT(a.nombre_autor SEPARATOR ', ') AS Autores
    FROM 
        ejemplar ej
    JOIN 
        libro l ON ej.ISBN = l.ISBN
    LEFT JOIN 
        `libro-autor` la ON ej.ISBN = la.ISBN
    LEFT JOIN 
        autor a ON la.clv_autor = a.clv_autor
    LEFT JOIN 
        editorial e ON l.Editorial = e.Clv_editorial
    LEFT JOIN 
        genero g ON l.Genero = g.Clv_genero
    LEFT JOIN 
        serie s ON l.Serie = s.Clv_serie  -- Relacionamos con la tabla serie para obtener la imagen
    LEFT JOIN 
        disciplina d ON l.Disciplina = d.Clv_disciplina
    WHERE 
        d.Descripcion = 'Fomacion Civica'  -- Filtramos por la disciplina Español
    GROUP BY 
        ej.Folio;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for MostrarLibrosGeografia
-- ----------------------------
DROP PROCEDURE IF EXISTS `MostrarLibrosGeografia`;
delimiter ;;
CREATE PROCEDURE `MostrarLibrosGeografia`()
BEGIN
    SELECT 
        ej.Folio,
        ej.ISBN,
        ej.Estado,
        l.Titulo AS Titulo_libro,
        l.Subtitulo AS Subtitulo_libro,
        s.imagen AS imagen,  -- Mostramos la URL de la imagen que representa la serie
        e.Nombre_editorial AS Editorial,
        g.Nombre_genero AS Genero,
        GROUP_CONCAT(a.nombre_autor SEPARATOR ', ') AS Autores
    FROM 
        ejemplar ej
    JOIN 
        libro l ON ej.ISBN = l.ISBN
    LEFT JOIN 
        `libro-autor` la ON ej.ISBN = la.ISBN
    LEFT JOIN 
        autor a ON la.clv_autor = a.clv_autor
    LEFT JOIN 
        editorial e ON l.Editorial = e.Clv_editorial
    LEFT JOIN 
        genero g ON l.Genero = g.Clv_genero
    LEFT JOIN 
        serie s ON l.Serie = s.Clv_serie  -- Relacionamos con la tabla serie para obtener la imagen
    LEFT JOIN 
        disciplina d ON l.Disciplina = d.Clv_disciplina
    WHERE 
        d.Descripcion = 'Geografia'  -- Filtramos por la disciplina Español
    GROUP BY 
        ej.Folio;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for MostrarLibrosHistoria
-- ----------------------------
DROP PROCEDURE IF EXISTS `MostrarLibrosHistoria`;
delimiter ;;
CREATE PROCEDURE `MostrarLibrosHistoria`()
BEGIN
    SELECT 
        ej.Folio,
        ej.ISBN,
        ej.Estado,
        l.Titulo AS Titulo_libro,
        l.Subtitulo AS Subtitulo_libro,
        s.imagen AS imagen,  -- Mostramos la URL de la imagen que representa la serie
        e.Nombre_editorial AS Editorial,
        g.Nombre_genero AS Genero,
        GROUP_CONCAT(a.nombre_autor SEPARATOR ', ') AS Autores
    FROM 
        ejemplar ej
    JOIN 
        libro l ON ej.ISBN = l.ISBN
    LEFT JOIN 
        `libro-autor` la ON ej.ISBN = la.ISBN
    LEFT JOIN 
        autor a ON la.clv_autor = a.clv_autor
    LEFT JOIN 
        editorial e ON l.Editorial = e.Clv_editorial
    LEFT JOIN 
        genero g ON l.Genero = g.Clv_genero
    LEFT JOIN 
        serie s ON l.Serie = s.Clv_serie  -- Relacionamos con la tabla serie para obtener la imagen
    LEFT JOIN 
        disciplina d ON l.Disciplina = d.Clv_disciplina
    WHERE 
        d.Descripcion = 'Historia'  -- Filtramos por la disciplina Español
    GROUP BY 
        ej.Folio;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for MostrarLibrosIngles
-- ----------------------------
DROP PROCEDURE IF EXISTS `MostrarLibrosIngles`;
delimiter ;;
CREATE PROCEDURE `MostrarLibrosIngles`()
BEGIN
    SELECT 
        ej.Folio,
        ej.ISBN,
        ej.Estado,
        l.Titulo AS Titulo_libro,
        l.Subtitulo AS Subtitulo_libro,
        s.imagen AS imagen,  -- Mostramos la URL de la imagen que representa la serie
        e.Nombre_editorial AS Editorial,
        g.Nombre_genero AS Genero,
        GROUP_CONCAT(a.nombre_autor SEPARATOR ', ') AS Autores
    FROM 
        ejemplar ej
    JOIN 
        libro l ON ej.ISBN = l.ISBN
    LEFT JOIN 
        `libro-autor` la ON ej.ISBN = la.ISBN
    LEFT JOIN 
        autor a ON la.clv_autor = a.clv_autor
    LEFT JOIN 
        editorial e ON l.Editorial = e.Clv_editorial
    LEFT JOIN 
        genero g ON l.Genero = g.Clv_genero
    LEFT JOIN 
        serie s ON l.Serie = s.Clv_serie  -- Relacionamos con la tabla serie para obtener la imagen
    LEFT JOIN 
        disciplina d ON l.Disciplina = d.Clv_disciplina
    WHERE 
        d.Descripcion = 'Ingles'  -- Filtramos por la disciplina Español
    GROUP BY 
        ej.Folio;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for MostrarLibrosMatematicas
-- ----------------------------
DROP PROCEDURE IF EXISTS `MostrarLibrosMatematicas`;
delimiter ;;
CREATE PROCEDURE `MostrarLibrosMatematicas`()
BEGIN
    SELECT 
        ej.Folio,
        ej.ISBN,
        ej.Estado,
        l.Titulo AS Titulo_libro,
        l.Subtitulo AS Subtitulo_libro,
        s.imagen AS imagen,  -- Mostramos la URL de la imagen que representa la serie
        e.Nombre_editorial AS Editorial,
        g.Nombre_genero AS Genero,
        GROUP_CONCAT(a.nombre_autor SEPARATOR ', ') AS Autores
    FROM 
        ejemplar ej
    JOIN 
        libro l ON ej.ISBN = l.ISBN
    LEFT JOIN 
        `libro-autor` la ON ej.ISBN = la.ISBN
    LEFT JOIN 
        autor a ON la.clv_autor = a.clv_autor
    LEFT JOIN 
        editorial e ON l.Editorial = e.Clv_editorial
    LEFT JOIN 
        genero g ON l.Genero = g.Clv_genero
    LEFT JOIN 
        serie s ON l.Serie = s.Clv_serie  -- Relacionamos con la tabla serie para obtener la imagen
    LEFT JOIN 
        disciplina d ON l.Disciplina = d.Clv_disciplina
    WHERE 
        d.Descripcion = 'Matematicas'  -- Filtramos por la disciplina Español
    GROUP BY 
        ej.Folio;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for MostrarLibrosTecnologia
-- ----------------------------
DROP PROCEDURE IF EXISTS `MostrarLibrosTecnologia`;
delimiter ;;
CREATE PROCEDURE `MostrarLibrosTecnologia`()
BEGIN
    SELECT 
        ej.Folio,
        ej.ISBN,
        ej.Estado,
        l.Titulo AS Titulo_libro,
        l.Subtitulo AS Subtitulo_libro,
        s.imagen AS imagen,  -- Mostramos la URL de la imagen que representa la serie
        e.Nombre_editorial AS Editorial,
        g.Nombre_genero AS Genero,
        GROUP_CONCAT(a.nombre_autor SEPARATOR ', ') AS Autores
    FROM 
        ejemplar ej
    JOIN 
        libro l ON ej.ISBN = l.ISBN
    LEFT JOIN 
        `libro-autor` la ON ej.ISBN = la.ISBN
    LEFT JOIN 
        autor a ON la.clv_autor = a.clv_autor
    LEFT JOIN 
        editorial e ON l.Editorial = e.Clv_editorial
    LEFT JOIN 
        genero g ON l.Genero = g.Clv_genero
    LEFT JOIN 
        serie s ON l.Serie = s.Clv_serie  -- Relacionamos con la tabla serie para obtener la imagen
    LEFT JOIN 
        disciplina d ON l.Disciplina = d.Clv_disciplina
    WHERE 
        d.Descripcion = 'Tecnologia'  -- Filtramos por la disciplina Español
    GROUP BY 
        ej.Folio;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for MostrarLibrosTutorias
-- ----------------------------
DROP PROCEDURE IF EXISTS `MostrarLibrosTutorias`;
delimiter ;;
CREATE PROCEDURE `MostrarLibrosTutorias`()
BEGIN
    SELECT 
        ej.Folio,
        ej.ISBN,
        ej.Estado,
        l.Titulo AS Titulo_libro,
        l.Subtitulo AS Subtitulo_libro,
        s.imagen AS imagen,  -- Mostramos la URL de la imagen que representa la serie
        e.Nombre_editorial AS Editorial,
        g.Nombre_genero AS Genero,
        GROUP_CONCAT(a.nombre_autor SEPARATOR ', ') AS Autores
    FROM 
        ejemplar ej
    JOIN 
        libro l ON ej.ISBN = l.ISBN
    LEFT JOIN 
        `libro-autor` la ON ej.ISBN = la.ISBN
    LEFT JOIN 
        autor a ON la.clv_autor = a.clv_autor
    LEFT JOIN 
        editorial e ON l.Editorial = e.Clv_editorial
    LEFT JOIN 
        genero g ON l.Genero = g.Clv_genero
    LEFT JOIN 
        serie s ON l.Serie = s.Clv_serie  -- Relacionamos con la tabla serie para obtener la imagen
    LEFT JOIN 
        disciplina d ON l.Disciplina = d.Clv_disciplina
    WHERE 
        d.Descripcion = 'Tutorias'  -- Filtramos por la disciplina Español
    GROUP BY 
        ej.Folio;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for MostrarPrestamos
-- ----------------------------
DROP PROCEDURE IF EXISTS `MostrarPrestamos`;
delimiter ;;
CREATE PROCEDURE `MostrarPrestamos`()
BEGIN
    -- Consulta para obtener los préstamos con los datos solicitados
    SELECT
        p.Folio_prestamo AS Clave,
        e.Folio AS Folio,
        e.ISBN,
        l.Titulo AS Título,
        a.Matricula,
        a.Nombre,
        a.Ap1 AS ApellidoPaterno,
        a.Ap2 AS ApellidoMaterno,
        a.Grado,
        a.Grupo,
        p.Estado  -- Seleccionar el campo Estado desde la tabla prestamo
    FROM
        prestamo p
        INNER JOIN ejemplar e ON p.Folio_ejemplar = e.Folio
        INNER JOIN libro l ON e.ISBN = l.ISBN
        INNER JOIN alumno a ON p.Matricula = a.Matricula;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for MostrarPrestamoss
-- ----------------------------
DROP PROCEDURE IF EXISTS `MostrarPrestamoss`;
delimiter ;;
CREATE PROCEDURE `MostrarPrestamoss`()
BEGIN
    SELECT
        p.Folio_prestamo AS Clave,
        p.Folio_ejemplar AS Folio,
        e.ISBN,
        l.Titulo,
        a.Matricula,
        a.Nombre,
        a.Ap1 AS ApellidoPaterno,
        a.Ap2 AS ApellidoMaterno,
        a.Grado,
        a.Grupo,
        d.Descripcion AS Disciplina,
        p.Fecha_Prestamo,
        p.Fecha_Entrega,
        p.Estado
    FROM
        prestamo p
    JOIN
        ejemplar e ON p.Folio_ejemplar = e.Folio
    JOIN
        libro l ON e.ISBN = l.ISBN
    JOIN
        alumno a ON p.Matricula = a.Matricula
    JOIN
        disciplina d ON l.Disciplina = d.Clv_disciplina;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for RegisterUser
-- ----------------------------
DROP PROCEDURE IF EXISTS `RegisterUser`;
delimiter ;;
CREATE PROCEDURE `RegisterUser`(IN correo VARCHAR(255),
    IN nombre VARCHAR(255),
    IN contraseña VARCHAR(255),
    IN clave VARCHAR(255))
BEGIN
    DECLARE rol ENUM('orientador', 'profesor');

    -- Validar la clave y asignar el rol correspondiente
    IF clave = 'orientadorTecnico2024' THEN
        SET rol = 'orientador';
    ELSEIF clave = 'profesor2024' THEN
        SET rol = 'profesor';
    ELSE
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Clave incorrecta';
    END IF;

    -- Insertar el nuevo usuario en la tabla
    INSERT INTO `usuarios` (correo, nombre, contraseña, rol) 
    VALUES (correo, nombre, contraseña, rol);
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for RegistrarAlumno
-- ----------------------------
DROP PROCEDURE IF EXISTS `RegistrarAlumno`;
delimiter ;;
CREATE PROCEDURE `RegistrarAlumno`(IN p_matricula VARCHAR(10),
    IN p_nombre VARCHAR(100),
    IN p_ap1 VARCHAR(20),
    IN p_ap2 VARCHAR(20),
    IN p_grado VARCHAR(3),
    IN p_grupo VARCHAR(2))
BEGIN
    -- Insertar el nuevo alumno en la tabla alumno
    INSERT INTO alumno (Matricula, Nombre, Ap1, Ap2, Grado, Grupo)
    VALUES (p_matricula, p_nombre, p_ap1, p_ap2, p_grado, p_grupo);
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for RegistrarAutor
-- ----------------------------
DROP PROCEDURE IF EXISTS `RegistrarAutor`;
delimiter ;;
CREATE PROCEDURE `RegistrarAutor`(IN p_NombreAutor VARCHAR(50))
BEGIN
    DECLARE autor_id MEDIUMINT;

    -- Verificar si el autor ya existe
    SELECT clv_autor INTO autor_id FROM autor WHERE nombre_autor = p_NombreAutor LIMIT 1;

    -- Si no existe, insertarlo
    IF autor_id IS NULL THEN
        INSERT INTO autor (nombre_autor) VALUES (p_NombreAutor);
        SELECT LAST_INSERT_ID() INTO autor_id;
    END IF;

    -- Devolver el ID del autor registrado
    SELECT autor_id;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for RegistrarEditorial
-- ----------------------------
DROP PROCEDURE IF EXISTS `RegistrarEditorial`;
delimiter ;;
CREATE PROCEDURE `RegistrarEditorial`(IN p_Nombre_editorial VARCHAR(100))
BEGIN
    -- Insertar la nueva editorial en la tabla editorial
    INSERT INTO editorial (Nombre_editorial)
    VALUES (p_Nombre_editorial);
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for RegistrarGenero
-- ----------------------------
DROP PROCEDURE IF EXISTS `RegistrarGenero`;
delimiter ;;
CREATE PROCEDURE `RegistrarGenero`(IN p_Nombre_genero VARCHAR(100))
BEGIN
    -- Insertar el nuevo género en la tabla genero
    INSERT INTO genero (Nombre_genero)
    VALUES (p_Nombre_genero);
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for RegistrarLibroConEjemplarr
-- ----------------------------
DROP PROCEDURE IF EXISTS `RegistrarLibroConEjemplarr`;
delimiter ;;
CREATE PROCEDURE `RegistrarLibroConEjemplarr`(IN p_ISBN VARCHAR(13),
    IN p_Titulo VARCHAR(100),
    IN p_Subtitulo VARCHAR(100),
    IN p_Serie MEDIUMINT,
    IN p_Editorial MEDIUMINT,
    IN p_Genero MEDIUMINT,
    IN p_Ejemplares INT,
    IN p_Autores VARCHAR(255))
BEGIN
    DECLARE i INT DEFAULT 0;
    DECLARE autor_id INT;
    DECLARE disciplina_id INT;
    DECLARE nextFolio INT;

    -- Obtener el ID de la disciplina 'Español'
    SELECT Clv_disciplina INTO disciplina_id FROM disciplina WHERE Descripcion = 'Español';

    -- Iniciar una transacción
    START TRANSACTION;

    -- Insertar el nuevo libro en la tabla libro
    INSERT INTO libro (ISBN, Titulo, Subtitulo, Serie, Disciplina, Editorial, Genero)
    VALUES (p_ISBN, p_Titulo, p_Subtitulo, p_Serie, disciplina_id, p_Editorial, p_Genero);

    -- Restablecer el AUTO_INCREMENT de la tabla ejemplar para este conjunto de inserciones
    SELECT COALESCE(MAX(Folio), 0) + 1 INTO nextFolio FROM ejemplar;

    -- Insertar el número especificado de ejemplares con estado 'Disponible'
    WHILE i < p_Ejemplares DO
        INSERT INTO ejemplar (Folio, ISBN, Estado)
        VALUES (nextFolio + i, p_ISBN, 'Disponible');
        SET i = i + 1;
    END WHILE;

    -- Insertar los autores del libro en la tabla autor si no existen y obtener sus IDs
    SET i = 1;
    WHILE i <= LENGTH(p_Autores) - LENGTH(REPLACE(p_Autores, ',', '')) + 1 DO
        SET autor_id = NULL;
        SET @autor_nombre = TRIM(SUBSTRING_INDEX(SUBSTRING_INDEX(p_Autores, ',', i), ',', -1));

        -- Buscar si el autor ya existe
        SELECT clv_autor INTO autor_id FROM autor WHERE nombre_autor = @autor_nombre;

        -- Si no existe, insertar el nuevo autor
        IF autor_id IS NULL THEN
            INSERT INTO autor (nombre_autor) VALUES (@autor_nombre);
            SET autor_id = LAST_INSERT_ID();
        END IF;

        -- Insertar relación libro-autor
        INSERT INTO `libro-autor` (ISBN, clv_autor)
        VALUES (p_ISBN, autor_id);
        
        SET i = i + 1;
    END WHILE;

    -- Confirmar la transacción
    COMMIT;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for RegistrarPrestamo
-- ----------------------------
DROP PROCEDURE IF EXISTS `RegistrarPrestamo`;
delimiter ;;
CREATE PROCEDURE `RegistrarPrestamo`(IN p_folio INT,
    IN p_matricula VARCHAR(10),
    IN p_fecha_prestamo DATE,
    IN p_fecha_entrega DATE)
BEGIN
    DECLARE alumno_id VARCHAR(10);
    DECLARE ejemplar_id INT;

    -- Obtener la Matrícula del alumno
    SET alumno_id = p_matricula;

    -- Obtener el ID del ejemplar basado en el folio
    SELECT Folio INTO ejemplar_id FROM ejemplar WHERE Folio = p_folio;

    -- Insertar el préstamo
    INSERT INTO prestamo (Folio_ejemplar, Matricula, Fecha_Prestamo, Fecha_Entrega)
    VALUES (ejemplar_id, alumno_id, p_fecha_prestamo, p_fecha_entrega);

    -- Mostrar mensaje de éxito o error
    IF ROW_COUNT() > 0 THEN
        SELECT CONCAT('Préstamo registrado para el alumno con matrícula ', alumno_id) AS mensaje;
    ELSE
        SELECT 'Error al registrar el préstamo' AS mensaje;
    END IF;
    
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table prestamo
-- ----------------------------
DROP TRIGGER IF EXISTS `after_insert_prestamo`;
delimiter ;;
CREATE TRIGGER `after_insert_prestamo` AFTER INSERT ON `prestamo` FOR EACH ROW BEGIN
    UPDATE ejemplar
    SET Estado = 'prestado'
    WHERE Folio = NEW.Folio_ejemplar;
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table prestamo
-- ----------------------------
DROP TRIGGER IF EXISTS `actualizar_estado_prestamo`;
delimiter ;;
CREATE TRIGGER `actualizar_estado_prestamo` AFTER INSERT ON `prestamo` FOR EACH ROW BEGIN
    IF NEW.Fecha_Entrega IS NULL THEN
        UPDATE prestamo
        SET Estado = 'Pendiente'
        WHERE Folio_prestamo = NEW.Folio_prestamo;
    END IF;
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table prestamo
-- ----------------------------
DROP TRIGGER IF EXISTS `after_update_prestamo`;
delimiter ;;
CREATE TRIGGER `after_update_prestamo` AFTER UPDATE ON `prestamo` FOR EACH ROW BEGIN
    DECLARE estado_ejemplar VARCHAR(20);
    
    -- Obtener el estado actual del ejemplar
    SELECT Estado INTO estado_ejemplar
    FROM ejemplar
    WHERE Folio = NEW.Folio_ejemplar;
    
    -- Verificar si se registró una fecha de entrega
    IF NEW.Fecha_Entrega IS NOT NULL THEN
        -- Actualizar el estado del ejemplar solo si estaba prestado
        IF estado_ejemplar = 'prestado' THEN
            UPDATE ejemplar
            SET Estado = 'disponible'
            WHERE Folio = NEW.Folio_ejemplar;
        END IF;
    END IF;
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
