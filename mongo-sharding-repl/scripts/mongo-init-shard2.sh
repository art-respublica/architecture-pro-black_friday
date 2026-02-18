docker exec -it mongo-sharding-shard2 mongosh --port 27017 --eval '
rs.initiate({
  _id: "shard2ReplSet",
  members: [
    { _id: 0, host: "mongo-sharding-shard2:27017" }
  ]
})'