# Test assignment


* Ruby version: 2.5.1, rails version: 5.2.2

* Configuration: rails json api with jquery, sass and plugins on frontend

* Database: sqlite3 on dev, postgres on prod

* Tasks 1 and 2 are in root directory as: node.rb and flat_array1.rb

* curl POST example: 
 curl -d '{"message":{"first_name":"User","last_name":"Example","email":"user@example.com","amount":1000}}' -H "Content-Type: application/json"  -X POST http://localhost:3000/api/v1/messages/
 curl -H "Content-Type: application/json" http://localhost:3000/api/v1/report?last_name=Lastname
* urls: 
/api/v1/messages 
/api/v1/report?last_name=Lastname