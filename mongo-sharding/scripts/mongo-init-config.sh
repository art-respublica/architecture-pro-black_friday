docker exec -it mongo-sharding-config mongosh --port 27017 --eval '
rs.initiate({
  _id: "configReplSet",
  configsvr: true,
  members: [
    { _id: 0, host: "mongo-sharding-config:27017" }
  ]
})'