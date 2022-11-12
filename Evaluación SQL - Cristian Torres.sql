
CREATE SCHEMA IF NOT EXISTS `DON JOSE minimarket de barrio`;
USE `DON JOSE minimarket de barrio` ;


CREATE TABLE IF NOT EXISTS `DON JOSE minimarket de barrio`.`productos` (
  `idproductos` INT NOT NULL,
  `productos_vendidos` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idproductos`))
;


CREATE TABLE IF NOT EXISTS `DON JOSE minimarket de barrio`.`Venta de productos` (
  `idVenta de productos` INT NOT NULL,
  `Ventas totales` INT NOT NULL,
  PRIMARY KEY (`idVenta de productos`))
;


CREATE TABLE IF NOT EXISTS `DON JOSE minimarket de barrio`.`Tipo de productos` (
  `idtipoproductos` INT NOT NULL,
  `cecinas` VARCHAR(45) NOT NULL,
  `lacteos` VARCHAR(45) NOT NULL,
  `comidaDeGato` VARCHAR(45) NOT NULL,
  `comidaDePerro` VARCHAR(45) NOT NULL,
  `productos_idproductos` INT NOT NULL,
  `Venta de productos_idVenta de productos` INT NOT NULL,
  PRIMARY KEY (`idtipoproductos`),
  INDEX `fk_Tipo de productos_productos1_idx` (`productos_idproductos` ASC) VISIBLE,
  INDEX `fk_Tipo de productos_Venta de productos1_idx` (`Venta de productos_idVenta de productos` ASC) VISIBLE,
  CONSTRAINT `fk_Tipo de productos_productos1`
    FOREIGN KEY (`productos_idproductos`)
    REFERENCES `DON JOSE minimarket de barrio`.`productos` (`idproductos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Tipo de productos_Venta de productos1`
    FOREIGN KEY (`Venta de productos_idVenta de productos`)
    REFERENCES `DON JOSE minimarket de barrio`.`Venta de productos` (`idVenta de productos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
;


CREATE TABLE IF NOT EXISTS `DON JOSE minimarket de barrio`.`Informe anual de ganancias` (
  `idInformeAnualGanancias` INT NOT NULL,
  `Enero` INT NOT NULL,
  `Febrero` INT NOT NULL,
  `Marzo` INT NOT NULL,
  `Abril` INT NOT NULL,
  `Mayo` INT NOT NULL,
  `Junio` INT NOT NULL,
  `Julio` INT NOT NULL,
  `agosto` INT NOT NULL,
  `septiembre` INT NOT NULL,
  `octubre` INT NOT NULL,
  `noviembre` INT NOT NULL,
  `Informe anual de gananciascol4` INT NOT NULL,
  `Informe anual de gananciascol` INT NOT NULL,
  `Venta de productos_idVenta de productos` INT NOT NULL,
  PRIMARY KEY (`idInformeAnualGanancias`),
  INDEX `fk_Informe anual de ganancias_Venta de productos_idx` (`Venta de productos_idVenta de productos` ASC) VISIBLE,
  CONSTRAINT `fk_Informe anual de ganancias_Venta de productos`
    FOREIGN KEY (`Venta de productos_idVenta de productos`)
    REFERENCES `DON JOSE minimarket de barrio`.`Venta de productos` (`idVenta de productos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
;

SELECT * FROM `productos`;
informe anual de ganancias``informe anual de ganancias`INSERT INTO `don jose minimarket de barrio.`productos` (`idproductos`, `productos_vendidos`) VALUES ('1', 'CAT CHOW');
INSERT INTO `don jose minimarket de barrio`.`productos` (`idproductos`, `productos_vendidos`) VALUES ('2', 'DOG CHOW');
INSERT INTO `don jose minimarket de barrio`.`productos` (`idproductos`, `productos_vendidos`) VALUES ('3', 'MASTER DOG');
INSERT INTO `don jose minimarket de barrio`.`productos` (`idproductos`, `productos_vendidos`) VALUES ('4', 'LECHE CALO');
INSERT INTO `don jose minimarket de barrio`.`productos` (`idproductos`, `productos_vendidos`) VALUES ('5', 'LECHE NIDO');
INSERT INTO `don jose minimarket de barrio`.`productos` (`idproductos`, `productos_vendidos`) VALUES ('6', 'LONGANIZA LLANQUIHUE');
INSERT INTO `don jose minimarket de barrio`.`productos` (`idproductos`) VALUES ('');

select * from `venta de productos`;
INSERT INTO `don jose minimarket de barrio`.`venta de productos` (`idVenta de productos`, `Ventas totales`) VALUES ('1', '10000');
INSERT INTO `don jose minimarket de barrio`.`venta de productos` (`idVenta de productos`, `Ventas totales`) VALUES ('2', '20000');

SELECT AVG(venta de productos) 
FROM DON JOSE minimarket de barrio.venta de productos
WHERE nombre = 'venta de productos' OR nombre = '1';

SELECT SUM(precio) 
FROM DON JOSE minimarket de barrio.venta de productos
WHERE nombre = 'venta de productos' OR nombre = '2';

SELECT informe anual de ganancias 
FROM DON JOSE minimarket de barrio.venta de productos
CROSS JOIN DON JOSE minimarket de barrio.venta on DON JOSE minimarket de barrio.venta.id = DON JOSE minimarket de barrio.venta

