docker exec -it mongo-sharding-shard2-1 mongosh --port 27017 --eval '
rs.initiate({
  _id: "shard2ReplSet",
  members: [
    { _id: 0, host: "mongo-sharding-shard2-1:27017" },
    { _id: 1, host: "mongo-sharding-shard2-2:27017" },
    { _id: 2, host: "mongo-sharding-shard2-3:27017" }
  ]
})'