USE codeup_test_db;

SELECT 'All Albums after 1991' as 'INFO';
SELECT * from albums where release_date >= 1992;
DELETE from albums where release_date >= 1992;
SELECT 'All Deleted albums from 1992 on' as 'INFO';

SELECT 'All Albums with the genre Pop' as 'INFO';
SELECT * from albums where genre = 'Pop';
DELETE from albums where genre = 'Pop';
SELECT 'Deleted all Albums with a Pop genre' as 'INFO';

SELECT 'All Albums by Pink Floyd' as 'INFO';
SELECT * from albums where artist = 'Pink Floyd';
DELETE from albums where artist = 'Pink Floyd';
SELECT 'Peace Pink Floyd, you overrated Peace' as 'INFO';

SELECT * from albums;