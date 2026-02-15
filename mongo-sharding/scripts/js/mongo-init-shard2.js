rs.initiate({
  _id: "shard2ReplSet",
  members: [
    { _id: 0, host: "mongo-sharding-shard2:27017" }
  ]
});