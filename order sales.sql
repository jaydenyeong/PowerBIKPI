--inspecting data
select * from sales_data_sample

--checking unique values
select distinct status from sales_data_sample
select distinct PRODUCTLINE from sales_data_sample
select distinct COUNTRY from sales_data_sample
select distinct DEALSIZE from sales_data_sample
select distinct TERRITORY from sales_data_sample

select distinct MONTH_ID
from sales_data_sample
where YEAR_ID = 2003

--analysis
select PRODUCTLINE, SUM(sales) AS Revenue 
from sales_data_sample
group by PRODUCTLINE
order by 2 desc --column (2)

select YEAR_ID, SUM(sales) AS Revenue 
from sales_data_sample
group by YEAR_ID
order by 2 desc

select DEALSIZE, sum(sales) Revenue
from sales_data_sample
group by DEALSIZE
order by 2 desc