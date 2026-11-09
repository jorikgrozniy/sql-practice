# salesman_problem - задача коммивояжёра

Поиск оптимального маршрута по графу средствами рекурсивного SQL.

## Файлы

| Файл | Задание |
|---|---|
| `ex00.sql` | Таблица `city_tour`, данные графа и самый дешёвый маршрут из `a` |
| `ex01.sql` | Дополнительно самый дорогой маршрут |

`ex01` использует таблицу `city_tour`, созданную в `ex00`.

## Запуск

```bash
psql -d sql_practice -f salesman_problem/ex00.sql
psql -d sql_practice -f salesman_problem/ex01.sql
```
