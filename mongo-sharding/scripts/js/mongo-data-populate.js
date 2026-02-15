use somedb;

let documentsToInsert = [];
for (let i = 1; i <= 1000; i++) {
  documentsToInsert.push({
    docId: i,
    name: "ly" + i,
    data: "This is document number " + i,
    timestamp: new Date()
  });
}

db.helloDoc.insertMany(documentsToInsert);
