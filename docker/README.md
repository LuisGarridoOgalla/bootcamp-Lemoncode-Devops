<sup> Ejercicio 1 </sup>

**DOCKERIZAR BBDD**

* network create lemoncode-challenge
  

* docker run --name some-mongo --network lemoncode-challenge -v mongodb:/data/db -p 27017:27017 -d mongo
  

* docker exec -it some-mongo sh
  

* mongo
  

* use TopicstoreDb 
  

* db.Topics.insertMany([
       {_id: '5fa2ca6abe7a379ec4234884', Name: 'Contenedores'},
       {_id: '5fa2ca6abe7a379ec4234882', Name: 'Volumenes'},
       {_id: '5fa2ca6abe7a379ec4234883', Name: 'Kubernetes'},
  ])

**Revisar base de datos**

* show collections

* db.Topics.find().pretty()

* exit 

* exit

**DOCKERIZAR BACK**

* docker build .\backend -t backend:latest

* docker run --rm -d --name topics-api --network lemoncode-challenge -p 5000:5000 backend:latest 

****DOCKERIZAR FRONT****

* docker build .\frontend\ -t frontend:latest

* docker run --rm -d --name frontend --network lemoncode-challenge  -p 8080:8080 frontend:latest 
  
  

Ejercicio 2

* docker compose up 

* docker compose stop

* docker compose down

* docker volume prune
