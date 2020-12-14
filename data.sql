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
VALUES (1, 1607362078, 1, 'Оператор ЭВМ', 20000, 30000, true),
       (2, 1607362088, 2, 'Водитель', 40000, 45000, false),
       (3, 1607362098, 8, 'Доставщик еды', null, null, null),
       (4, 1607362178, 4, 'Software Engineer', null, null, null),
       (5, 1607362278, 7, 'Электромонтажник', 35000, 42000, true),
       (6, 1607362378, 7, 'Электрик', 30000, 62000, false),
       (7, 1607362478, 5, 'Бухгалтер', 80000, 90000, true),
       (8, 1607362578, 10, 'Кладовщик', 15000, 25000, true),
       (9, 1607362678, 9, 'Менеджер по продажам', 90000, 120000, true),
       (10, 1607362778, 6, 'Оператор call центра', 25000, 35000, true),
       (11, 1607362878, 3, 'Юрист', 90000, 140000, true),
       (12, 1607362978, 10, 'Секретарь', null, null, null),
       (13, 1607363078, 11, 'Специалист по ИБ', 130000, 130000, true),
       (14, 1607364078, 8, 'DevOps', 180000, 240000, false),
       (15, 1607365078, 7, 'Сварщик', 50000, 70000, true),
       (16, 1607366078, 1, 'Исследователь квантовой механики', 30000, 100000, true);

INSERT INTO response
VALUES (1, 1, 1, 1607372178),
       (2, 2, 2, 1607372278),
       (3, 3, 3, 1607372378),
       (4, 4, 4, 1607372478),
       (5, 5, 16, 1607372578),
       (6, 6, 5, 1607372678),
       (7, 7, 6, 1607372778),
       (8, 8, 7, 1607372878),
       (9, 9, 3, 1607372978),
       (10, 10, 8, 1607373078),
       (11, 11, 9, 1607373178),
       (12, 12, 10, 1607373278),
       (13, 13, 11, 1607373378),
       (14, 14, 12, 1607373478),
       (15, 15, 13, 1607373578),
       (16, 16, 14, 1607373678),
       (17, 17, 15, 1607372078);

