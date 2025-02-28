-- Creates our database 
CREATE DATABASE random_quotes;

-- Selects the database we just created so we can work with it
USE random_quotes;

-- Creates our table of random quotes
CREATE TABLE tbl_quotes(
QuoteId INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
Phrase VARCHAR(999) NOT NULL,
Author VARCHAR(60) NOT NULL,
Author_Birth DATE NOT NULL,
Author_Death DATE NOT NULL
);

-- Describe the table we just created
DESC tbl_quotes

-- Insert a bunch of data into our field
insert into tbl_quotes (Phrase, Author, Author_Birth, Author_Death) values ('The only way to do great work is to love what you do.', 'Herman Melville', '1095-01-11', '1337-04-06');
insert into tbl_quotes (Phrase, Author, Author_Birth, Author_Death) values ('You are braver than you believe', 'Kurt Vonnegut', '1206-06-25', '1392-12-31');
insert into tbl_quotes (Phrase, Author, Author_Birth, Author_Death) values ('Don''t watch the clock; do what it does. Keep going.', 'Sylvia Plath', '1963-02-03', '1958-01-25');
insert into tbl_quotes (Phrase, Author, Author_Birth, Author_Death) values ('stronger than you seem', 'Philip K. Dick', '1123-04-04', '1135-01-07');
insert into tbl_quotes (Phrase, Author, Author_Birth, Author_Death) values ('The only person you are destined to become is the person you decide to be.', 'Ray Bradbury', '1963-09-20', '1963-11-22');
insert into tbl_quotes (Phrase, Author, Author_Birth, Author_Death) values ('everything you need to deal with whatever the world can throw at you.', 'Sylvia Plath', '1492-09-18', '1053-08-12');
insert into tbl_quotes (Phrase, Author, Author_Birth, Author_Death) values ('and smarter than you think.', 'George Orwell', '1111-05-22', '1552-07-30');
insert into tbl_quotes (Phrase, Author, Author_Birth, Author_Death) values ('everything you need to deal with whatever the world can throw at you.', 'Ray Bradbury', '1331-04-26', '1871-11-17');
insert into tbl_quotes (Phrase, Author, Author_Birth, Author_Death) values ('The only thing standing between you and your goal is the story you keep telling yourself as to why you can''t achieve it.', 'Albert Camus', '1276-03-22', '1637-04-14');
insert into tbl_quotes (Phrase, Author, Author_Birth, Author_Death) values ('The best way to predict the future is to create it.', 'Virginia Woolf', '1144-03-21', '1223-04-20');
insert into tbl_quotes (Phrase, Author, Author_Birth, Author_Death) values ('and smarter than you think.', 'Zora Neale Hurston', '1640-11-25', '1253-06-12');
insert into tbl_quotes (Phrase, Author, Author_Birth, Author_Death) values ('The best way to predict the future is to create it.', 'J.R.R. Tolkien', '1398-09-20', '1103-01-30');
insert into tbl_quotes (Phrase, Author, Author_Birth, Author_Death) values ('The secret of getting ahead is getting started.', 'George Eliot', '1308-09-06', '1458-02-07');
insert into tbl_quotes (Phrase, Author, Author_Birth, Author_Death) values ('and smarter than you think.', 'Kazuo Ishiguro', '1482-10-16', '1316-01-08');
insert into tbl_quotes (Phrase, Author, Author_Birth, Author_Death) values ('The only thing that stands between you and your dream is the will to try and the belief that it is actually possible.', 'Sylvia Plath', '1240-01-17', '1737-08-28');
insert into tbl_quotes (Phrase, Author, Author_Birth, Author_Death) values ('The only way to achieve the impossible is to believe it is possible.', 'Harper Lee', '1568-11-30', '1037-10-15');
insert into tbl_quotes (Phrase, Author, Author_Birth, Author_Death) values ('You are never too old to set another goal or to dream a new dream.', 'Gabriel Garcia Marquez', '2001-04-24', '1806-08-17');
insert into tbl_quotes (Phrase, Author, Author_Birth, Author_Death) values ('The best way to predict the future is to create it.', 'Maya Angelou', '1246-08-28', '1394-04-29');
insert into tbl_quotes (Phrase, Author, Author_Birth, Author_Death) values ('The secret of getting ahead is getting started.', 'Charlotte Bronte', '1857-11-03', '1478-10-15');
insert into tbl_quotes (Phrase, Author, Author_Birth, Author_Death) values ('The only way to achieve the impossible is to believe it is possible.', 'Haruki Murakami', '1238-03-07', '1979-02-27');
insert into tbl_quotes (Phrase, Author, Author_Birth, Author_Death) values ('The only limit to our realization of tomorrow will be our doubts of today.', 'George Eliot', '1720-09-10', '1551-05-06');
insert into tbl_quotes (Phrase, Author, Author_Birth, Author_Death) values ('The only person you are destined to become is the person you decide to be.', 'Toni Morrison', '1967-06-06', '1890-11-24');
insert into tbl_quotes (Phrase, Author, Author_Birth, Author_Death) values ('everything you need to deal with whatever the world can throw at you.', 'F. Scott Fitzgerald', '1410-03-31', '1351-12-14');
insert into tbl_quotes (Phrase, Author, Author_Birth, Author_Death) values ('The only way to achieve the impossible is to believe it is possible.', 'Agatha Christie', '1697-03-11', '1449-02-02');
insert into tbl_quotes (Phrase, Author, Author_Birth, Author_Death) values ('and smarter than you think.', 'Octavia Butler', '1048-01-30', '1789-07-01');
insert into tbl_quotes (Phrase, Author, Author_Birth, Author_Death) values ('The only thing standing between you and your goal is the story you keep telling yourself as to why you can''t achieve it.', 'Jack Kerouac', '1402-05-27', '1351-08-29');
insert into tbl_quotes (Phrase, Author, Author_Birth, Author_Death) values ('You have within you right now', 'Edgar Allan Poe', '1773-02-18', '1967-10-03');
insert into tbl_quotes (Phrase, Author, Author_Birth, Author_Death) values ('Don''t be pushed around by the fears in your mind. Be led by the dreams in your heart.', 'Daphne du Maurier', '1067-02-23', '1841-03-13');
insert into tbl_quotes (Phrase, Author, Author_Birth, Author_Death) values ('The only limit to our realization of tomorrow will be our doubts of today.', 'Herman Melville', '1813-04-10', '1294-05-17');
insert into tbl_quotes (Phrase, Author, Author_Birth, Author_Death) values ('You are braver than you believe', 'Herman Melville', '1794-01-28', '1005-10-24');
insert into tbl_quotes (Phrase, Author, Author_Birth, Author_Death) values ('The harder you work for something', 'Gabriel Garcia Marquez', '1809-01-20', '1832-04-08');
insert into tbl_quotes (Phrase, Author, Author_Birth, Author_Death) values ('The only way to achieve the impossible is to believe it is possible.', 'Kurt Vonnegut', '1798-02-07', '1039-05-17');
insert into tbl_quotes (Phrase, Author, Author_Birth, Author_Death) values ('and smarter than you think.', 'Margaret Atwood', '1925-02-01', '2011-04-08');
insert into tbl_quotes (Phrase, Author, Author_Birth, Author_Death) values ('but who you are.', 'Ayn Rand', '1379-04-05', '1264-08-25');
insert into tbl_quotes (Phrase, Author, Author_Birth, Author_Death) values ('Don''t be pushed around by the fears in your mind. Be led by the dreams in your heart.', 'Oscar Wilde', '1111-04-21', '1774-05-31');
insert into tbl_quotes (Phrase, Author, Author_Birth, Author_Death) values ('Success is not in what you have', 'J.K. Rowling', '1462-02-20', '1177-10-21');
insert into tbl_quotes (Phrase, Author, Author_Birth, Author_Death) values ('The secret of getting ahead is getting started.', 'Jack Kerouac', '1986-01-08', '1392-06-13');
insert into tbl_quotes (Phrase, Author, Author_Birth, Author_Death) values ('The only person you are destined to become is the person you decide to be.', 'Philip K. Dick', '1851-02-04', '1817-02-19');
insert into tbl_quotes (Phrase, Author, Author_Birth, Author_Death) values ('The only person you are destined to become is the person you decide to be.', 'Emily Dickinson', '1748-07-06', '1558-11-12');
insert into tbl_quotes (Phrase, Author, Author_Birth, Author_Death) values ('The only way to do great work is to love what you do.', 'J.R.R. Tolkien', '1214-01-05', '1717-05-31');
insert into tbl_quotes (Phrase, Author, Author_Birth, Author_Death) values ('The future belongs to those who believe in the beauty of their dreams.', 'Emily Dickinson', '1250-02-06', '1405-10-01');
insert into tbl_quotes (Phrase, Author, Author_Birth, Author_Death) values ('The only thing that stands between you and your dream is the will to try and the belief that it is actually possible.', 'Ayn Rand', '1386-07-03', '1388-06-24');
insert into tbl_quotes (Phrase, Author, Author_Birth, Author_Death) values ('and smarter than you think.', 'Ayn Rand', '1402-10-09', '1816-01-09');
insert into tbl_quotes (Phrase, Author, Author_Birth, Author_Death) values ('The only thing standing between you and your goal is the story you keep telling yourself as to why you can''t achieve it.', 'Ayn Rand', '1172-07-15', '1895-06-04');
insert into tbl_quotes (Phrase, Author, Author_Birth, Author_Death) values ('You have within you right now', 'Ernest Hemingway', '1062-08-16', '1775-01-07');
insert into tbl_quotes (Phrase, Author, Author_Birth, Author_Death) values ('but who you are.', 'Leo Tolstoy', '1699-12-21', '1236-09-21');
insert into tbl_quotes (Phrase, Author, Author_Birth, Author_Death) values ('The secret of getting ahead is getting started.', 'John Steinbeck', '1820-03-12', '1737-07-09');
insert into tbl_quotes (Phrase, Author, Author_Birth, Author_Death) values ('Success is not in what you have', 'Maya Angelou', '1427-02-10', '2004-10-02');
insert into tbl_quotes (Phrase, Author, Author_Birth, Author_Death) values ('The future belongs to those who believe in the beauty of their dreams.', 'Jane Austen', '1322-12-15', '1058-06-24');
insert into tbl_quotes (Phrase, Author, Author_Birth, Author_Death) values ('Don''t be pushed around by the fears in your mind. Be led by the dreams in your heart.', 'James Joyce', '1302-04-24', '1676-03-18');

-- Check the Data has all been inserted correctly
SELECT * FROM tbl_quotes;

-- Create the next table with jokes
CREATE TABLE tbl_jokes(
JokeId INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
Pun VARCHAR(999) NOT NULL,
Comedian VARCHAR(60) NOT NULL
);

-- Describe the table we just created
DESC tbl_jokes

-- Made a mistake
-- DROP TABLE tbl_jokes

-- Insert table data
insert into tbl_jokes (Pun, Comedian) values ('Why did the coffee file a police report? It got mugged.', 'Natalie King');
insert into tbl_jokes (Pun, Comedian) values ('How do you organize a space party? You planet.', 'Dylan Martinez');
insert into tbl_jokes (Pun, Comedian) values ('What do you call a pile of cats? A meowtain.', 'Jessica Garcia');
insert into tbl_jokes (Pun, Comedian) values ('What do you call a group of killer whales playing instruments? An orca-stra.', 'Tyler Rodriguez');
insert into tbl_jokes (Pun, Comedian) values ('Why did the scarecrow become a successful neurosurgeon? He was outstanding in his field.', 'Emily Davis');
insert into tbl_jokes (Pun, Comedian) values ('Why did the tomato turn red? Because it saw the salad dressing.', 'Patrick Scott');
insert into tbl_jokes (Pun, Comedian) values ('Why did the golfer bring two pairs of pants? In case he got a hole in one.', 'Kelsey Johnson');
insert into tbl_jokes (Pun, Comedian) values ('What do you call a fake noodle? An impasta.', 'Chris Wilson');
insert into tbl_jokes (Pun, Comedian) values ('What do you call a factory that makes okay products? A satisfactory.', 'Olivia Nelson');
insert into tbl_jokes (Pun, Comedian) values ('Why did the golfer bring two pairs of pants? In case he got a hole in one.', 'Daniel Taylor');
insert into tbl_jokes (Pun, Comedian) values ('What do you call a pile of cats? A meowtain.', 'Michael Thompson');
insert into tbl_jokes (Pun, Comedian) values ('How do you organize a space party? You planet.', 'Joshua Young');
insert into tbl_jokes (Pun, Comedian) values ('Why did the tomato turn red? Because it saw the salad dressing.', 'Justin White');
insert into tbl_jokes (Pun, Comedian) values ('Why did the scarecrow win an award? Because he was outstanding in his field.', 'Dylan Martinez');
insert into tbl_jokes (Pun, Comedian) values ('Why did the math book look sad? Because it had too many problems.', 'John Smith');
insert into tbl_jokes (Pun, Comedian) values ('What do you call a fake noodle? An impasta.', 'David Jones');
insert into tbl_jokes (Pun, Comedian) values ('What do you call a pile of cats? A meowtain.', 'Stephanie Brown');
insert into tbl_jokes (Pun, Comedian) values ('Why did the coffee file a police report? It got mugged.', 'Christina Perez');
insert into tbl_jokes (Pun, Comedian) values ('Why did the golfer bring two pairs of pants? In case he got a hole in one.', 'Kevin Anderson');
insert into tbl_jokes (Pun, Comedian) values ('Why did the scarecrow become a successful neurosurgeon? He was outstanding in his field.', 'Michelle Perez');
insert into tbl_jokes (Pun, Comedian) values ('Why did the tomato turn red? Because it saw the salad dressing.', 'Dylan Martinez');
insert into tbl_jokes (Pun, Comedian) values ('Why did the math book look sad? Because it had too many problems.', 'Amanda Martinez');
insert into tbl_jokes (Pun, Comedian) values ('Why did the coffee file a police report? It got mugged.', 'Kimberly Lewis');
insert into tbl_jokes (Pun, Comedian) values ('Why did the scarecrow become a successful neurosurgeon? He was outstanding in his field.', 'Tyler Rodriguez');
insert into tbl_jokes (Pun, Comedian) values ('Why did the scarecrow become a successful neurosurgeon? He was outstanding in his field.', 'Emily Davis');
insert into tbl_jokes (Pun, Comedian) values ('What do you call a belt made out of watches? A waist of time.', 'Melissa Martin');
insert into tbl_jokes (Pun, Comedian) values ('What do you call a group of killer whales playing instruments? An orca-stra.', 'Hannah Moore');
insert into tbl_jokes (Pun, Comedian) values ('What do you call a fish wearing a crown? A kingfish.', 'Kayla Phillips');
insert into tbl_jokes (Pun, Comedian) values ('How do you organize a space party? You planet.', 'Adam Cooper');
insert into tbl_jokes (Pun, Comedian) values ('Why did the scarecrow win an award? Because he was outstanding in his field.', 'Sarah Johnson');
insert into tbl_jokes (Pun, Comedian) values ('What do you call a factory that makes okay products? A satisfactory.', 'Adam Cooper');
insert into tbl_jokes (Pun, Comedian) values ('Why did the coffee file a police report? It got mugged.', 'Vanessa Sanchez');
insert into tbl_jokes (Pun, Comedian) values ('What do you call a factory that makes okay products? A satisfactory.', 'Rebecca Lopez');
insert into tbl_jokes (Pun, Comedian) values ('Why did the tomato turn red? Because it saw the salad dressing.', 'Rachel White');
insert into tbl_jokes (Pun, Comedian) values ('How do you organize a space party? You planet.', 'Maria Clark');
insert into tbl_jokes (Pun, Comedian) values ('What do you call a factory that makes okay products? A satisfactory.', 'Brandon Wright');
insert into tbl_jokes (Pun, Comedian) values ('What do you call a group of killer whales playing instruments? An orca-stra.', 'Lauren Thompson');
insert into tbl_jokes (Pun, Comedian) values ('Why did the coffee file a police report? It got mugged.', 'Justin White');
insert into tbl_jokes (Pun, Comedian) values ('What do you call a factory that makes okay products? A satisfactory.', 'Robert Smith');
insert into tbl_jokes (Pun, Comedian) values ('What do you call a factory that makes okay products? A satisfactory.', 'Megan Taylor');
insert into tbl_jokes (Pun, Comedian) values ('Why don''t skeletons fight each other? They don''t have the guts.', 'Michael Thompson');
insert into tbl_jokes (Pun, Comedian) values ('Why did the math book look sad? Because it had too many problems.', 'Matthew Davis');
insert into tbl_jokes (Pun, Comedian) values ('What do you call a fake noodle? An impasta.', 'Hannah Moore');
insert into tbl_jokes (Pun, Comedian) values ('What do you call a fake noodle? An impasta.', 'Rebecca Lopez');
insert into tbl_jokes (Pun, Comedian) values ('Why don''t skeletons fight each other? They don''t have the guts.', 'Christina Perez');
insert into tbl_jokes (Pun, Comedian) values ('Why did the coffee file a police report? It got mugged.', 'Michelle Perez');
insert into tbl_jokes (Pun, Comedian) values ('What do you call a bear with no teeth? A gummy bear.', 'Vanessa Sanchez');
insert into tbl_jokes (Pun, Comedian) values ('Why did the tomato turn red? Because it saw the salad dressing.', 'Matthew Davis');
insert into tbl_jokes (Pun, Comedian) values ('Why don''t skeletons fight each other? They don''t have the guts.', 'Dylan Martinez');
insert into tbl_jokes (Pun, Comedian) values ('Why did the math book look sad? Because it had too many problems.', 'Hannah Moore');

-- View table just created
SELECT * FROM tbl_jokes;

-- Birth and Death of Author 
SELECT CONCAT(Author_Birth, '-' ,Author_Death)
AS 'Life-span'
FROM tbl_quotes;

-- Create new table with primary keys 
CREATE TABLE tbl_jkqt(
J_P_ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
QuoteId INT, 
JokeId INT,
CONSTRAINT QuoteId
FOREIGN KEY (QuoteId)
REFERENCES tbl_quotes(QuoteId)
ON DELETE CASCADE
ON UPDATE CASCADE,
CONSTRAINT JokeId
FOREIGN KEY(JokeId)
REFERENCES tbl_jokes(JokeId)
ON DELETE CASCADE
ON UPDATE CASCADE
);

-- Joins tables (throws error)
-- SELECT * FROM tbl_quotes
-- INNER JOIN
-- tbl_quotes ON tbl_quotes.Quote.Id = tbl_jkqt.QuoteId;

-- Join Tables
SELECT * FROM tbl_jkqt
JOIN
tbl_quotes ON tbl_jkqt.QuoteId = tbl_quotes.QuoteId;

-- View the new table
DESC tbl_jkqt;


-- Insert data into new table
INSERT INTO tbl_jkqt VALUES (
NULL,
10,
50
);

-- View new table
SELECT * FROM tbl_jkqt;