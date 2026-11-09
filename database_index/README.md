# database_index - индексы и планы выполнения

Создание индексов под конкретные запросы и проверка их использования через `EXPLAIN ANALYZE`.

## Файлы

| Файл | Задание |
|---|---|
| `ex00.sql` | B-Tree-индексы для всех внешних ключей |
| `ex01.sql` | Проверка `Index Scan` через `EXPLAIN ANALYZE` |
| `ex02.sql` | Функциональный индекс по `UPPER(name)` |
| `ex03.sql` | Составной индекс и `Index Only Scan` |
| `ex04.sql` | Уникальный индекс по `(pizzeria_id, pizza_name)` |
| `ex05.sql` | Частичный уникальный индекс по дате |
| `ex06.sql` | Covering-индекс для запроса с оконной функцией |

## Запуск

```bash
psql -d sql_practice -f database_index/model.sql
psql -d sql_practice -f database_index/ex00.sql
```

Файлы выполняются по порядку: часть запросов проверяет индексы, созданные в предыдущих заданиях.
