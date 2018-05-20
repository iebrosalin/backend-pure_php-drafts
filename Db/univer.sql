-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 20 2018 г., 22:28
-- Версия сервера: 5.6.38
-- Версия PHP: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `univer`
--

-- --------------------------------------------------------

--
-- Структура таблицы `discipline`
--

CREATE TABLE `discipline` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(20) NOT NULL DEFAULT 'default discipline'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `discipline`
--

INSERT INTO `discipline` (`id`, `title`) VALUES
(1, 'default discipline1'),
(2, 'default discipline2');

-- --------------------------------------------------------

--
-- Структура таблицы `exam`
--

CREATE TABLE `exam` (
  `id_discipline` int(11) UNSIGNED NOT NULL,
  `id_stud` int(11) UNSIGNED NOT NULL,
  `admission` tinyint(1) NOT NULL DEFAULT '1',
  `mark` int(11) NOT NULL DEFAULT '-1',
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `exam`
--

INSERT INTO `exam` (`id_discipline`, `id_stud`, `admission`, `mark`, `date`) VALUES
(1, 3, 0, -1, '2018-05-20 17:33:21'),
(1, 4, 1, 5, '2018-05-20 23:01:31'),
(1, 5, 1, 2, '2018-05-20 17:32:19'),
(2, 3, 1, -1, '2018-05-20 17:33:21'),
(2, 4, 1, 2, '2018-05-20 23:01:31'),
(2, 5, 1, 2, '2018-05-20 17:32:19');

-- --------------------------------------------------------

--
-- Структура таблицы `stud`
--

CREATE TABLE `stud` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL DEFAULT 'Ivan',
  `soname` varchar(20) NOT NULL DEFAULT 'Ivanov',
  `num_grp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `id_zachot` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `stud`
--

INSERT INTO `stud` (`id`, `name`, `soname`, `num_grp`, `id_zachot`) VALUES
(3, 'Ivan3', 'Ivanov3', 1, 2),
(4, 'Ivan1', 'Ivanov1', 0, 0),
(5, 'Ivan', 'Ivanov', 0, 1);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `discipline`
--
ALTER TABLE `discipline`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Индексы таблицы `exam`
--
ALTER TABLE `exam`
  ADD PRIMARY KEY (`id_discipline`,`id_stud`),
  ADD KEY `id_discipline` (`id_discipline`),
  ADD KEY `id_stud` (`id_stud`);

--
-- Индексы таблицы `stud`
--
ALTER TABLE `stud`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_zachot` (`id_zachot`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `discipline`
--
ALTER TABLE `discipline`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `stud`
--
ALTER TABLE `stud`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
