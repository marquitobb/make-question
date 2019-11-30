-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-11-2019 a las 02:40:34
-- Versión del servidor: 10.4.8-MariaDB
-- Versión de PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `estudi`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exam`
--

CREATE TABLE `exam` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `una` text DEFAULT NULL,
  `dos` text DEFAULT NULL,
  `tres` text DEFAULT NULL,
  `correct` int(10) NOT NULL,
  `color` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `exam`
--

INSERT INTO `exam` (`id`, `question`, `una`, `dos`, `tres`, `correct`, `color`) VALUES
(1, 'que hace el pinMode()', 'genera voltaje', 'configura pin de salida y entrada', 'configura solo pin de salida', 2, NULL),
(2, 'lee el valor (HIGH o LOW) del pin digital especificado', 'digitalRead()', 'pinMode()', 'digitalWrite()', 1, 'danger'),
(3, 'determina el valor en bits', 'pinMode()', 'analogWrite()', 'analogReadResolution()', 3, NULL),
(4, 'genera una onda cuadrada de la frecuencia en un pin especificado', 'tone()', 'analogWrite()', 'analogReadResolution()', 1, NULL),
(5, 'noTone()', 'termina la generacion de la onda por una funcion tone()', 'no hace nada', 'determina la cantidad de onda que va a tener esta', 1, NULL),
(6, 'introduce una pausa en el programa de una duracion especificada', 'pause()', 'digitalRead()', 'delay()', 3, NULL),
(7, 'transforma un numero de una escala a otra', 'value', 'map()', 'to-low', 2, NULL),
(8, 'genera numeros aleatorios', 'pseud-random()', 'random()', 'tone()', 2, NULL),
(9, 'microcontrolador de 8bits, arqui RICS, 32 registros y 135 instrucciones', 'ATmega2560', 'ATmega256', 'ATmega328', 1, NULL),
(10, 'Bus de 8 bits ', 'alu, sram, eeprom, linea e/s', 'sram, rom, eeprom, linea e/s', 'arquitectura harvard', 1, NULL),
(11, 'tiene Stack, fre memory, heap, statci data', 'eeprom', 'sram', 'rom', 2, NULL),
(12, 'tienen acceso indirecto para direccionamiento e espacio de datos', 'Registros ', 'Regitros de 16 bits', 'EEprom', 2, NULL),
(13, 'sus registros de entrada y salida son de 60 direcciones, se utilizan para registros de control y datos perifericos de E/S', 'entrada y salida extendidos', 'E/S', 'registros de control', 1, NULL),
(14, 'Almacena datos temporales, variables locales, direcciones de retorno', 'puntero de pila', 'pila llena', 'pila', 1, NULL),
(15, '3 registros del EEprom', 'EERA, CDEE, EEFG', 'EECC, EEDR, EERE', 'EEAR, EEDR, EECR', 3, NULL),
(16, 'para que son los 3 registros EEPROM', 'para leer, almacenar y llenar una pila ', 'nose', 'para el manejo de la direccion, el dato a ler o escribir y control', 3, 'danger'),
(17, 'que son es DDRx', 'Registro que define la dirección del puerto', 'Registro conectado a la terminal del puerto', 'Registro para hacer lecturas directas en las terminales de los puertos', 1, NULL),
(18, 'que es PORTx', 'Registro para hacer lecturas directas en las terminales de los puertos', 'Registro conectado a la terminal del puerto', 'Registro que define la dirección del puerto', 2, NULL),
(19, 'que es PINx', 'Registro para hacer lecturas directas en las terminales de los puertos', 'Registro conectado a la terminal del puerto', 'Registro que define la dirección del puerto', 1, NULL),
(20, 'Es un circuito integrado programable capaz de ejecutar las ordenes grabadas en su memoria', 'microchip', 'microprocesador', 'microcontrolador', 3, NULL),
(21, 'que es rics', 'reduce instruction set computer', 'reduce introduccion serial comuter', 'reduce introduccion serial comunication', 1, NULL),
(22, 'Machine instructions y instruction execution', 'ATmega2560', 'Rics', 'EEprom', 2, NULL),
(23, 'tiene una arquitectura RISC de 32 bits', 'Atmel', 'intel', 'ATV', 1, NULL),
(24, 'no tiene registro de código de condición ni bit de acarreo', 'RICS', 'RICS-Y', 'RICS-V', 3, NULL),
(25, 'este tipo de rics agrega instrucciones con suma, resta, cambio, logica de bits', 'Operaciones de memoria atómica', 'Conjunto de Instrucciones', 'Conjuntos Aritméticos y Lógicos', 3, NULL),
(26, 'risc que admite computadoras que comparten memoria entre varias CPU y subprocesos.', 'Operaciones de memoria atómica', 'Conjunto de Instrucciones', 'Conjuntos Aritméticos y Lógicos', 1, NULL),
(27, 'procesamiento de vectores propuesto puede hacer que el conjunto SIMD empaquetado quede obsoleto', 'Operaciones de memoria atómica', 'configura pin de salida y entrada', 'Conjuntos de instrucciones', 3, NULL),
(28, 'transferencia de datos, operaciones aritmeticas, logicas y de manipulacion de bits, desplazamiento y rotacion y control de flujo', 'Operaciones de memoria atómica', 'Conjunto de Instrucciones', 'clasificacion de instrucciones', 3, NULL),
(29, 'cambia el formato de los datos como de decimal a binario', 'manipulacion de direcciones', 'transformacion de datos', 'E/S', 2, NULL),
(30, 'permite calcular la direccion de un operando y almacenar en un registro o en pila', 'manipulacion de direcciones', 'transformacion de datos', 'EEprom', 1, NULL),
(31, 'reserva espacio en la pila', 'manipulacion de direcciones', 'transformacion de datos', 'creacion de marcos de almacenamiento local', 3, NULL),
(32, 'son instrucciones privilegiadas que usa el sistema operativo', 'manipulacion de direcciones', 'E/S', 'control de sistema', 3, NULL),
(33, 'para entrada y salida', 'de cajon nmms', 'control de sistema', 'E/S', 3, NULL),
(34, 'especifica la forma de interpretar la informacion en cada campo de operando para localizar', 'manipulacion de direcciones', 'modelo de direccionamiento', 'determina la cantidad de onda que va a tener esta', 2, NULL),
(35, 'clasificacion de mod de direccionamiento', 'propios', 'propios y no propios ', 'propios y inpropios', 3, NULL),
(36, 'arquitectura de modelo de direccionamiento', 'arquitectura de harvard', 'arquitectura de bond niiuman', 'arquitectura RICS', 1, NULL),
(37, 'Operando localizado en una dirección concreta de memoria', 'propios', 'inpropios', 'propios y inpropios', 1, NULL),
(38, 'Ubicación variable (Ejemplo: registros del procesador)', 'propios', 'inpropios', 'propios y inpropios', 2, NULL),
(39, 'voltage de 7-12 recomendada, 6-20v, 54 pins, 15 pwm, 16 analog, SRAM: 8kb, EEPROM 4kb, clock speed: 16MHz', 'Arquitectura ATmega2560', 'Arquitectura ATmega256', 'Arquitectura ATmega328', 1, NULL),
(40, 'tipos de direccionamiento', 'implicito, flotante, directo, relativo', 'implicito, inmediato, directo, indirecto', 'implicito, inmediato, por conexion', 2, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `exam`
--
ALTER TABLE `exam`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `exam`
--
ALTER TABLE `exam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
