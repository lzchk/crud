-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 10 2023 г., 11:49
-- Версия сервера: 8.0.30
-- Версия PHP: 8.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `no_ozon`
--

-- --------------------------------------------------------

--
-- Структура таблицы `bank_card`
--

CREATE TABLE `bank_card` (
  `id` int NOT NULL,
  `id_user` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `number` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `bank_card`
--

INSERT INTO `bank_card` (`id`, `id_user`, `name`, `number`) VALUES
(1, 2, 'liza SBER', '64464646464646'),
(2, 3, 'lola home', '24523452525252525'),
(3, 2, 'карта Mашки', '234656');

-- --------------------------------------------------------

--
-- Структура таблицы `basket`
--

CREATE TABLE `basket` (
  `id` int NOT NULL,
  `id_user` int NOT NULL,
  `id_product` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `basket`
--

INSERT INTO `basket` (`id`, `id_user`, `id_product`) VALUES
(1, 2, 1),
(2, 2, 1),
(3, 2, 2),
(4, 2, 6);

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int NOT NULL,
  `id_parent` int DEFAULT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `id_parent`, `name`) VALUES
(1, NULL, 'Для женщин'),
(2, 1, 'Одежда'),
(3, NULL, 'Для мужчин\r\n'),
(4, 3, 'Одежда\r\n'),
(5, 3, 'брюки'),
(6, NULL, 'none'),
(7, 6, 'Для детей'),
(8, 1, 'Носки');

-- --------------------------------------------------------

--
-- Структура таблицы `city`
--

CREATE TABLE `city` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `city`
--

INSERT INTO `city` (`id`, `name`) VALUES
(1, 'Москва'),
(2, 'Омск'),
(3, 'Санкт-Петербург'),
(4, 'Орел'),
(5, 'Берлин');

-- --------------------------------------------------------

--
-- Структура таблицы `comment`
--

CREATE TABLE `comment` (
  `id` int NOT NULL,
  `id_user` int NOT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `rating` int NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL,
  `id_product` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `comment`
--

INSERT INTO `comment` (`id`, `id_user`, `text`, `rating`, `created_at`, `updated_at`, `id_product`) VALUES
(2, 2, 'nu tkoej', 2, '2023-01-23', '2023-01-26', 1),
(3, 2, 'miceee', 2, '2023-01-23', '2023-01-23', 1),
(4, 2, 'x v v', 2, '2023-01-23', '2023-01-23', 1),
(5, 2, 'lolololo\r\n\r\n', 2, '2023-01-26', '2023-01-26', 1),
(6, 4, 'LLlalalalal', 3, '2023-01-26', '2023-01-26', 2),
(7, 2, 'agage', 2, '2023-02-10', '2023-02-10', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `company`
--

CREATE TABLE `company` (
  `id` int NOT NULL,
  `id_user` int NOT NULL,
  `name` varchar(120) NOT NULL,
  `inn` int NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL,
  `created_by` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `company`
--

INSERT INTO `company` (`id`, `id_user`, `name`, `inn`, `avatar`, `created_at`, `updated_at`, `created_by`) VALUES
(1, 2, 'MaskaProduction', 123, '234', '2023-01-05', '2023-01-31', 3),
(2, 2, 'secondChance', 54546, '45', '2023-01-23', '2023-01-23', 4),
(3, 2, 'ИП Черника', 222, '111', '2023-02-10', '2023-02-10', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `delivery_address`
--

CREATE TABLE `delivery_address` (
  `id` int NOT NULL,
  `id_user` int NOT NULL,
  `name` varchar(100) NOT NULL COMMENT '"работа", "дом"',
  `id_city` int NOT NULL,
  `street` varchar(100) NOT NULL,
  `house_number` varchar(10) NOT NULL COMMENT 'может быть литера или корпус',
  `flat_number` int NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `delivery_address`
--

INSERT INTO `delivery_address` (`id`, `id_user`, `name`, `id_city`, `street`, `house_number`, `flat_number`, `comment`) VALUES
(1, 2, 'house ', 1, 'ааа', '34', 23, 'be loud'),
(2, 2, 'дом', 3, 'тфтфт', '34', 34, 'не звонить'),
(3, 2, 'Дом', 1, 'Фарфоровская', '28', 4, 'o\r\n');

-- --------------------------------------------------------

--
-- Структура таблицы `img_product`
--

CREATE TABLE `img_product` (
  `id` int NOT NULL,
  `path` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `id_product` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `img_product`
--

INSERT INTO `img_product` (`id`, `path`, `name`, `id_product`) VALUES
(2, '/spoon.jpg', 'silerKitchen', 1),
(4, '/lampa.jpg\r\n', 'lampa', 5),
(5, '/stul.webp', 'aastul', 2),
(6, 'path.img', 'path', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `like`
--

CREATE TABLE `like` (
  `id` int NOT NULL,
  `id_product` int NOT NULL,
  `id_user` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `like`
--

INSERT INTO `like` (`id`, `id_product`, `id_user`) VALUES
(1, 1, 2),
(2, 5, 6),
(3, 2, 5);

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

CREATE TABLE `product` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `sale_price` varchar(100) NOT NULL,
  `sale_flag` tinyint(1) NOT NULL COMMENT 'флаг - является ли товар акционным',
  `description` text NOT NULL,
  `characteristic` text NOT NULL,
  `id_company` int NOT NULL,
  `rating` int NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL,
  `created_by` int NOT NULL,
  `price` varchar(50) NOT NULL,
  `id_category` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`id`, `name`, `sale_price`, `sale_flag`, `description`, `characteristic`, `id_company`, `rating`, `created_at`, `updated_at`, `created_by`, `price`, `id_category`) VALUES
(1, 'Ложка серебряная \"Ангел-Хранитель\"', '3 850 ', 1, 'Фабрика серебра \"АргентА\" создала коллекцию серебряных ложек с православными образами, которые станут Вашими постоянными спутниками, защитниками и помощниками. Фабрика серебра \"АргентА\" создала коллекцию серебряных ложек с православными образами, которые станут Вашими постоянными спутниками, защитниками и помощниками. ', 'Страна производства	Россия\r\nТНВЭД	7114110000\r\nВысота упаковки	18 см', 1, 4, '2023-01-05', '2023-01-31', 3, '2500', 1),
(2, 'Стулья для кухни ', '7400', 1, 'Стулья для кухни со спинкой 4 шт обеденные интерьерные.ИДЕАЛЬНО В ПОДАРОК - маме, папе, любимому, коллеге, любимой. Скидка до конца недели. Успейте купить по акции! Комплект из 4 штук со спинкой на деревянных ножках. Стулья для кухни Eames DSW Premium из высококачественного, практичного и легкого в уходе пластика.', 'Ширина упаковки	40 см\r\nНагрузка максимальная	120 кг\r\nГлубина предмета	44.5 см\r\nСтиль дизайна	Лофт; Современный\r\nКомната назначения	кухня; столовая; гостиная\r\nСкладной	нет', 2, 5, '2023-01-23', '2023-01-23', 2, '5300', 4),
(5, 'Семь огней', '6000', 1, 'ПРЕИМУЩЕСТВА: Люстра потолочная светодиодная предназначена для основного освещения помещений. Люстра изготовлена из высококачественных материалов и является безопасной для человека, животных. Источник света - светодиодная лента. Крепление - накладным способом с помощью шурупов. Удобный крепеж подойдет под все виды потолков: бетон, гипсокартон, натяжные и деревянные потолки. ', 'Степень пылевлагозащиты	IP20\r\nГарантийный срок	1 год\r\nМодель	люстра потолочная для гостиной; люстра потолочная для спальни; люстра потолочная для прихожей', 1, 3, '2023-01-23', '2023-01-23', 2, '7597', 7),
(6, 'тарелка', '123', 0, 'хорош', 'вш ш', 1, 1, '2023-01-26', '2023-01-26', 2, '123', 5),
(7, 'Комплект головной убор + аксессуар', '600', 0, 'etuyhe', 'eu5e', 1, 5, '2011-11-11', '2023-02-10', 12, '1000', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `purchase`
--

CREATE TABLE `purchase` (
  `id` int NOT NULL,
  `delivery_method` enum('Самовывоз','Доставка курьером') NOT NULL,
  `full_price` varchar(10) NOT NULL,
  `id_delivery` int NOT NULL,
  `id_card` int NOT NULL,
  `created_at` date NOT NULL,
  `full_sale` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `purchase`
--

INSERT INTO `purchase` (`id`, `delivery_method`, `full_price`, `id_delivery`, `id_card`, `created_at`, `full_sale`) VALUES
(1, 'Самовывоз', '234', 1, 2, '2023-01-05', '0'),
(2, 'Самовывоз', '66', 1, 1, '2023-01-23', '0'),
(3, 'Самовывоз', '33', 1, 1, '2023-01-23', '-'),
(4, 'Доставка курьером', '3', 1, 1, '2023-01-23', '3'),
(5, 'Самовывоз', '5600', 1, 1, '2023-02-10', '1200');

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `email` varchar(120) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `login` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `id_city` int NOT NULL COMMENT 'потому что самое длинное название города в мире - 168 символов',
  `date_of_birth` date NOT NULL,
  `sex` enum('муж','жен','не укажу') NOT NULL,
  `avatar` varchar(300) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `currency` set('rub','euro','usd') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '' COMMENT 'валюта',
  `role` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `phone`, `login`, `password`, `id_city`, `date_of_birth`, `sex`, `avatar`, `currency`, `role`) VALUES
(2, 'Елизавета Коротина Евгеньевна', 'crottop@mail.ru', '79119921426', 'crottop', '123', 1, '2003-01-17', 'жен', 'avatarLiza', 'rub', 'admin'),
(3, 'Савенкова Мария Михайловна', 'lola@mail.ru', '89110885623', '12345', '2345', 3, '2023-01-04', 'жен', 'fffff', 'rub', 'admin'),
(4, 'Аль Хай Там', 'aliaha@mail.ru', '123', '123', '123', 1, '2012-12-12', 'жен', '12', 'rub', '1'),
(5, 'Аль Хай Тамww', '123', '+7 (323) 333 33 __', '333', '333', 1, '2023-01-22', 'жен', '222', 'euro', '1'),
(6, 'лемур', 'm@m.ru', '+7 (765) 555 55 55', 'lola', 'lola', 1, '2023-01-07', 'муж', '3', 'rub', '1'),
(7, 'лемур', 'md@m.ru', '+7 (765) 555 55 55', 'lolaa', 'lola', 1, '2023-01-07', 'муж', '3', 'rub', '1'),
(8, 'чсмп', 'mddsd@m.ru', '+7 (345) 678 98 76', 'lolasss', '234', 2, '2023-01-28', 'муж', '3', 'rub', '0'),
(9, 'чсмпир', 'mddd@m.ru', '+7 (654) 567 76 54', 'sdf', '345', 1, '2023-03-05', 'муж', 'sdfg', 'rub', '2'),
(10, 'чсм', 'mdkjh@m.ru', '+7 (765) 678 90 0_', 'admin', 'admin', 1, '2023-01-14', 'жен', '22', 'rub', '1'),
(11, 'Сова Александровнна', 'mdddds@m.ru', '+7 (325) 673 33 34', 'lolamoon', 'lol', 2, '2023-02-05', 'муж', 'ddd', 'rub', '0'),
(12, 'Мамин-Сибиряк', 'maminffff@gmail.ru', '+7 (993) 924 92 49', 'maminsibfff', 'maminsibfff', 1, '2022-12-31', 'муж', '', 'rub', '0');

-- --------------------------------------------------------

--
-- Структура таблицы `zakaz_items`
--

CREATE TABLE `zakaz_items` (
  `id` int NOT NULL,
  `id_purchase` int NOT NULL,
  `id_product` int NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `count` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `zakaz_items`
--

INSERT INTO `zakaz_items` (`id`, `id_purchase`, `id_product`, `price`, `count`) VALUES
(1, 4, 1, '444', 3);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `bank_card`
--
ALTER TABLE `bank_card`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`);

--
-- Индексы таблицы `basket`
--
ALTER TABLE `basket`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_product` (`id_product`),
  ADD KEY `id_user` (`id_user`);

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_product` (`id_product`);

--
-- Индексы таблицы `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `id_user` (`id_user`);

--
-- Индексы таблицы `delivery_address`
--
ALTER TABLE `delivery_address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`);

--
-- Индексы таблицы `img_product`
--
ALTER TABLE `img_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_product` (`id_product`);

--
-- Индексы таблицы `like`
--
ALTER TABLE `like`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_product` (`id_product`);

--
-- Индексы таблицы `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_category` (`id_category`),
  ADD KEY `id_company` (`id_company`),
  ADD KEY `created_by` (`created_by`);

--
-- Индексы таблицы `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_card` (`id_card`),
  ADD KEY `id_delivery` (`id_delivery`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_city` (`id_city`);

--
-- Индексы таблицы `zakaz_items`
--
ALTER TABLE `zakaz_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_product` (`id_product`),
  ADD KEY `id_purchase` (`id_purchase`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `bank_card`
--
ALTER TABLE `bank_card`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `basket`
--
ALTER TABLE `basket`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `city`
--
ALTER TABLE `city`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `company`
--
ALTER TABLE `company`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `delivery_address`
--
ALTER TABLE `delivery_address`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `img_product`
--
ALTER TABLE `img_product`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `like`
--
ALTER TABLE `like`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `product`
--
ALTER TABLE `product`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `purchase`
--
ALTER TABLE `purchase`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `zakaz_items`
--
ALTER TABLE `zakaz_items`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `bank_card`
--
ALTER TABLE `bank_card`
  ADD CONSTRAINT `bank_card_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `basket`
--
ALTER TABLE `basket`
  ADD CONSTRAINT `basket_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `product` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `basket_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`id_product`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `company`
--
ALTER TABLE `company`
  ADD CONSTRAINT `company_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `company_ibfk_3` FOREIGN KEY (`created_by`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `delivery_address`
--
ALTER TABLE `delivery_address`
  ADD CONSTRAINT `delivery_address_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `img_product`
--
ALTER TABLE `img_product`
  ADD CONSTRAINT `img_product_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `product` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `like`
--
ALTER TABLE `like`
  ADD CONSTRAINT `like_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `like_ibfk_2` FOREIGN KEY (`id_product`) REFERENCES `product` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `category` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`id_company`) REFERENCES `company` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `product_ibfk_3` FOREIGN KEY (`created_by`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `purchase`
--
ALTER TABLE `purchase`
  ADD CONSTRAINT `purchase_ibfk_3` FOREIGN KEY (`id_card`) REFERENCES `bank_card` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `purchase_ibfk_4` FOREIGN KEY (`id_delivery`) REFERENCES `delivery_address` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`id_city`) REFERENCES `city` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `zakaz_items`
--
ALTER TABLE `zakaz_items`
  ADD CONSTRAINT `zakaz_items_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `product` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `zakaz_items_ibfk_2` FOREIGN KEY (`id_purchase`) REFERENCES `purchase` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
