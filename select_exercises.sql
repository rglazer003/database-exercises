USE codeup_test_db;
-- Show all albums by Pink Floyd
select name from albums where artist = "Pink Floyd";
-- Show year when Sgt. Pepper's was released
select release_date from albums where name = "Sgt. Pepper's Lonely Hearts Club Band";
-- Show genre for Nevermind
select genre from albums where name = "Nevermind";
-- Show all albums released in the 90's
select name from albums where release_date between 1990 and 1999;
-- Show all albums with > 20 million confirmed sales
select name from albums where sales < 20;
-- Show all albums where the genre is Rock
select name from albums where genre = "Rock";
