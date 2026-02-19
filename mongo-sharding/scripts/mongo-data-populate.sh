docker compose exec -T mongo-router mongosh --port 27017 --quiet <<EOF
use somedb
for (let i = 1; i <= 1000; i++) {
  db.helloDoc.insertOne({
    docId: i,
    name: "ly" + i,
    context: "This is document number " + i,
    timestamp: new Date()
  });
}
db.helloDoc.countDocuments()
EOF