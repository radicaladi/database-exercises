USE codeup_test_db;

SELECT 'Where albums are released after 1990' AS 'Caption';
DELETE FROM albums WHERE release_date > 1990;

SELECT 'Albums in disco genre' AS 'Caption';
DELETE FROM albums WHERE genre = 'Disco';

SELECT 'Whitney Houston albums' AS 'Caption';
DELETE FROM albums WHERE artist = 'Whitney Houston';