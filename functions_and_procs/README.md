# functions_and_procs - PL/pgSQL и триггеры

Аудит изменений через триггеры и пользовательские функции на SQL и PL/pgSQL.

## Файлы

| Файл | Задание |
|---|---|
| `ex00.sql` | Таблица `person_audit` и триггер на `INSERT` |
| `ex01.sql` | Триггер на `UPDATE` с сохранением `OLD` |
| `ex02.sql` | Триггер на `DELETE` |
| `ex03.sql` | Общий триггер для `INSERT`/`UPDATE`/`DELETE`, удаление старых триггеров |
| `ex04.sql` | SQL-функции, возвращающие таблицу |
| `ex05.sql` | Параметризованная SQL-функция |
| `ex06.sql` | PL/pgSQL-функция с параметрами по умолчанию |
| `ex07.sql` | Минимум массива через `VARIADIC` и `unnest` |
| `ex08.sql` | Числа Фибоначчи в PL/pgSQL |

`ex00`-`ex03` выполняются по порядку: `ex03` удаляет триггеры и функции, созданные в предыдущих заданиях.

## Запуск

```bash
psql -d sql_practice -f functions_and_procs/model.sql
psql -d sql_practice -f functions_and_procs/ex00.sql
```
