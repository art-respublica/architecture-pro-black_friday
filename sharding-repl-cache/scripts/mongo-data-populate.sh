docker compose exec -T mongo-router mongosh --port 27017 --quiet <<EOF
use somedb
for (let i = 1; i <= 1000; i++) {
  db.helloDoc.insertOne({age:i, name:"ly"+i});
}
db.helloDoc.countDocuments()
EOF