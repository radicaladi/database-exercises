USE codeup_test_db;

SELECT 'The name of all albums by Pink Floyd' AS 'Info';
SELECT name FROM albums WHERE artist = 'Pink FLoyd'

SELECT 'The year Sgt. Pepper''s Lonely Hearts Club Band was released' AS 'Info';
SELECT release_date FROM album WHERE name = 'The year Sgt. Pepper''s Lonely Hearts Club Band was released';

SELECT 'The genre for Nevermind' AS 'Info';
SELECT genre FROM album WHERE artist = 'Nirvana';

SELECT 'Which albums were released in the 1990s' AS 'Info';
SELECT name FROM album WHERE release_date BETWEEN 1990 AND 2000;

SELECT 'Which albums had less than 20 million certified sales' AS 'Info';
SELECT name FROM album WHERE sales < 20;

SELECT 'All the albums with a genre of Rock' AS 'Info';
SELECT name FROM album WHERE genre = 'Rock';