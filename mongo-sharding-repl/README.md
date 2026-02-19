# Задания 3: Репликация / mongo-sharding-repl

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
