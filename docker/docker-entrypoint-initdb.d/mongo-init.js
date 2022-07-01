db = db.getSiblingDB('TopicstoreDb');

db.createCollection('Topics');

db.Topics.insertMany([
    {_id: '5fa2ca6abe7a379ec4234884', Name: 'Contenedores'},
    {_id: '5fa2ca6abe7a379ec4234882', Name: 'Volumenes'},
    {_id: '5fa2ca6abe7a379ec4234883', Name: 'Kubernetes'},
]);