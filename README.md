# pymongo-api

## Как запустить

Запускаем mongodb и приложение

```shell
docker compose up -d
```

Заполняем mongodb данными

```shell
./scripts/mongo-init.sh
```

## Как проверить

### Если вы запускаете проект на локальной машине

Откройте в браузере http://localhost:8080

### Если вы запускаете проект на предоставленной виртуальной машине

Узнать белый ip виртуальной машины

```shell
curl --silent http://ifconfig.me
```

Откройте в браузере http://<ip виртуальной машины>:8080

## Доступные эндпоинты

Список доступных эндпоинтов, swagger http://<ip виртуальной машины>:8080/docs

# Задание 1: Планирование

Диаграммы расположены в папке /diagrams

[Первый вариант схемы](/diagrams/task1_variant_1.drawio)
[Второй вариант схемы](/diagrams/task1_variant_2.drawio)
[Третий вариант схемы](/diagrams/task1_variant_3.drawio)

# Задание 2: Шардирование / mongo-sharding

Папка задания /mongo-sharding
```shell
cd /mongo-sharding
```

Запуск mongodb и приложения
```shell
docker compose up -d
```

Запуск скриптов инициализации в приведенном порядке
```shell
./scripts/mongo-init-config.sh
./scripts/mongo-init-shard1.sh
./scripts/mongo-init-shard2.sh
./scripts/mongo-init-router.sh
```

Заполнение mongodb данными
```shell
./scripts/mongo-data-populate.sh
```

Подтверждения выполнения

[Открытия приложения в браузере](/mongo-sharding/pictures/running_app.png)
[Распределение документов по шардам](/mongo-sharding/pictures/db_printShardingStatus.png)


# Задание 3: Репликация / mongo-sharding-repl

Папка задания /mongo-sharding-repl
```shell
cd /mongo-sharding-repl
```

Запуск mongodb и приложения
```shell
docker compose up -d
```

Запуск скриптов инициализации в приведенном порядке
```shell
./scripts/mongo-init-config.sh
./scripts/mongo-init-shard1.sh
./scripts/mongo-init-shard2.sh
./scripts/mongo-init-router.sh
```

Заполнение mongodb данными
```shell
./scripts/mongo-data-populate.sh
```

Подтверждения выполнения

[Открытия приложения в браузере](/mongo-sharding-repl/pictures/running_app.png)
[Распределение документов по шардам](/mongo-sharding-repl/pictures/db_sharedDataDistribution.png)
[Распределение документов по шардам, базы данных](/mongo-sharding-repl/pictures/db_printShardingStatus_databases.png)


# Задание 4: Кеширование / sharding-repl-cache

Папка задания /sharding-repl-cache
```shell
cd /sharding-repl-cache
```

Запуск mongodb и приложения
```shell
docker compose up -d
```

Запуск скриптов инициализации в приведенном порядке
```shell
./scripts/mongo-init-config.sh
./scripts/mongo-init-shard1.sh
./scripts/mongo-init-shard2.sh
./scripts/mongo-init-router.sh
```

Заполнение mongodb данными
```shell
./scripts/mongo-data-populate.sh
```

Подтверждения выполнения

[Открытия приложения в браузере](/sharding-repl-cache/pictures/running_app.png)
[Распределение документов по шардам](/sharding-repl-cache/pictures/db_sharedDataDistribution.png)
[Информация о коллекциях в mongodb](/sharding-repl-cache/pictures/db_showCollectionInfos.png)
[Открытие страницы /users в первый раз](/sharding-repl-cache/pictures/running_users.png)
[Открытие страницы /users во второй раз](/sharding-repl-cache/pictures/running_users_cache.png)


# Задание 5: Service Discovery и балансировка с API Gateway

[Четвертый вариант схемы](/diagrams/task1_variant_4.drawio)


# Задание 6: CDN

[Пятый вариант схемы](/diagrams/task1_variant_5.drawio)


# Задание 7. Проектирование схем коллекций для шардирования данных

Документы ADR расположены в папке /arch_decision_records

[Архитектурный документ с описанием, схемами коллекций и примерами команд MongoDB](/arch_decision_records/ADR_Проектирование_коллекций.md)


# Задание 8. Выявление и устранение «горячих» шардов

[Архитектурный документ с описанием метрик отслеживания состояния шардов и механизами перераспределения](/arch_decision_records/ADR_Мониторинг_Устранение_Горячих_Шардов.md)


# Задание 9. Настройка чтения с реплик и консистентность

[Архитектурный документ с описанием метрик отслеживания состояния шардов и механизами перераспределения](/arch_decision_records/ADR_Настройка_чтения_с_реплик_Консистентность.md)
