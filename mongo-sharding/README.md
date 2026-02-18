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
