# SQL Practice - PostgreSQL

Учебные проекты по PostgreSQL: от базовых выборок до индексов, транзакций, PL/pgSQL и аналитики. Каждый проект изолирован в своей директории и содержит решения (`exNN.sql`); в большинстве проектов есть `model.sql` с моделью данных.

## Проекты

| Проект | Тема |
|---|---|
| [`basics`](basics/) | Базовые запросы |
| [`retrieving_data1`](retrieving_data1/) | Множества и JOIN |
| [`retrieving_data2`](retrieving_data2/) | JOIN и пропуски в данных |
| [`DML`](DML/) | Изменение данных |
| [`database_index`](database_index/) | Индексы и планы выполнения |
| [`integrating_features`](integrating_features/) | Ограничения и целостность |
| [`OLAP`](OLAP/) | Аналитические запросы |
| [`isolation_levels`](isolation_levels/) | Транзакции и уровни изоляции |
| [`functions_and_procs`](functions_and_procs/) | PL/pgSQL и триггеры |
| [`salesman_problem`](salesman_problem/) | Рекурсивные запросы |
| [`warehouse_fundamentals`](warehouse_fundamentals/) | DWH и конвертация валют |

## Структура

```
<project>/
├── README.md
├── model.sql      # схема и тестовые данные (в большинстве проектов)
├── ex00.sql       # решение задания 00
└── exNN.sql
```

Большинство проектов используют общую схему пиццерии. Исключения: `warehouse_fundamentals` (своя схема) и `salesman_problem` (нет `model.sql`).

## Запуск

```bash
createdb sql_practice
psql -d sql_practice -f basics/model.sql
psql -d sql_practice -f basics/ex00.sql
```

- Файлы в проектах с DML/DDL/триггерами выполняйте по порядку: более поздние решения зависят от предыдущих.
- `isolation_levels/exNN/exNN.sql` - сценарии для двух сессий. Выполняйте их вручную в двух `psql`, следуя комментариям `-- session 1` / `-- session 2`.
- Для сброса состояния пересоздайте базу и заново примените `model.sql`.
- Проверка запросов - вручную через `psql`.
