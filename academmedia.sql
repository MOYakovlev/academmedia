-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Окт 09 2016 г., 22:19
-- Версия сервера: 5.7.14-log
-- Версия PHP: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `academmedia`
--

-- --------------------------------------------------------

--
-- Структура таблицы `here_comes_our_game_name_1476023564`
--

CREATE TABLE `here_comes_our_game_name_1476023564` (
  `id` int(6) UNSIGNED NOT NULL,
  `event_name` varchar(30) NOT NULL,
  `event_timestamp` varchar(20) DEFAULT NULL,
  `time_on` int(10) DEFAULT NULL,
  `event_type` int(10) DEFAULT NULL,
  `color` varchar(20) DEFAULT NULL,
  `country` varchar(8) DEFAULT NULL,
  `city` varchar(32) DEFAULT NULL,
  `app_id` varchar(64) DEFAULT NULL,
  `app_name` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `here_comes_our_game_name_1476023564`
--

INSERT INTO `here_comes_our_game_name_1476023564` (`id`, `event_name`, `event_timestamp`, `time_on`, `event_type`, `color`, `country`, `city`, `app_id`, `app_name`) VALUES
(1, 'session_end', '1474370844706', 5, 0, 'rgb(193, 22, 63)', 'RU', 'NOVOSIBIRSK', 'ios.111111.app-store', 'Here comes our game name'),
(2, 'scene_start.loading.0', '1474370840840', 3, 0, 'rgb(176, 181, 237)', 'RU', 'NOVOSIBIRSK', 'ios.111111.app-store', 'Here comes our game name'),
(3, 'geo_info', '1474370839943', 0, 0, 'rgb(55, 100, 57)', 'RU', 'NOVOSIBIRSK', 'ios.111111.app-store', 'Here comes our game name'),
(4, 'app_open', '1474370839894', 0, 0, 'rgb(59, 33, 218)', 'RU', 'NOVOSIBIRSK', 'ios.111111.app-store', 'Here comes our game name'),
(5, 'app_info', '1474370839947', 0, 1, 'rgb(176, 91, 8)', 'RU', 'NOVOSIBIRSK', 'ios.111111.app-store', 'Here comes our game name');

-- --------------------------------------------------------

--
-- Структура таблицы `here_comes_our_game_name_1476023641`
--

CREATE TABLE `here_comes_our_game_name_1476023641` (
  `id` int(6) UNSIGNED NOT NULL,
  `event_name` varchar(30) NOT NULL,
  `event_timestamp` varchar(20) DEFAULT NULL,
  `time_on` int(10) DEFAULT NULL,
  `event_type` int(10) DEFAULT NULL,
  `color` varchar(20) DEFAULT NULL,
  `country` varchar(8) DEFAULT NULL,
  `city` varchar(32) DEFAULT NULL,
  `app_id` varchar(64) DEFAULT NULL,
  `app_name` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `here_comes_our_game_name_1476023641`
--

INSERT INTO `here_comes_our_game_name_1476023641` (`id`, `event_name`, `event_timestamp`, `time_on`, `event_type`, `color`, `country`, `city`, `app_id`, `app_name`) VALUES
(1, 'session_end', '1474370844706', 5, 0, 'rgb(134, 109, 128)', 'RU', 'NOVOSIBIRSK', 'ios.111111.app-store', 'Here comes our game name'),
(2, 'scene_start.loading.0', '1474370840840', 3, 0, 'rgb(56, 17, 6)', 'RU', 'NOVOSIBIRSK', 'ios.111111.app-store', 'Here comes our game name'),
(3, 'geo_info', '1474370839943', 0, 0, 'rgb(196, 118, 233)', 'RU', 'NOVOSIBIRSK', 'ios.111111.app-store', 'Here comes our game name'),
(4, 'app_open', '1474370839894', 0, 0, 'rgb(161, 174, 33)', 'RU', 'NOVOSIBIRSK', 'ios.111111.app-store', 'Here comes our game name'),
(5, 'app_info', '1474370839947', 0, 1, 'rgb(60, 228, 226)', 'RU', 'NOVOSIBIRSK', 'ios.111111.app-store', 'Here comes our game name');

-- --------------------------------------------------------

--
-- Структура таблицы `here_comes_our_game_name_1476023663`
--

CREATE TABLE `here_comes_our_game_name_1476023663` (
  `id` int(6) UNSIGNED NOT NULL,
  `event_name` varchar(30) NOT NULL,
  `event_timestamp` varchar(20) DEFAULT NULL,
  `time_on` int(10) DEFAULT NULL,
  `event_type` int(10) DEFAULT NULL,
  `color` varchar(20) DEFAULT NULL,
  `country` varchar(8) DEFAULT NULL,
  `city` varchar(32) DEFAULT NULL,
  `app_id` varchar(64) DEFAULT NULL,
  `app_name` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `here_comes_our_game_name_1476023663`
--

INSERT INTO `here_comes_our_game_name_1476023663` (`id`, `event_name`, `event_timestamp`, `time_on`, `event_type`, `color`, `country`, `city`, `app_id`, `app_name`) VALUES
(1, 'session_end', '0.000000', 5, 0, 'rgb(134, 109, 128)', 'RU', 'NOVOSIBIRSK', 'ios.111111.app-store', 'Here comes our game name'),
(2, 'scene_start.loading.0', '0.000000', 3, 0, 'rgb(187, 174, 136)', 'RU', 'NOVOSIBIRSK', 'ios.111111.app-store', 'Here comes our game name'),
(3, 'geo_info', '0.000000', 0, 0, 'rgb(196, 118, 233)', 'RU', 'NOVOSIBIRSK', 'ios.111111.app-store', 'Here comes our game name'),
(4, 'app_open', '0.000000', 0, 0, 'rgb(161, 174, 33)', 'RU', 'NOVOSIBIRSK', 'ios.111111.app-store', 'Here comes our game name'),
(5, 'app_info', '0.000000', 0, 1, 'rgb(60, 228, 226)', 'RU', 'NOVOSIBIRSK', 'ios.111111.app-store', 'Here comes our game name');

-- --------------------------------------------------------

--
-- Структура таблицы `here_comes_our_game_name_1476023960`
--

CREATE TABLE `here_comes_our_game_name_1476023960` (
  `id` int(6) UNSIGNED NOT NULL,
  `event_name` varchar(30) NOT NULL,
  `event_timestamp` varchar(20) DEFAULT NULL,
  `time_on` int(10) DEFAULT NULL,
  `event_type` int(10) DEFAULT NULL,
  `color` varchar(20) DEFAULT NULL,
  `country` varchar(8) DEFAULT NULL,
  `city` varchar(32) DEFAULT NULL,
  `app_id` varchar(64) DEFAULT NULL,
  `app_name` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `here_comes_our_game_name_1476023960`
--

INSERT INTO `here_comes_our_game_name_1476023960` (`id`, `event_name`, `event_timestamp`, `time_on`, `event_type`, `color`, `country`, `city`, `app_id`, `app_name`) VALUES
(1, 'session_end', '0.000000', 5, 0, 'rgb(20, 48, 85)', 'RU', 'NOVOSIBIRSK', 'ios.111111.app-store', 'Here comes our game name'),
(2, 'scene_start.loading.0', '0.000000', 3, 0, 'rgb(56, 17, 6)', 'RU', 'NOVOSIBIRSK', 'ios.111111.app-store', 'Here comes our game name'),
(3, 'geo_info', '0.000000', 0, 0, 'rgb(40, 97, 107)', 'RU', 'NOVOSIBIRSK', 'ios.111111.app-store', 'Here comes our game name'),
(4, 'app_open', '0.000000', 0, 0, 'rgb(60, 80, 50)', 'RU', 'NOVOSIBIRSK', 'ios.111111.app-store', 'Here comes our game name'),
(5, 'app_info', '0.000000', 0, 1, 'rgb(57, 20, 127)', 'RU', 'NOVOSIBIRSK', 'ios.111111.app-store', 'Here comes our game name');

-- --------------------------------------------------------

--
-- Структура таблицы `here_comes_our_game_name_1476025680`
--

CREATE TABLE `here_comes_our_game_name_1476025680` (
  `id` int(6) UNSIGNED NOT NULL,
  `event_name` varchar(30) NOT NULL,
  `event_timestamp` varchar(20) DEFAULT NULL,
  `time_on` int(10) DEFAULT NULL,
  `event_type` int(10) DEFAULT NULL,
  `color` varchar(20) DEFAULT NULL,
  `country` varchar(8) DEFAULT NULL,
  `city` varchar(32) DEFAULT NULL,
  `app_id` varchar(64) DEFAULT NULL,
  `app_name` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `here_comes_our_game_name_1476025680`
--

INSERT INTO `here_comes_our_game_name_1476025680` (`id`, `event_name`, `event_timestamp`, `time_on`, `event_type`, `color`, `country`, `city`, `app_id`, `app_name`) VALUES
(1, 'session_end', '0.000000', 5, 0, 'rgb(212, 220, 152)', 'RU', 'NOVOSIBIRSK', 'ios.111111.app-store', 'Here comes our game name'),
(2, 'scene_start.loading.0', '0.000000', 3, 0, 'rgb(187, 174, 136)', 'RU', 'NOVOSIBIRSK', 'ios.111111.app-store', 'Here comes our game name'),
(3, 'geo_info', '0.000000', 0, 0, 'rgb(196, 118, 233)', 'RU', 'NOVOSIBIRSK', 'ios.111111.app-store', 'Here comes our game name'),
(4, 'app_open', '0.000000', 0, 0, 'rgb(161, 174, 33)', 'RU', 'NOVOSIBIRSK', 'ios.111111.app-store', 'Here comes our game name'),
(5, 'app_info', '0.000000', 0, 1, 'rgb(96, 56, 230)', 'RU', 'NOVOSIBIRSK', 'ios.111111.app-store', 'Here comes our game name');

-- --------------------------------------------------------

--
-- Структура таблицы `here_comes_our_game_name_1476025693`
--

CREATE TABLE `here_comes_our_game_name_1476025693` (
  `id` int(6) UNSIGNED NOT NULL,
  `event_name` varchar(30) NOT NULL,
  `event_timestamp` varchar(20) DEFAULT NULL,
  `time_on` int(10) DEFAULT NULL,
  `event_type` int(10) DEFAULT NULL,
  `color` varchar(20) DEFAULT NULL,
  `country` varchar(8) DEFAULT NULL,
  `city` varchar(32) DEFAULT NULL,
  `app_id` varchar(64) DEFAULT NULL,
  `app_name` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `here_comes_our_game_name_1476025693`
--

INSERT INTO `here_comes_our_game_name_1476025693` (`id`, `event_name`, `event_timestamp`, `time_on`, `event_type`, `color`, `country`, `city`, `app_id`, `app_name`) VALUES
(1, 'session_end', '0.000000', 5, 0, 'rgb(20, 48, 85)', 'RU', 'NOVOSIBIRSK', 'ios.111111.app-store', 'Here comes our game name'),
(2, 'scene_start.loading.0', '0.000000', 3, 0, 'rgb(56, 17, 6)', 'RU', 'NOVOSIBIRSK', 'ios.111111.app-store', 'Here comes our game name'),
(3, 'geo_info', '0.000000', 0, 0, 'rgb(40, 97, 107)', 'RU', 'NOVOSIBIRSK', 'ios.111111.app-store', 'Here comes our game name'),
(4, 'app_open', '0.000000', 0, 0, 'rgb(60, 80, 50)', 'RU', 'NOVOSIBIRSK', 'ios.111111.app-store', 'Here comes our game name'),
(5, 'app_info', '0.000000', 0, 1, 'rgb(57, 20, 127)', 'RU', 'NOVOSIBIRSK', 'ios.111111.app-store', 'Here comes our game name');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `here_comes_our_game_name_1476023564`
--
ALTER TABLE `here_comes_our_game_name_1476023564`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `here_comes_our_game_name_1476023641`
--
ALTER TABLE `here_comes_our_game_name_1476023641`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `here_comes_our_game_name_1476023663`
--
ALTER TABLE `here_comes_our_game_name_1476023663`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `here_comes_our_game_name_1476023960`
--
ALTER TABLE `here_comes_our_game_name_1476023960`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `here_comes_our_game_name_1476025680`
--
ALTER TABLE `here_comes_our_game_name_1476025680`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `here_comes_our_game_name_1476025693`
--
ALTER TABLE `here_comes_our_game_name_1476025693`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `here_comes_our_game_name_1476023564`
--
ALTER TABLE `here_comes_our_game_name_1476023564`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `here_comes_our_game_name_1476023641`
--
ALTER TABLE `here_comes_our_game_name_1476023641`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `here_comes_our_game_name_1476023663`
--
ALTER TABLE `here_comes_our_game_name_1476023663`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `here_comes_our_game_name_1476023960`
--
ALTER TABLE `here_comes_our_game_name_1476023960`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `here_comes_our_game_name_1476025680`
--
ALTER TABLE `here_comes_our_game_name_1476025680`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `here_comes_our_game_name_1476025693`
--
ALTER TABLE `here_comes_our_game_name_1476025693`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
