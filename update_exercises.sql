USE codeup_test_db;

SELECT 'All Albums in Albums Table' AS 'Info';
SELECT * FROM albums;
UPDATE albums SET sales = sales*10;
SELECT 'Updated sales by 10 fold' AS 'Info';
SELECT * from albums;

SELECT 'All Albums produced before 1980' AS 'Info';
SELECT * FROM albums WHERE release_date <= 1979;
UPDATE albums SET release_date = 1901 WHERE release_date <= 1979;
SELECT 'Updated Albums released before 1980 to 1901' AS 'Info';
SELECT * from albums where release_date = 1901;

SELECT 'albums by Michael Jackson' AS 'Info';
SELECT * FROM albums WHERE artist = 'Michael Jackson';
UPDATE albums SET artist = 'Peter Jackson' WHERE artist = 'Michael Jackson';
SELECT 'Updated artist Michael Jackson to Peter Jackson' AS 'Info';
SELECT 'albums by Peter Jackson' AS 'Info';
SELECT * FROM albums WHERE artist = 'Peter Jackson';
