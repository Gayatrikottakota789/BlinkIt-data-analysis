select * from blinkit_data;
select count(*) from blinkit_data;

update blinkit_data
set Item_Fat_Content = 
CASE
when Item_Fat_Content in ('LF' , 'low fat' ) THEN 'Low Fat'
when Item_Fat_Content = 'reg' THEN 'Regular'
else Item_Fat_Content
end

select distinct(item_fat_content) from blinkit_data;


'''KPI"S Requirements'''

''' 1st Requirement - Total sales '''
select sum(Sales)
as Total_sales  from blinkit_data;

'''2nd Requirement - average sales'''
select cast(avg(sales)  as decimal(10,2)) as Avg_Sales from blinkit_data

'''3rd Requirement - number   of items'''
select count(*) AS number_of_items from blinkit_data;

'''4rth Requirement - Average Rating'''
select cast( avg(rating) as decimal(10,2))  as avg_rating from blinkit_data;






