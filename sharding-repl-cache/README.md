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
