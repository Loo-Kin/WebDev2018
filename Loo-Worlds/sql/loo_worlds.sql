-- phpMyAdmin SQL Dump
-- version 4.7.6
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Май 22 2018 г., 06:18
-- Версия сервера: 5.7.20-log
-- Версия PHP: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `loo_worlds`
--
CREATE DATABASE IF NOT EXISTS `loo_worlds` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `loo_worlds`;

-- --------------------------------------------------------

--
-- Структура таблицы `guestbook`
--

CREATE TABLE `guestbook` (
  `id` int(11) NOT NULL,
  `user_ip` varchar(200) NOT NULL,
  `user_browser` varchar(200) NOT NULL,
  `user_name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `homepage` varchar(200) DEFAULT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `guestbook`
--

INSERT INTO `guestbook` (`id`, `user_ip`, `user_browser`, `user_name`, `email`, `homepage`, `message`) VALUES
(1, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36 OPR/49.0.2725.47', 'Lukin', 'arabicus_porte@mail.ru', '', 'This is\r\n\r\na test message!'),
(2, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36 OPR/49.0.2725.47', 'Alexander Lukin', 'arabicus_porte@mail.ru', 'loo-kin', '&lt;div&gt;This is a &lt;b&gt;TEST&lt;/b&gt; message&lt;/div&gt;'),
(3, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36 OPR/49.0.2725.47', '&lt;div&gt;Lukin&lt;/div&gt;', 'arabicus_porte@mail.ru', 'LOO', 'Hello!'),
(4, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36 OPR/49.0.2725.47', 'Lukin', 'arabicus_porte@mail.ru', 'perp', 'PHP (рекурсивный акроним словосочетания PHP: Hypertext Preprocessor) - это распространенный язык программирования общего назначения с открытым исходным кодом. PHP сконструирован специально для ведения Web-разработок и его код может внедряться непосредственно в HTML.\r\n\r\nПростой ответ, но что он может означать? Вот пример кода:\r\n\r\nПример #1 Пример программирования на PHP\r\n\r\n&lt;!DOCTYPE HTML&gt;\r\n&lt;html&gt;\r\n    &lt;head&gt;\r\n        &lt;title&gt;Пример&lt;/title&gt;\r\n    &lt;/head&gt;\r\n    &lt;body&gt;\r\n\r\n        &lt;?php\r\n        echo &quot;Привет, я - скрипт PHP!&quot;;\r\n        ?&gt;\r\n\r\n    &lt;/body&gt;\r\n&lt;/html&gt;\r\nВместо рутинного вывода HTML-кода командами языка (как это происходит, например, в Perl или C), скрипт PHP содержит HTML с вкраплениями кода (в нашем случае, это вывод текста &quot;Привет, я - скрипт PHP!&quot;). Код PHP отделяется специальными начальным и конечным тегами &lt;?php и ?&gt;, которые позволяют &quot;переключаться&quot; в &quot;PHP-режим&quot; и выходить из него.\r\n\r\nPHP отличается от JavaScript тем, что PHP-скрипты выполняются на сервере и генерируют HTML, который посылается клиенту. Если бы у вас на сервере был размещен скрипт, подобный вышеприведенному, клиент получил бы только результат его выполнения, но не смог бы выяснить, какой именно код его произвел. Вы даже можете настроить свой сервер таким образом, чтобы обычные HTML-файлы обрабатывались процессором PHP, так что клиенты даже не смогут узнать, получают ли они обычный HTML-файл или результат выполнения скрипта.\r\n\r\nPHP крайне прост для освоения, но вместе с тем способен удовлетворить запросы профессиональных программистов. Не пугайтесь длинного списка возможностей PHP. Вы можете быстро начать, и уже в течение нескольких часов сможете создавать простые PHP-скрипты.\r\n\r\nХотя PHP, главным образом, предназначен для работы в среде web-серверов, область его применения не ограничивается только этим. Читайте дальше и не пропустите главу Возможности PHP либо, начните непосредственно с Вводного руководства, если вас интересует исключительно веб-программирование.'),
(5, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36 OPR/49.0.2725.47', 'Lukin', 'arabicus_porte@mail.ru', 'Loo-Artworks.blogspot.ru', 'mysqli::real_escape_string -- mysqli_real_escape_string &mdash; Экранирует специальные символы в строке для использования в SQL выражении, используя текущий набор символов соединения'),
(7, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36 OPR/49.0.2725.47', 'Kerby', 'bearabicus_porte@mail.ru', '', 'Kerby was here!'),
(8, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36 OPR/49.0.2725.47', 'Lyuikin', 'zerabicus_porte@mail.ru', '', 'Corb'),
(9, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36 OPR/49.0.2725.47', 'Lukin', 'arabicus_porte@mail.ru', '', 'This is\r\n\r\na test message!'),
(10, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36 OPR/49.0.2725.47', 'Alexander Lukin', 'arabicus_porte@mail.ru', 'loo-kin', '&lt;div&gt;This is a &lt;b&gt;TEST&lt;/b&gt; message&lt;/div&gt;'),
(11, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36 OPR/49.0.2725.47', '&lt;div&gt;Lukin&lt;/div&gt;', 'arabicus_porte@mail.ru', 'LOO', 'Hello!'),
(12, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36 OPR/49.0.2725.47', 'Lukin', 'arabicus_porte@mail.ru', 'Loo-Artworks.blogspot.ru', 'mysqli::real_escape_string -- mysqli_real_escape_string &mdash; Экранирует специальные символы в строке для использования в SQL выражении, используя текущий набор символов соединения'),
(13, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36 OPR/49.0.2725.47', 'Kerby', 'bearabicus_porte@mail.ru', '', 'Kerby was here!'),
(14, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36 OPR/49.0.2725.47', 'Lyuikin', 'zerabicus_porte@mail.ru', '', 'Corb'),
(15, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36 OPR/49.0.2725.47', 'Lukin', 'arabicus_porte@mail.ru', '', 'This is\r\n\r\na test message!'),
(16, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36 OPR/49.0.2725.47', 'Alexander Lukin', 'arabicus_porte@mail.ru', 'loo-kin', '&lt;div&gt;This is a &lt;b&gt;TEST&lt;/b&gt; message&lt;/div&gt;'),
(17, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36 OPR/49.0.2725.47', '&lt;div&gt;Lukin&lt;/div&gt;', 'arabicus_porte@mail.ru', 'LOO', 'Hello!'),
(18, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36 OPR/49.0.2725.47', 'Lukin', 'arabicus_porte@mail.ru', 'Loo-Artworks.blogspot.ru', 'mysqli::real_escape_string -- mysqli_real_escape_string &mdash; Экранирует специальные символы в строке для использования в SQL выражении, используя текущий набор символов соединения'),
(19, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36 OPR/49.0.2725.47', 'Kerby', 'bearabicus_porte@mail.ru', '', 'Kerby was here!'),
(20, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36 OPR/49.0.2725.47', 'Lyuikin', 'zerabicus_porte@mail.ru', '', 'Corb'),
(21, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36 OPR/49.0.2725.47', 'Lukin', 'arabicus_porte@mail.ru', '', 'This is\r\n\r\na test message!'),
(22, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36 OPR/49.0.2725.47', 'Alexander Lukin', 'arabicus_porte@mail.ru', 'loo-kin', '&lt;div&gt;This is a &lt;b&gt;TEST&lt;/b&gt; message&lt;/div&gt;'),
(23, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36 OPR/49.0.2725.47', '&lt;div&gt;Lukin&lt;/div&gt;', 'arabicus_porte@mail.ru', 'LOO', 'Hello!'),
(24, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36 OPR/49.0.2725.47', 'Lukin', 'arabicus_porte@mail.ru', 'Loo-Artworks.blogspot.ru', 'mysqli::real_escape_string -- mysqli_real_escape_string &mdash; Экранирует специальные символы в строке для использования в SQL выражении, используя текущий набор символов соединения'),
(25, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36 OPR/49.0.2725.47', 'Kerby', 'bearabicus_porte@mail.ru', '', 'Kerby was here!'),
(26, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36 OPR/49.0.2725.47', 'Lyuikin', 'zerabicus_porte@mail.ru', '', 'Corb'),
(27, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36 OPR/49.0.2725.47', 'Lukin', 'arabicus_porte@mail.ru', '', 'This is\r\n\r\na test message!'),
(28, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36 OPR/49.0.2725.47', 'Alexander Lukin', 'arabicus_porte@mail.ru', 'loo-kin', '&lt;div&gt;This is a &lt;b&gt;TEST&lt;/b&gt; message&lt;/div&gt;'),
(29, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36 OPR/49.0.2725.47', '&lt;div&gt;Lukin&lt;/div&gt;', 'arabicus_porte@mail.ru', 'LOO', 'Hello!'),
(30, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36 OPR/49.0.2725.47', 'Lukin', 'arabicus_porte@mail.ru', 'Loo-Artworks.blogspot.ru', 'mysqli::real_escape_string -- mysqli_real_escape_string &mdash; Экранирует специальные символы в строке для использования в SQL выражении, используя текущий набор символов соединения'),
(31, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36 OPR/49.0.2725.47', 'Kerby', 'bearabicus_porte@mail.ru', '', 'Kerby was here!'),
(32, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36 OPR/49.0.2725.47', 'Lyuikin', 'zerabicus_porte@mail.ru', '', 'Corb'),
(33, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36 OPR/49.0.2725.47', 'Lukin', 'arabicus_porte@mail.ru', '', 'This is\r\n\r\na test message!'),
(34, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36 OPR/49.0.2725.47', 'Alexander Lukin', 'arabicus_porte@mail.ru', 'loo-kin', '&lt;div&gt;This is a &lt;b&gt;TEST&lt;/b&gt; message&lt;/div&gt;'),
(35, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36 OPR/49.0.2725.47', '&lt;div&gt;Lukin&lt;/div&gt;', 'arabicus_porte@mail.ru', 'LOO', 'Hello!'),
(36, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36 OPR/49.0.2725.47', 'Lukin', 'arabicus_porte@mail.ru', 'Loo-Artworks.blogspot.ru', 'mysqli::real_escape_string -- mysqli_real_escape_string &mdash; Экранирует специальные символы в строке для использования в SQL выражении, используя текущий набор символов соединения'),
(37, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36 OPR/49.0.2725.47', 'Kerby', 'bearabicus_porte@mail.ru', '', 'Kerby was here!'),
(38, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36 OPR/49.0.2725.47', 'Lyuikin', 'zerabicus_porte@mail.ru', '', 'Corb'),
(39, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36 OPR/49.0.2725.47', 'Lukin', 'arabicus_porte@mail.ru', '', 'This is\r\n\r\na test message!'),
(40, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36 OPR/49.0.2725.47', 'Alexander Lukin', 'arabicus_porte@mail.ru', 'loo-kin', '&lt;div&gt;This is a &lt;b&gt;TEST&lt;/b&gt; message&lt;/div&gt;'),
(41, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36 OPR/49.0.2725.47', '&lt;div&gt;Lukin&lt;/div&gt;', 'arabicus_porte@mail.ru', 'LOO', 'Hello!'),
(42, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36 OPR/49.0.2725.47', 'Lukin', 'arabicus_porte@mail.ru', 'Loo-Artworks.blogspot.ru', 'mysqli::real_escape_string -- mysqli_real_escape_string &mdash; Экранирует специальные символы в строке для использования в SQL выражении, используя текущий набор символов соединения'),
(43, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36 OPR/49.0.2725.47', 'Kerby', 'bearabicus_porte@mail.ru', '', 'Kerby was here!'),
(44, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36 OPR/49.0.2725.47', 'Lyuikin', 'zerabicus_porte@mail.ru', '', 'Corb'),
(45, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36 OPR/49.0.2725.47', 'Lukin', 'arabicus_porte@mail.ru', '', 'This is\r\n\r\na test message!'),
(46, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36 OPR/49.0.2725.47', 'Alexander Lukin', 'arabicus_porte@mail.ru', 'loo-kin', '&lt;div&gt;This is a &lt;b&gt;TEST&lt;/b&gt; message&lt;/div&gt;'),
(47, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36 OPR/49.0.2725.47', '&lt;div&gt;Lukin&lt;/div&gt;', 'arabicus_porte@mail.ru', 'LOO', 'Hello!'),
(48, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36 OPR/49.0.2725.47', 'Lukin', 'arabicus_porte@mail.ru', 'Loo-Artworks.blogspot.ru', 'mysqli::real_escape_string -- mysqli_real_escape_string &mdash; Экранирует специальные символы в строке для использования в SQL выражении, используя текущий набор символов соединения'),
(49, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36 OPR/49.0.2725.47', 'Kerby', 'bearabicus_porte@mail.ru', '', 'Kerby was here!'),
(50, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36 OPR/49.0.2725.47', 'Lyuikin', 'zerabicus_porte@mail.ru', '', 'Corb'),
(51, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36 OPR/49.0.2725.47', 'Solomon', 'solomon@solomon.com', '', 'Solomon'),
(52, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36 OPR/49.0.2725.47', 'Zeliboba', 'zelivova@zeliboba.com', '', 'Zeliboba here'),
(53, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36 OPR/49.0.2725.47', 'Correct_Username', 'correct@email.com', '', 'Correct message.'),
(54, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36 OPR/49.0.2725.47', 'Loo123', 'loo@example.com', '', 'aaa'),
(55, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36 OPR/49.0.2725.47', 'Alexander_Lukin', 'arabicus_porte@mail.ru', 'homepage', 'New Message\r\n\r\nNew Message'),
(56, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36 OPR/49.0.2725.47', 'Alexander_Lukin', 'arabicus_porte@mail.ru', 'homepage', 'New Message\r\n\r\nNew Message'),
(57, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36 OPR/49.0.2725.47', 'Alexander_Lukin', 'arabicus_porte@mail.ru', 'homepage', 'New Message\r\n\r\nNew Message'),
(58, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36 OPR/49.0.2725.47', 'Test', 'arabicus_porte@mail.ru', '', 'This is a test message'),
(59, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36 OPR/49.0.2725.47', 'Lukin', 'arabicus_porte@mail.ru', '', 'This is a correct message.'),
(60, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36 OPR/49.0.2725.47', 'Alexander Lukin', 'test', '', 'A'),
(61, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36 OPR/49.0.2725.47', 'Alexander Lukin', 'test', '', 'A'),
(62, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36 OPR/49.0.2725.47', 'Alexander Lukin', 'arabicus_porte@mail.ru', '', 'Hello World.'),
(63, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36 OPR/49.0.2725.47', 'Alexander Lukin', 'arabicus_porte@mail.ru', '', 'Test string'),
(64, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36 OPR/49.0.2725.47', 'Solomon', 'solomon@solomon.com', '', 'Solomon'),
(65, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36 OPR/49.0.2725.47', 'Alexander Lukin', 'arabicus_porte@mail.ru', '', 'Welcome to the center.'),
(66, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36 OPR/49.0.2725.47', 'Test', 'arabicus_porte@mail.ru', '', 'For testing purposes'),
(67, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36 OPR/49.0.2725.47', 'Alexander_Lukin', 'arabicus_porte@mail.ru', '', 'Correct message'),
(68, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36 OPR/49.0.2725.47', 'Lukin', 'arabicus_porte@mail.ru', '', 'correct message'),
(69, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36 OPR/49.0.2725.47', 'Kerby', 'kerby@looartworks.com', '', '&lt;div&gt;Тэги не обрабатываются?&lt;/div&gt;'),
(70, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36 OPR/49.0.2725.47', 'Lukin', 'arabicus_porte@mail.ru', 'http://example.com', 'Test'),
(71, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36 OPR/49.0.2725.47', 'Alexander_Lukin', 'arabicus_porte@mail.ru', '', 'Наконец-то я реализовал валидацию формы на сервере.'),
(72, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36 OPR/49.0.2725.47', 'Kerby', 'kerby@looartworks.com', '', 'Kerby was here. Again.'),
(73, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36 OPR/52.0.2871.64', 'LooKin', 'arabicus_porte@mail.ru', '', 'Welcome to Loo-Worlds!');

-- --------------------------------------------------------

--
-- Структура таблицы `news_articles`
--

CREATE TABLE `news_articles` (
  `news_id` int(11) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `author` varchar(100) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `picture` varchar(100) NOT NULL,
  `brief` varchar(250) NOT NULL,
  `article` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `news_articles`
--

INSERT INTO `news_articles` (`news_id`, `title`, `author`, `date`, `picture`, `brief`, `article`) VALUES
(1, 'Заголовок статьи может состоять из нескольких строк', 'Loo-Kin', '2018-05-06 12:51:51', 'media/gallery/wust/620_2015-04-12_00001.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In eu ligula sem. Nulla facilisi. Interdum et malesuada fames ac ante ipsum primis in faucibus. Suspendisse fermentum ligula enim, ac finibus velit dapibus in. Nulla venenatis eget ligula ac h', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In eu ligula sem. Nulla facilisi. Interdum et malesuada fames ac ante ipsum primis in faucibus. Suspendisse fermentum ligula enim, ac finibus velit dapibus in. Nulla venenatis eget ligula ac hendrerit. Nunc ullamcorper est sed maximus vehicula. Vestibulum magna quam, finibus vel lectus at, efficitur faucibus dui. Etiam posuere luctus orci id hendrerit. Nulla facilisi.\r\n                    </p>\r\n                    <p>\r\n                            In sit amet venenatis metus, id porttitor orci. Praesent lorem quam, suscipit ut diam id, rhoncus pulvinar neque. Quisque ullamcorper enim a rutrum venenatis. Nam vel felis dolor. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Curabitur sapien eros, egestas eget tristique et, malesuada ac turpis. Sed tincidunt nisi sit amet turpis bibendum, vitae ultrices est pretium. Etiam turpis nibh, viverra a enim eu, vulputate mattis nisi. Sed vehicula nisi pulvinar, iaculis mauris eget, vulputate mi. Maecenas et facilisis sapien. Nulla finibus egestas felis quis sodales. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas in turpis id mi fermentum porta. Integer scelerisque augue a leo ullamcorper consequat. Donec at lobortis tortor, nec ornare dui. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;                    </p>\r\n                '),
(2, 'Loo-Artworks: Большое обновление дизайна', 'Loo-Kin', '2018-05-21 19:42:58', 'media/gallery/wust/620_2015-10-04_00005.png', 'Теперь всё будет по-другому!', '<div dir=\"ltr\" style=\"text-align: left;\" trbidi=\"on\">\r\n<div class=\"separator\" style=\"clear: both; text-align: center;\">\r\n</div>\r\nПривет. В последнее время я не очень часто пишу сюда, однако это не значит, что я забросил Loo-Artworks. Да, может быть количество <strike>и качество</strike> контента снизилось. И поэтому я решил, что настало время перемен. И сегодня, 31 августа, я рад представить <b>новый дизайн блога Loo-Artworks</b>!<br />\r\n<br />\r\nИтак, из чего же он состоит...<br />\r\n<br />\r\n<h2 style=\"text-align: left;\">\r\nНовый облик блога</h2>\r\nНовый дизайн содержит всё лучшее, что было в старом блоге Loo-Artworks, но при этом обзавёлся новыми элементами. Модуль избранной записи стал более заметным, меню ярлыков позволяет легко фильтровать записи по любым рубрикам, которые когда-либо были в Loo-Artworks. А с помощью раздела популярных сообщений можно быстро переходить к сообщениям, находящимися в тренде в данный момент. Всё это построено на теме, использующей адаптивную вёрстку, благодаря которой можно с комфортом просматривать содержимое блога на любом устройстве!<br />\r\n<br />\r\nВозможно, после обновления некоторые старые посты станут нечитабельными, но это дело поправимое.<br />\r\n<br />\r\n<h2 style=\"text-align: left;\">\r\nОбновлённый <a href=\"https://loo-artworks.blogspot.ru/p/comic.html\">Комикс-хаб</a></h2>\r\nОдин из наиболее важных разделов Loo-Artworks наконец-то получил обновление. В обновлённом Комикс-хабе особое внимание акцентировано на большие комиксы. Все ссылки на комиксы теперь оформлены в виде больших изображений с кратким описанием снизу. А также теперь из Комикс-хаба можно просмотреть все посты, связанные с комиксами. Для этого нужно просто <a href=\"https://loo-artworks.blogspot.ru/search/label/%D0%9A%D0%BE%D0%BC%D0%B8%D0%BA%D1%81-%D1%85%D0%B0%D0%B1\">перейти по ссылке с соответствующим ярлыком</a>.<br />\r\n<br />\r\nСами комиксы также подверглись изменениям. Теперь каждый комикс располагается на отдельной странице. Каждая такая страница предлагает удобные средства навигации внутри комикса, благодаря которым просмотр комикса на сайте становится удобен как никогда раньше!<br />\r\n<br />\r\nОдно плохо - новых комиксов пока нет. Но возможно эти обновления поспособствуют возобновлению создания новых комиксов (хотя может быть лучше не надо, а?).<br />\r\n<br />\r\n<h2 style=\"text-align: left;\">\r\nИ это ещё не всё</h2>\r\n<br />\r\nНе стоит забывать также о <a href=\"https://vk.com/loo_artworks\">группе ВКонтакте</a>, где я время от времени публикую всякие наброски и прочую мазню, а также <a href=\"https://twitter.com/Loo_Artworks\">твиттер</a>, <a href=\"http://steamcommunity.com/id/Loo-Kin/home/\">группу в Steam</a> и <a href=\"https://www.youtube.com/channel/UCNkEQIm-lUJqWrmc79am5-Q\">канал на Youtube</a>, которые, возможно, мне ещё когда-нибудь пригодятся.<br />\r\n<br />\r\nТакже у меня есть ещё пара пока что не анонсированных проекта, которые, я надеюсь, завершу в скорое время и обрадую вас новыми крутыми вещами.<br />\r\n<br />\r\nТак или иначе Loo-Artworks живёт, и бросать его я пока не собираюсь.<br />\r\n<div style=\"text-align: right;\">\r\n<i>Loo-Kin</i></div>\r\n</div>\r\n'),
(3, 'Другой заголовок статьи', 'Loo-Kin', '2018-05-06 12:51:51', 'media/gallery/wust/620_2015-04-12_00001.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In eu ligula sem. Nulla facilisi. Interdum et malesuada fames ac ante ipsum primis in faucibus. Suspendisse fermentum ligula enim, ac finibus velit dapibus in. Nulla venenatis eget ligula ac h', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In eu ligula sem. Nulla facilisi. Interdum et malesuada fames ac ante ipsum primis in faucibus. Suspendisse fermentum ligula enim, ac finibus velit dapibus in. Nulla venenatis eget ligula ac hendrerit. Nunc ullamcorper est sed maximus vehicula. Vestibulum magna quam, finibus vel lectus at, efficitur faucibus dui. Etiam posuere luctus orci id hendrerit. Nulla facilisi.\r\n                    </p>\r\n                    <p>\r\n                            In sit amet venenatis metus, id porttitor orci. Praesent lorem quam, suscipit ut diam id, rhoncus pulvinar neque. Quisque ullamcorper enim a rutrum venenatis. Nam vel felis dolor. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Curabitur sapien eros, egestas eget tristique et, malesuada ac turpis. Sed tincidunt nisi sit amet turpis bibendum, vitae ultrices est pretium. Etiam turpis nibh, viverra a enim eu, vulputate mattis nisi. Sed vehicula nisi pulvinar, iaculis mauris eget, vulputate mi. Maecenas et facilisis sapien. Nulla finibus egestas felis quis sodales. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas in turpis id mi fermentum porta. Integer scelerisque augue a leo ullamcorper consequat. Donec at lobortis tortor, nec ornare dui. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;                    </p>\r\n                '),
(4, 'Добро пожаловать в Loo-Artworks', 'Loo-Kin', '2018-05-21 19:42:58', 'media/loo_artworks2017.jpg', 'Welcome', '<div dir=\"ltr\" style=\"text-align: left;\" trbidi=\"on\">\r\n<div class=\"separator\" style=\"clear: both; text-align: center;\">\r\n</div>\r\nПривет. В последнее время я не очень часто пишу сюда, однако это не значит, что я забросил Loo-Artworks. Да, может быть количество <strike>и качество</strike> контента снизилось. И поэтому я решил, что настало время перемен. И сегодня, 31 августа, я рад представить <b>новый дизайн блога Loo-Artworks</b>!<br />\r\n<br />\r\nИтак, из чего же он состоит...<br />\r\n<br />\r\n<h2 style=\"text-align: left;\">\r\nНовый облик блога</h2>\r\nНовый дизайн содержит всё лучшее, что было в старом блоге Loo-Artworks, но при этом обзавёлся новыми элементами. Модуль избранной записи стал более заметным, меню ярлыков позволяет легко фильтровать записи по любым рубрикам, которые когда-либо были в Loo-Artworks. А с помощью раздела популярных сообщений можно быстро переходить к сообщениям, находящимися в тренде в данный момент. Всё это построено на теме, использующей адаптивную вёрстку, благодаря которой можно с комфортом просматривать содержимое блога на любом устройстве!<br />\r\n<br />\r\nВозможно, после обновления некоторые старые посты станут нечитабельными, но это дело поправимое.<br />\r\n<br />\r\n<h2 style=\"text-align: left;\">\r\nОбновлённый <a href=\"https://loo-artworks.blogspot.ru/p/comic.html\">Комикс-хаб</a></h2>\r\nОдин из наиболее важных разделов Loo-Artworks наконец-то получил обновление. В обновлённом Комикс-хабе особое внимание акцентировано на большие комиксы. Все ссылки на комиксы теперь оформлены в виде больших изображений с кратким описанием снизу. А также теперь из Комикс-хаба можно просмотреть все посты, связанные с комиксами. Для этого нужно просто <a href=\"https://loo-artworks.blogspot.ru/search/label/%D0%9A%D0%BE%D0%BC%D0%B8%D0%BA%D1%81-%D1%85%D0%B0%D0%B1\">перейти по ссылке с соответствующим ярлыком</a>.<br />\r\n<br />\r\nСами комиксы также подверглись изменениям. Теперь каждый комикс располагается на отдельной странице. Каждая такая страница предлагает удобные средства навигации внутри комикса, благодаря которым просмотр комикса на сайте становится удобен как никогда раньше!<br />\r\n<br />\r\nОдно плохо - новых комиксов пока нет. Но возможно эти обновления поспособствуют возобновлению создания новых комиксов (хотя может быть лучше не надо, а?).<br />\r\n<br />\r\n<h2 style=\"text-align: left;\">\r\nИ это ещё не всё</h2>\r\n<br />\r\nНе стоит забывать также о <a href=\"https://vk.com/loo_artworks\">группе ВКонтакте</a>, где я время от времени публикую всякие наброски и прочую мазню, а также <a href=\"https://twitter.com/Loo_Artworks\">твиттер</a>, <a href=\"http://steamcommunity.com/id/Loo-Kin/home/\">группу в Steam</a> и <a href=\"https://www.youtube.com/channel/UCNkEQIm-lUJqWrmc79am5-Q\">канал на Youtube</a>, которые, возможно, мне ещё когда-нибудь пригодятся.<br />\r\n<br />\r\nТакже у меня есть ещё пара пока что не анонсированных проекта, которые, я надеюсь, завершу в скорое время и обрадую вас новыми крутыми вещами.<br />\r\n<br />\r\nТак или иначе Loo-Artworks живёт, и бросать его я пока не собираюсь.<br />\r\n<div style=\"text-align: right;\">\r\n<i>Loo-Kin</i></div>\r\n</div>\r\n');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `guestbook`
--
ALTER TABLE `guestbook`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `news_articles`
--
ALTER TABLE `news_articles`
  ADD PRIMARY KEY (`news_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `guestbook`
--
ALTER TABLE `guestbook`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT для таблицы `news_articles`
--
ALTER TABLE `news_articles`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
