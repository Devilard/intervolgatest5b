-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Июн 23 2021 г., 21:27
-- Версия сервера: 8.0.25-0ubuntu0.20.04.1
-- Версия PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `intervolga`
--
CREATE DATABASE IF NOT EXISTS `intervolga` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `intervolga`;

-- --------------------------------------------------------

--
-- Структура таблицы `country`
--

CREATE TABLE `country` (
  `id` int NOT NULL,
  `country_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `country`
--

INSERT INTO `country` (`id`, `country_name`) VALUES
(1, 'Россия'),
(2, 'Украина'),
(4, 'Уганда'),
(8, 'Канада');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `country`
--
ALTER TABLE `country`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- База данных: `mvc_site`
--
CREATE DATABASE IF NOT EXISTS `mvc_site` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `mvc_site`;

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `short_content` text NOT NULL,
  `content` text NOT NULL,
  `image_path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `title`, `date`, `short_content`, `content`, `image_path`) VALUES
(1, 'Первая Новость', '2021-06-07', 'Текст первой новости. Тестовая запись', 'Текст первой новости. Тестовая запись', '/image/img.jpg');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- База данных: `testovayabd`
--
CREATE DATABASE IF NOT EXISTS `testovayabd` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `testovayabd`;

-- --------------------------------------------------------

--
-- Структура таблицы `a`
--

CREATE TABLE `a` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `age` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `a`
--

INSERT INTO `a` (`id`, `name`, `password`, `age`) VALUES
(1, 'Petya', 'qwerty123', 23),
(2, 'vasya', 'wewewe32', 43),
(3, 'angelina', 'gdg45', 65),
(4, 'evgenii', 'sdf43', 55);

-- --------------------------------------------------------

--
-- Структура таблицы `b`
--

CREATE TABLE `b` (
  `a_id` int NOT NULL,
  `id` int NOT NULL,
  `tovar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `b`
--

INSERT INTO `b` (`a_id`, `id`, `tovar`, `price`) VALUES
(2, 1, 'tishka', 230),
(1, 2, 'kediki', 500);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `a`
--
ALTER TABLE `a`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `b`
--
ALTER TABLE `b`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `a`
--
ALTER TABLE `a`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `b`
--
ALTER TABLE `b`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
