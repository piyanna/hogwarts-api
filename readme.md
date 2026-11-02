**Routes:** Indeholder vores endpoints.
**Controllers:** Håndterer requests, responses og statuskoder.
**Repositories:** Oversætter til SQL og sender til databasen.

- Alle endpoints -

Houses:

GET /houses  
GET /houses/:id

Teachers:

GET /teachers  
GET /teachers/:id  
POST /teachers  
PUT /teachers/:id  
DELETE /teachers/:id

Students:

GET /students  
GET /students/:id  
POST /students  
PUT /students/:id  
DELETE /students/:id

Courses:

GET /courses  
GET /courses/:id  
POST /courses  
PUT /courses/:id  
DELETE /courses/:id  
PUT /courses/:id/teacher  
GET /courses/:id/students  
POST /courses/:id/students/:studentId  
DELETE /courses/:id/students/:studentId
