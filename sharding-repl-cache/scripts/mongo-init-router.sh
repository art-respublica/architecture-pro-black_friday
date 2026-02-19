docker exec -it mongo-sharding-router mongosh --port 27017 --eval '
sh.addShard("shard1ReplSet/mongo-sharding-shard1-1:27017,mongo-sharding-shard1-2:27017,mongo-sharding-shard1-3:27017")'
docker exec -it mongo-sharding-router mongosh --port 27017 --eval '
sh.addShard("shard2ReplSet/mongo-sharding-shard2-1:27017,mongo-sharding-shard2-2:27017,mongo-sharding-shard2-3:27017")'

docker exec -it mongo-sharding-router mongosh --port 27017 --eval 'sh.enableSharding("somedb")'
docker exec -it mongo-sharding-router mongosh --port 27017 --eval '
sh.shardCollection("somedb.helloDoc", { "docId": "hashed" })'