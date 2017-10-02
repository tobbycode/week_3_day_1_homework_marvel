1)Return ALL the data in the 'movies' table.

SELECT * FROM movies;

id |                title                | year | show_time
----+-------------------------------------+------+-----------
 1 | Iron Man                            | 2008 | 19:40
 2 | The Incredible Hulk                 | 2008 | 18:05
 3 | Iron Man 2                          | 2010 | 12:10
 4 | Thor                                | 2011 | 19:50
 5 | Captain America: The First Avenger  | 2011 | 12:30
 6 | Avengers Assemble                   | 2012 | 18:10
 7 | Iron Man 3                          | 2013 | 23:15
 8 | Thor: The Dark World                | 2013 | 17:30
 9 | Batman Begins                       | 2005 | 13:45
10 | Captain America: The Winter Soldier | 2014 | 21:55
11 | Guardians of the Galaxy             | 2014 | 22:55
12 | Avengers: Age of Ultron             | 2015 | 12:40
13 | Ant-Man                             | 2015 | 23:15
14 | Captain America: Civil War          | 2016 | 18:05
15 | Doctor Strange                      | 2016 | 16:05
16 | Guardians of the Galaxy 2           | 2017 | 23:50
(16 rows)


2a) Return ONLY the name column from the 'people' table
3.Oops! Someone at CodeClan spelled John's name wrong!
Change it to reflect the proper spelling
(change 'John Crookshank' to 'John Cruickshank').

name
----------------------
Clare   Blackburne
John    Crookshank
Alistair        Kane
Jamie   Klein
Fiona   Lindsay
Alex    MacFadyen
Peter   McCready
Scott   Murray
Hayley  Prior
Martin  Reid
Caroline        Reid
Louise  Reid
Tobi    Sanusi
Jamie   Sime
Michael Slevin
Alex    Smith
James   Stewart
Chad    Tung
John Daley
(19 rows)

SELECT name FROM people;

2b)

name
----------------------
Clare   Blackburne
Alistair        Kane
Jamie   Klein
Fiona   Lindsay
Alex    MacFadyen
Peter   McCready
Scott   Murray
Hayley  Prior
Martin  Reid
Caroline        Reid
Louise  Reid
Tobi    Sanusi
Jamie   Sime
Michael Slevin
Alex    Smith
James   Stewart
Chad    Tung
John Daley
John Cruickshank
(19 rows)

UPDATE people SET name = 'John Cruickshank' WHERE name = 'John	Crookshank';
SELECT name FROM people;

3)
Return ONLY your name from the 'people' table.
name
----------------
Tobi    Sanusi
(1 row)
SELECT name FROM people WHERE id = 13;


4)The cinema is showing 'Batman Begins', but Batman is DC,
not Marvel! Delete the
entry from the 'movies' table.

id |                title                | year | show_time
----+-------------------------------------+------+-----------
  1 | Iron Man                            | 2008 | 19:40
  2 | The Incredible Hulk                 | 2008 | 18:05
  3 | Iron Man 2                          | 2010 | 12:10
  4 | Thor                                | 2011 | 19:50
  5 | Captain America: The First Avenger  | 2011 | 12:30
  6 | Avengers Assemble                   | 2012 | 18:10
  7 | Iron Man 3                          | 2013 | 23:15
  8 | Thor: The Dark World                | 2013 | 17:30
 10 | Captain America: The Winter Soldier | 2014 | 21:55
 11 | Guardians of the Galaxy             | 2014 | 22:55
 12 | Avengers: Age of Ultron             | 2015 | 12:40
 13 | Ant-Man                             | 2015 | 23:15
 14 | Captain America: Civil War          | 2016 | 18:05
 15 | Doctor Strange                      | 2016 | 16:05
 16 | Guardians of the Galaxy 2           | 2017 | 23:50
(15 rows)

DELETE FROM movies WHERE title = 'Batman Begins';
SELECT * FROM movies;


5)Create a new entry in the 'people' table with the
name of one of the instructors.

id |         name
----+----------------------
 1 | Clare   Blackburne
 2 | John    Crookshank
 3 | Alistair        Kane
 4 | Jamie   Klein
 5 | Fiona   Lindsay
 6 | Alex    MacFadyen
 7 | Peter   McCready
 8 | Scott   Murray
 9 | Hayley  Prior
10 | Martin  Reid
11 | Caroline        Reid
12 | Louise  Reid
13 | Tobi    Sanusi
14 | Jamie   Sime
15 | Michael Slevin
16 | Alex    Smith
17 | James   Stewart
18 | Chad    Tung
19 | John Daley
20 | John McCollum
(20 rows)

INSERT INTO people (name) VALUES ('John McCollum');
SELECT * FROM people;


6)John Daley (G1), has decided to hijack our movie evening,
Remove him from the table of people.

id |         name
----+----------------------
  1 | Clare   Blackburne
  2 | John    Crookshank
  3 | Alistair        Kane
  4 | Jamie   Klein
  5 | Fiona   Lindsay
  6 | Alex    MacFadyen
  7 | Peter   McCready
  8 | Scott   Murray
  9 | Hayley  Prior
 10 | Martin  Reid
 11 | Caroline        Reid
 12 | Louise  Reid
 13 | Tobi    Sanusi
 14 | Jamie   Sime
 15 | Michael Slevin
 16 | Alex    Smith
 17 | James   Stewart
 18 | Chad    Tung
(18 rows)

DELETE FROM people WHERE name = 'John Daley';
SELECT * FROM people;


7)Somehow the list of people includes two people
named 'Alex'. Change these entries to the proper
names ('Alex the First', 'Alex the Second')

id |         name
----+----------------------
 1 | Clare   Blackburne
 2 | John    Crookshank
 3 | Alistair        Kane
 4 | Jamie   Klein
 5 | Fiona   Lindsay
 7 | Peter   McCready
 8 | Scott   Murray
 9 | Hayley  Prior
10 | Martin  Reid
11 | Caroline        Reid
12 | Louise  Reid
13 | Tobi    Sanusi
14 | Jamie   Sime
15 | Michael Slevin
17 | James   Stewart
18 | Chad    Tung
19 | John Daley
 6 | Alex the First
16 | Alex the Second
(19 rows)

UPDATE people SET name = 'Alex the First' WHERE id = 6;
UPDATE people SET name = 'Alex the Second' WHERE id = 16;
SELECT * FROM people;

8)The cinema has just heard that they will be holding
an exclusive midnight showing of 'Guardians of the Galaxy 2'!!
 Create a new entry
in the 'movies' table to reflect this.

id |                title                | year | show_time
----+-------------------------------------+------+-----------
 1 | Iron Man                            | 2008 | 19:40
 2 | The Incredible Hulk                 | 2008 | 18:05
 3 | Iron Man 2                          | 2010 | 12:10
 4 | Thor                                | 2011 | 19:50
 5 | Captain America: The First Avenger  | 2011 | 12:30
 6 | Avengers Assemble                   | 2012 | 18:10
 7 | Iron Man 3                          | 2013 | 23:15
 8 | Thor: The Dark World                | 2013 | 17:30
 9 | Batman Begins                       | 2005 | 13:45
10 | Captain America: The Winter Soldier | 2014 | 21:55
12 | Avengers: Age of Ultron             | 2015 | 12:40
13 | Ant-Man                             | 2015 | 23:15
14 | Captain America: Civil War          | 2016 | 18:05
15 | Doctor Strange                      | 2016 | 16:05
11 | Guardians of the Galaxy             | 2014 | 21:55
16 | Guardians of the Galaxy 2           | 2017 | 23:55

UPDATE movies SET show_time = '21:55' WHERE title = 'Guardians of the Galaxy';
UPDATE movies SET show_time = '23:55' WHERE title = 'Guardians of the Galaxy 2';
SELECT * FROM movies;


9) The cinema would also like to make the Guardian
movies a back to back feature.
Update the 'Guardians of the Galaxy'
show time from 18:55 to 21:30

id |                title                | year | show_time
----+-------------------------------------+------+-----------
 1 | Iron Man                            | 2008 | 19:40
 2 | The Incredible Hulk                 | 2008 | 18:05
 3 | Iron Man 2                          | 2010 | 12:10
 4 | Thor                                | 2011 | 19:50
 5 | Captain America: The First Avenger  | 2011 | 12:30
 6 | Avengers Assemble                   | 2012 | 18:10
 7 | Iron Man 3                          | 2013 | 23:15
 8 | Thor: The Dark World                | 2013 | 17:30
 9 | Batman Begins                       | 2005 | 13:45
10 | Captain America: The Winter Soldier | 2014 | 21:55
12 | Avengers: Age of Ultron             | 2015 | 12:40
13 | Ant-Man                             | 2015 | 23:15
14 | Captain America: Civil War          | 2016 | 18:05
15 | Doctor Strange                      | 2016 | 16:05
11 | Guardians of the Galaxy             | 2014 | 18:55
16 | Guardians of the Galaxy 2           | 2017 | 19:50
(16 rows)

UPDATE movies SET show_time = '18:55' WHERE title = 'Guardians of the Galaxy';
UPDATE movies SET show_time = '19:50' WHERE title = 'Guardians of the Galaxy 2';
SELECT * FROM movies;

Extension

Research how to delete multiple entries from your table in a single command.

id |                title                | year | show_time
----+-------------------------------------+------+-----------
 1 | Iron Man                            | 2008 | 19:40
 2 | The Incredible Hulk                 | 2008 | 18:05
 4 | Thor                                | 2011 | 19:50
 5 | Captain America: The First Avenger  | 2011 | 12:30
 6 | Avengers Assemble                   | 2012 | 18:10
 8 | Thor: The Dark World                | 2013 | 17:30
 9 | Batman Begins                       | 2005 | 13:45
10 | Captain America: The Winter Soldier | 2014 | 21:55
11 | Guardians of the Galaxy             | 2014 | 22:55
12 | Avengers: Age of Ultron             | 2015 | 12:40
13 | Ant-Man                             | 2015 | 23:15
14 | Captain America: Civil War          | 2016 | 18:05
16 | Guardians of the Galaxy 2           | 2017 | 23:50
(13 rows)

DELETE FROM movies
WHERE (title = 'Iron Man 2' AND show_time = '12:10')
OR (title = 'Iron Man 3' AND show_time = '23:15')
OR (title = 'Doctor Strange' AND show_time = '16:05');
SELECT * FROM movies;
