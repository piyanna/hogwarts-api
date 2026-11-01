Houses:

**GET /houses**  
Hent alle huse fra databasen.  
Send husene tilbage som JSON.

**GET /houses/:id**  
Find et hus ud fra dets ID.  
Hvis huset findes, send det tilbage.  
Ellers send 404.

Teachers:

**GET /teachers**  
Hent alle lærere fra databasen.

**GET /teachers/:id**  
Find en lærer ud fra ID.  
Hvis læreren ikke findes, send 404.

**POST /teachers**  
Modtag oplysninger om en ny lærer.  
Gem læreren i databasen.  
Send den nye lærer tilbage.

**PUT /teachers/:id**  
Find læreren ud fra ID.  
Opdater lærerens oplysninger.  
Send den opdaterede lærer tilbage.

**DELETE /teachers/:id**  
Find læreren ud fra ID.  
Slet læreren fra databasen.

Students:

**GET /students**  
Hent alle elever fra databasen.

**GET /students/:id**  
Find en elev ud fra ID.  
Hvis eleven ikke findes, send 404.

**POST /students**  
Modtag oplysninger om en ny elev.  
Gem eleven i databasen.

**PUT /students/:id**  
Find eleven ud fra ID.  
Opdater elevens oplysninger.

**DELETE /students/:id**  
Find eleven ud fra ID.  
Slet eleven fra databasen.

Courses:

**GET /courses**  
Hent alle kurser fra databasen.

**GET /courses/:id**  
Find et kursus ud fra ID.  
Hvis kurset ikke findes, send 404.

**POST /courses**  
Modtag oplysninger om et nyt kursus.  
Gem kurset i databasen.

**PUT /courses/:id**  
Find kurset ud fra ID.  
Opdater kursets oplysninger.

**DELETE /courses/:id**  
Find kurset ud fra ID.  
Slet kurset og dets elevtilmeldinger.

**PUT /courses/:id/teacher**  
Find kurset ud fra ID.  
Skift kursets lærer.

**GET /courses/:id/students**  
Find alle elever, der er tilmeldt kurset.  
Send eleverne tilbage som JSON.

**POST /courses/:id/students/:studentId**  
Find kurset og eleven ud fra deres ID'er.  
Tilmeld eleven til kurset.

**DELETE /courses/:id/students/:studentId**  
Find elevens tilmelding til kurset.  
Fjern tilmeldingen fra databasen.

Fejlkoder:

Hvis et ID er ugyldigt, send 400.  
Hvis noget ikke findes, send 404.  
Hvis der sker en databasefejl, send 500.
