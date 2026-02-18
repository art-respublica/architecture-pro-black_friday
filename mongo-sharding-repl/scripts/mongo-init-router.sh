docker exec -it mongo-sharding-router mongosh --port 27017 --eval 'sh.addShard("shard1ReplSet/mongo-sharding-shard1:27017")'
docker exec -it mongo-sharding-router mongosh --port 27017 --eval 'sh.addShard("shard2ReplSet/mongo-sharding-shard2:27017")'

docker exec -it mongo-sharding-router mongosh --port 27017 --eval 'sh.enableSharding("somedb")'
docker exec -it mongo-sharding-router mongosh --port 27017 --eval 'sh.shardCollection("somedb.helloDoc", { "docId": "hashed" })'