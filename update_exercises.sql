USE codeup_test_db;

UPDATE albums
SET sales = (sales * 10)
WHERE sales > 0;

SELECT 'All albums released before 1980' AS 'Caption';
SELECT name FROM albums WHERE release_date < 1980;

Update albums
SET release_date = (release_date - 100)
WHERE release_date < 1980;

SELECT 'All albums by Michael Jackson' AS 'Caption';
SELECT name FROM albums WHERE artist = 'Michael Jackson';

Update albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';

SELECT 'All albums in your table' AS 'Caption';
SELECT * FROM albums;