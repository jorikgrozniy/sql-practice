# integrating_features - согласованность данных

Проектирование новой сущности, ограничения целостности, индексы и автоматическая генерация первичного ключа.

## Файлы

| Файл | Задание |
|---|---|
| `ex00.sql` | Таблица `person_discounts` с PK и FK |
| `ex01.sql` | Заполнение скидок через `INSERT ... SELECT`, `ROW_NUMBER`, `CASE` |
| `ex02.sql` | Расчёт цены со скидкой |
| `ex03.sql` | Уникальный составной индекс и `EXPLAIN ANALYZE` |
| `ex04.sql` | `CHECK`-ограничения и значение по умолчанию |
| `ex05.sql` | Комментарии к таблице и столбцам |
| `ex06.sql` | `SEQUENCE` и `DEFAULT nextval(...)` для `id` |

Файлы выполняются по порядку: `ex01`-`ex06` зависят от таблицы, созданной в `ex00`.

## Запуск

```bash
psql -d sql_practice -f integrating_features/model.sql
psql -d sql_practice -f integrating_features/ex00.sql
```
