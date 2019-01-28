use codeup_test_db;
select "All albums";
select name from albums;
update albums set sales = sales*10;
select sales from albums;
select "All albums from before 1980";
select name from albums where release_date < 1980;
update albums set release_date = replace (release_date, 19, 18) where release_date < 1980;
select release_date from albums where release_date < 1900;
select "Albums by Michael Jackson";
select name from albums where artist = "Michael Jackson";
update albums set artist = "Peter Jackson" where artist = "Michael Jackson";
select name, artist from albums where artist  = "Peter Jackson";