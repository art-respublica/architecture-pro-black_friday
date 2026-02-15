sh.addShard("shard1ReplSet/mongo-sharding-shard1:27017");
sh.addShard("shard2ReplSet/mongo-sharding-shard2:27017");

sh.enableSharding("somedb");
sh.shardCollection("somedb.helloDoc", { "docId": "hashed" });