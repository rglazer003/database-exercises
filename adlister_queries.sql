use adlister;
select ads.title, users.email from ads
join users on ads.user = users.id
where ads.id = '2';

select ads.title, ads_categories.category1, ads_categories.category2, categories.category
from ads
join ads_categories on ads.id = ads_categories.id
join categories on ads_categories.category1 = categories.id
where ads.id = '2';

