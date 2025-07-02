select * from blinkit_data;
'''Granual requiremnts'''
'''Total sales by fat content'''

select item_fat_content , sum(Sales) 
as Total_Sales 
from blinkit_data
group by Item_Fat_Content
order by Total_sales desc;


''' toatl sales by item_type'''

select item_type ,cast( sum(Sales) as decimal(10,2)) 
as Total_Sales 
from blinkit_data
group by Item_Type
order by Total_sales desc;


'''Fat content by outley for total sales--- fro this we will se outlet location type coln , item_fat_content coln'''

select outlet_location_type , item_fat_content ,
sum(sales) as Total_sales
from blinkit_data
group by outlet_location_type , item_fat_content
order  by total_sales;


'''Total sales by outlet establishment'''
select Outlet_Establishment_Year ,  
sum(sales) as Total_sales
from blinkit_data
group by Outlet_Establishment_Year
order  by Outlet_Establishment_Year desc


'''percentage of sales by outlet size'''
SELECT 
    outlet_size,
    CAST(SUM(sales) AS DECIMAL(10,2)) AS Total_Sales,
    CAST(SUM(sales) * 100.0 / SUM(SUM(sales)) OVER() AS DECIMAL(10,2)) AS sales_percentage
FROM 
    blinkit_data
GROUP BY 
    outlet_size
ORDER BY 
    Total_Sales DESC;


''' sales by outlet location'''

select outlet_location_type ,
cast(sum(Sales) as decimal(10,2)) as Total_Sales
from blinkit_data
group by Outlet_Location_Type
order by Total_sales desc ;


'''ALL metrics by oulet type'''
SELECT 
    outlet_type,
    CAST(SUM(sales) AS DECIMAL(10,2)) AS Total_Sales,
    CAST(SUM(sales) * 100.0 / SUM(SUM(sales)) OVER() AS DECIMAL(10,2)) AS Sales_Percentage,
    CAST(AVG(sales) AS DECIMAL(10,1)) AS Avg_Sales,
    COUNT(*) AS No_Of_Items,
    CAST(AVG(Rating) AS DECIMAL(10,2)) AS Avg_Rating
FROM 
    dbo.blinkit_data
GROUP BY 
    outlet_type
ORDER BY 
    Total_Sales DESC;


