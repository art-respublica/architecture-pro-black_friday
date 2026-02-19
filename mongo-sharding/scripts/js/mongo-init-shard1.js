rs.initiate({
  _id: "shard1ReplSet",
  members: [
    { _id: 0, host: "mongo-sharding-shard1:27017" }
  ]
});