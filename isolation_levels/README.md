# isolation_levels - транзакции и уровни изоляции

Воспроизведение аномалий конкурентного доступа и управление видимостью изменений в PostgreSQL.

## Файлы

| Файл | Сценарий |
|---|---|
| `ex00/ex00.sql` | Видимость изменений до и после `COMMIT` |
| `ex01/ex01.sql` | Lost update на `READ COMMITTED` |
| `ex02/ex02.sql` | Lost update на `REPEATABLE READ` |
| `ex03/ex03.sql` | Non-repeatable read на `READ COMMITTED` |
| `ex04/ex04.sql` | Non-repeatable read на `SERIALIZABLE` |
| `ex05/ex05.sql` | Phantom read на `READ COMMITTED` |
| `ex06/ex06.sql` | Phantom read на `REPEATABLE READ` |
| `ex07/ex07.sql` | Взаимоблокировка (deadlock) |

Каждый `exNN.sql` - это чередующаяся последовательность команд для двух сессий, а не одиночный скрипт. Выполняйте её в двух окнах `psql`, ориентируясь на комментарии `-- session 1` и `-- session 2`. В каждой директории также лежат скриншоты `session1.png` и `session2.png`.

## Запуск

```bash
psql -d sql_practice -f isolation_levels/model.sql
psql -d sql_practice   # сессия 1
psql -d sql_practice   # сессия 2
```
