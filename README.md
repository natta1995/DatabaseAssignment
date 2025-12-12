# DatabaseAssignment

📘 Individuell Uppgift – SQL och Databasdesign (CRUD, JOINs, Modellering, LINQ)

Nu är det dags att visa att ni behärskar grunderna i relationsdatabaser och SQL. Den här individuella uppgiften binder ihop allt vi har jobbat med under kursen: datamodellering, tabellskapande, CRUD, JOINs, databasutveckling i Git och hur SQL motsvaras i LINQ.

Era lösningar ska vara strukturerade, logiska och professionella – precis som i ett riktigt backend-projekt.

🎯 Uppgiftens mål
Du ska, på egen hand:
Designa och skapa en relationsdatabas
Implementera CRUD-kommandon och rena SQL-querys
Arbeta med JOINs för att kombinera data mellan tabeller
Jämföra SQL och LINQ genom att skriva båda versionerna
Reflektera över säkerhet, struktur och versionshantering i databasutveckling
Lämna in ett välstrukturerat GitHub-repo med flera separata SQL-filer

📌 Scenario (välj ett)

Du väljer ett av följande teman och bygger hela databasen kring det:
Musikbibliotek (Artist, Album, Tracks)
Socialt flöde (Users, Posts, Likes)
Hogwarts kursplanering (Students, Courses, Enrollment)
Game Store (Games, Sales)
Egen idé (måste godkännas av mig innan du börjar)

Oavsett tema ska du arbeta med minst tre tabeller och använda relationer.

📐 1. Datamodell (obligatoriskt)
Du ska ta fram:
Ett ER-diagram (enkelt, men korrekt)
Förklaring av dina tabeller
Beskrivning av relationerna (1-n eller n-n)
Motivering av datatyper och constraints

Detta kopplar direkt till kursplanens moment databasteori, datatyper, relationer och modellering.

🧱 2. Skapa databasen (CREATE)
I filen create_tables.sql ska du:
Skapa minst tre tabeller
Definiera PRIMARY KEY
Definiera FOREIGN KEY
Ange rimliga datatyper
Göra strukturen ren och läsbar

Exempel:
CREATE TABLE Artist(
  Id INTEGER PRIMARY KEY,
  Name TEXT NOT NULL
);

📝 3. Fyll databasen med data (INSERT)
I filen insert_data.sql ska du:
Skapa minst 10 rader data som täcker alla tabeller
Säkerställa att dina relationer används

Data ska vara rimlig, inte random bokstäver.

🔍 4. Läs data (READ / SELECT)
I filen select_basic.sql ska du skriva minst 6 SELECT-queries som visar att du behärskar:
WHERE
ORDER BY
LIKE
GROUP BY (endast gruppberäkning – ingen HAVING)

🔗 5. Kombinera tabeller (JOIN)
I filen select_join.sql ska du skriva minst 2 JOIN-queries.

Exempel:
SELECT Track.Title, Album.Title, Artist.Name
FROM Track
JOIN Album ON Track.AlbumId = Album.Id
JOIN Artist ON Album.ArtistId = Artist.Id;


JOIN är centralt i kursens lärandemål kopplat till relationer, referenser och databasdesign.

✏️ 6. Uppdatera data (UPDATE)
I filen updates.sql ska du ha minst två uppdateringar.
Exempel
UPDATE Game SET Price = Price + 10 WHERE Id = 1;

🗑️ 7. Ta bort data (DELETE)
I filen deletes.sql ska du ha minst en radering.

Exempel:
DELETE FROM Post WHERE Id = 3;

🆚 8. Jämför SQL och LINQ
Välj tre av dina SELECT-queries och visa både:
SQL-versionen
LINQ-versionen
En kort förklaring av vad som mappas till vad

Exempel:
SQL
SELECT * FROM Games WHERE Price > 200 ORDER BY Price;

LINQ
var result = Games
  .Where(x => x.Price > 200)
  .OrderBy(x => x.Price)
  .ToList();

Detta tränar kursens mål om kopplingen mellan SQL, backend och modern utveckling.

🔐 9. Kort text om säkerhet
Skriv 5–7 meningar om:
Varför säker åtkomst till databaser är viktigt
Vad authentication och authorization betyder
Hur man skyddar känslig data i ett backendprojekt

Detta täcker kursmomentet säker åtkomst, auth-system och databassäkerhet.

🧭 10. Versionshantering
Visa att du använt Git korrekt genom att:
Lägga alla SQL-filer i en /sql-mapp
Ha meningsfulla commits
Kort beskriva i rapporten varför versionshantering är viktigt för databasutveckling

Detta täcker kursmomentet avancerad versionshantering i databasutveckling (Git, branching, merge-strategier).