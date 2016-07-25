USE codeup_test_db;

SELECT 'Pink Floyd Offerings' AS 'CAPTION';
SELECT * FROM albums where artist = 'Pink Floyd';

SELECT 'Sgt. Pepper was released ' AS 'CAPTION';
SELECT release_date FROM albums where name = 'Sgt. Peppers Lonely Hearts Club Band';

SELECT 'Genre for Kirk and Gang' AS 'CAPTION';
SELECT genre FROM albums where name = 'Nevermind';

SELECT 'Albums released post 1990' AS 'CAPTION';
SELECT name FROM albums where release_date > 1990;

SELECT 'Album with less than 25 million certified sales' AS 'CAPTION';
SELECT name FROM albums where sales < 25.0;

SELECT 'Albums with rock considered to be any of its genres' AS 'CAPTION';
SELECT name FROM albums where genre LIKE '%rock%';