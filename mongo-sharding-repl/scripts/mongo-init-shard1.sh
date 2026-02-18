docker exec -it mongo-sharding-shard1 mongosh --port 27017 --eval '
rs.initiate({
  _id: "shard1ReplSet",
  members: [
    { _id: 0, host: "mongo-sharding-shard1:27017" }
  ]
})'