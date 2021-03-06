USE codeup_test_db;

TRUNCATE albums;

INSERT INTO albums (artist, name, release_date, sales, genre)
VALUES ( 'Michael Jackson', 'Thriller', 1982, 49.2, 'Pop'),
       ( 'AC/DC', 'Back in Black', 1980, 29.5, 'Hard Rock'),
       ( 'Whitney Houston', 'The Bodyguard', 1992, 32.4, 'Pop'),
       ( 'Meat Loaf', 'Bat Out of Hell', 1992, 21.7, 'Hard Rock'),
       ( 'Eagles', 'Hotel California', 1976, 41.2, 'Country Rock'),
       ( 'Bee Gees', 'Saturday Night Fever', 1977, 21.6, 'Rock'),
       ( 'Fleetwood Mac', 'Rumors', 1977, 27.9, 'Soft Rock'),
       ( 'Shania Twain', 'Come On Over', 1997, 29.6, 'Disco'),
       ( 'Led Zeppelin', 'Led Zepplin IV', 1971, 29, 'Soft Rock'),
       ( 'Michael Jackson', 'Bad', 1987, 21.1, 'Pop'),
       ( 'Alanis Morissette', 'Jagged Little Pill', 1995, 24.3, 'Rock'),
       ( 'Michael Jackson', 'Dangerous', 1991, 17, 'Hard Rock'),
       ( 'Celine Dion', 'Falling into you', 1996, 21.1, 'Pop'),
       ( 'The Beatles', 'Sgt. Pepper’‘s Lonely Hearts Club Band', 1967, 18.2, 'Rock'),
       ( 'Adele', 21, 2011, 26.4, 'Pop'),
       ( 'Celine Dion', 'Lets’ Talk About Love', 1997, 19.3, 'Pop'),
       ( 'Metallica', 'Metallica', 1991, 25.2, 'Heavy Metal'),
       ( 'The Beatles', 1, 2000, 23.5, 'Rock'),
       ( 'The Beatles', 'Abbey Road', 1969, 14.4, 'Rock'),
       ( 'ABBA', 'Gold', 1992, 23, 'Pop'),
       ( 'Bruce Springsteen', 'Born in the U.S.A', 1984, 19.6, 'Heartland Rock'),
       ( 'Madonna', 'The Immaculate Collection', 1990, 19.5, 'Pop'),
       ( 'Pink Floyd', 'The Wall', 1979, 18.7, 'Progressive Rock'),
       ( 'James Horner', 'Titanic', 1997, 18.1, 'Film Score'),
       ( 'Dire Straits', 'Brothers in Arms', 1985, 17.7, 'Roots Rock'),
       ( 'Nirvana', 'Nevermind', 1991, 16.7, 'Grunge'),
       ( 'Santana', 'Supernatural', 1999, 20.5, 'Latin Rock'),
       ( 'Guns N’ Roses', 'Appetite for Destruction', 1987, 21.9, 'Hard Rock'),
       ( 'Elton John', 'Goodbye Yellow Brick Road', 1973, 8.5, 'Rock');