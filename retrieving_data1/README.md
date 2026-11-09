# retrieving_data1 - множества и JOIN

Объединение данных из нескольких таблиц через операции над множествами и соединения.

## Файлы

| Файл | Задание |
|---|---|
| `ex00.sql` | `UNION` людей и пицц в общий список |
| `ex01.sql` | `UNION ALL` с сохранением дубликатов и сортировкой |
| `ex02.sql` | Уникальные названия пицц через `INTERSECT` |
| `ex03.sql` | Пересечение дат заказов и визитов |
| `ex04.sql` | `EXCEPT ALL` для разницы за 7 января 2022 |
| `ex05.sql` | Декартово произведение `person` × `pizzeria` |
| `ex06.sql` | `JOIN` + `INTERSECT` с именами людей |
| `ex07.sql` | `JOIN` и конкатенация имени с возрастом |
| `ex08.sql` | Переписывание `JOIN` на `NATURAL JOIN` |
| `ex09.sql` | Пиццерии без посещений: `IN` и `EXISTS` |
| `ex10.sql` | `JOIN` четырёх таблиц: человек, пицца, пиццерия |

## Запуск

```bash
psql -d sql_practice -f retrieving_data1/model.sql
psql -d sql_practice -f retrieving_data1/ex00.sql
```
