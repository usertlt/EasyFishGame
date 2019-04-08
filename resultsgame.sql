-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 20 2018 г., 12:41
-- Версия сервера: 5.6.34-log
-- Версия PHP: 5.6.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `mygame`
--

-- --------------------------------------------------------

--
-- Структура таблицы `resultsgame`
--

CREATE TABLE `resultsgame` (
  `id` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `name` varchar(10) NOT NULL,
  `score` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `resultsgame`
--

INSERT INTO `resultsgame` (`id`, `number`, `name`, `score`) VALUES
(1, 1, 'валера', 9990),
(2, 2, 'коля', 8880),
(3, 3, 'аня', 8500),
(4, 4, 'ваний', 8300),
(5, 5, 'иннокентий', 8100),
(6, 6, 'евлампий', 7900),
(7, 7, 'ануфрий', 7600),
(8, 8, 'афдоний', 7400),
(9, 9, 'харитон', 7100),
(10, 10, 'антон', 210);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `resultsgame`
--
ALTER TABLE `resultsgame`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `resultsgame`
--
ALTER TABLE `resultsgame`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
