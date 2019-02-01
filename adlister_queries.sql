

use adlister;
select ads.title, users.email from ads
join users on ads.user = users.id
where ads.id = '2';
# Obsolete code
# select ads.title, ads_categories.category1, ads_categories.category2, categories.category
# from ads
# join ads_categories on ads.id = ads_categories.id
# join categories on ads_categories.category1 = categories.id
# where ads.id = '2';
#
# select ads.title
# from ads
# join ads_categories on ads.id = ads_categories.id
# where ads_categories.category1 = '1';
#
# select title
# from ads
# where id in(
#   select id
#   from ads_categories
#   where category1 = '2'
#   and category2 = '3'
#   );
#
# select ads.title
# from ads
# join users on ads.user = users.id
# where users.id = '3';
#
# select title
# from ads
# where user in (
#   select id
#   from users
#   where id = '3'
#   );



select * from categories
join ads_categories on categories.id = ads_categories.cat_id
where ads_categories.ad_id =2;

select * from ads
where id in (
  select ad_id from ads_categories
  where cat_id = 2
  );

select * from ads
where user in (
  select id from users
  where id = 3
  );