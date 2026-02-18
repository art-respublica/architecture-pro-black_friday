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

# Задания 2: Шардирование / mongo-sharding

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
