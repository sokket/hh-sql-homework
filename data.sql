INSERT INTO employer
VALUES (1, 'Massive Dynamic', 'http://example.com/', 1),
       (2, 'ИП Алексеев Алексей Алексеевич', 'http://example.com', 2),
       (3, 'Payment Systems', null, 1),
       (4, 'Simple Solutions', null, 2),
       (5, 'Consulting Service', null, 4),
       (6, 'BankName', null, 3),
       (7, 'ОАО Элара', null, 5),
       (8, 'Delivery', null, 5),
       (9, 'InfinityTech', null, 1),
       (10, 'Aperture Science Inc', null, 3),
       (11, 'ИП Васильев Артём Павлович', null, 4);

INSERT INTO resume(resume_id, resume_title, resume_description)
VALUES (1, 'Оператор ЭВМ', 'Могу работать с ЭВМ'),
       (2, 'Водитель', 'Категория Б'),
       (3, 'Доставщик еды', 'Описание'),
       (4, 'Software Engineer', '7 years of experience'),
       (5, 'Физик-теоретик', 'Квантовая телепортация'),
       (6, 'Электромонтажник', 'Описание'),
       (7, 'Электрик', '3-й разряд'),
       (8, 'Бухгалтер', 'Описание'),
       (9, 'Доставщик еды', 'Описание'),
       (10, 'Кладовщик', 'Описание'),
       (11, 'Менеджер по продажам', 'Описание'),
       (12, 'Оператор call центра', 'Описание'),
       (13, 'Юрист', 'Описание'),
       (14, 'Секретарь', 'Описание'),
       (15, 'Специалист по ИБ', 'Описание'),
       (16, 'DevOps', 'Описание'),
       (17, 'Сварщик', 'Описание');


INSERT INTO vacancy
VALUES (1, '2019-08-14 11:32:31', 1, 'Оператор ЭВМ', 20000, 30000, true),
       (2, '2019-09-14 12:20:32', 2, 'Водитель', 40000, 45000, false),
       (3, '2019-12-01 10:21:33', 8, 'Доставщик еды', null, null, null),
       (4, '2017-10-15 09:34:34', 4, 'Software Engineer', null, null, null),
       (5, '2019-09-16 08:43:35', 7, 'Электромонтажник', 35000, 42000, true),
       (6, '2019-05-13 07:24:36', 7, 'Электрик', 30000, 62000, false),
       (7, '2014-04-12 06:51:37', 5, 'Бухгалтер', 80000, 90000, true),
       (8, '2015-03-24 05:11:38', 10, 'Кладовщик', 15000, 25000, true),
       (9, '2016-11-29 04:12:39', 9, 'Менеджер по продажам', 90000, 120000, true),
       (10, '2017-02-23 03:13:40', 6, 'Оператор call центра', 25000, 35000, true),
       (11, '2020-01-09 02:14:41', 3, 'Юрист', 90000, 140000, true),
       (12, '2020-03-19 01:15:42', 10, 'Секретарь', null, null, null),
       (13, '2019-11-17 11:16:43', 11, 'Специалист по ИБ', 130000, 130000, true),
       (14, '2019-08-12 12:17:44', 8, 'DevOps', 180000, 240000, false),
       (15, '2020-12-14 13:18:45', 7, 'Сварщик', 50000, 70000, true),
       (16, '2018-06-14 14:19:46', 1, 'Исследователь квантовой механики', 30000, 100000, true);

INSERT INTO response
VALUES (1, 1, 1, '2019-08-17 11:00:33'),
       (2, 2, 2, '2019-10-12 09:21:01'),
       (3, 3, 3, '2019-12-05 11:21:33'),
       (4, 4, 4, '2017-10-16 10:01:11'),
       (5, 5, 16, '2018-09-23 15:11:46'),
       (6, 6, 5, '2019-10-12 08:01:38'),
       (7, 7, 6, '2019-08-22 09:33:21'),
       (8, 8, 7, '2014-05-01 07:31:43'),
       (9, 9, 3, '2019-12-16 13:32:39'),
       (10, 10, 8, '2015-03-26 06:21:48'),
       (11, 11, 9, '2016-12-12 05:13:29'),
       (12, 12, 10, '2017-03-24 04:11:10'),
       (13, 13, 11, '2020-02-10 03:16:41'),
       (14, 14, 12, '2020-04-21 02:16:42'),
       (15, 15, 13, '2019-11-19 11:15:43'),
       (16, 16, 14, '2019-09-01 13:17:44'),
       (17, 17, 15, '2020-12-15 19:11:35');

