docker exec -it mongo-sharding-shard1-1 mongosh --port 27017 --eval '
rs.initiate({
  _id: "shard1ReplSet",
  members: [
    { _id: 0, host: "mongo-sharding-shard1-1:27017" },
    { _id: 1, host: "mongo-sharding-shard1-2:27017" },
    { _id: 2, host: "mongo-sharding-shard1-3:27017" }
  ]
})'