use manufacturinganalysis;
select * from manufacturingdata;

/*Emp wise Manufacture Qty*/
select `Emp Name`,concat(round(sum(`Manufactured Qty`)/1000000, 2), ' M'),sum(`Manufactured Qty`) as manufacture_qty
from manufacturingdata
group by `Emp Name`
order by manufacture_qty desc
limit 10;

/*emp wise rejected qty */



/*top 10 Produced QTY by em name */
select `Emp Name`,concat(round(sum(`Produced Qty`)/1000000, 2), ' M') as Produced_qty
from manufacturingdata
group by `Emp Name`
order by Produced_qty desc
limit 1;

/*Top selling Emp*/

select `Emp Name`,sum(`Produced Qty`)  as Produced_Qty
from manufacturingdata
group by `emp Name`
order by Produced_Qty desc
limit 8;


/*


/*Department wise Total of Manufactured, processed and rejected;*/
SELECT `Department Name`,
       sum(`Manufactured Qty`) as Total_manufactured,
	   sum(`Processed Qty`) as Total_processed,
       sum(`Rejected qty`) as Total_Rejected,
       concat(round(sum(`Rejected Qty`)/sum(`Processed Qty`)*100 , 2), '%') as wastage 
FROM manufacturingdata
group by `Department Name`;

/* wastage%*/
select concat(round(sum(`Rejected Qty`)/sum(`Processed Qty`)*100 , 2), '%') as wastage 
from manufacturingdata;


-- top 5 buyers
select Buyer as Buyers, 
       count(`WO Number`) as Total_Orders,
       concat(round(sum(TotalValue)/1000000, 2), ' M') as Total_amt
from manufacturingdata
group by Buyer
order by TOtal_Orders Desc
limit 5;

-- employee wise rejected quantity
select `Emp Name`, sum(`Rejected Qty`) as Rejected_qty 
from manufacturingdata
group by `Emp Name`
order by Rejected_qty desc
limit 10;

-- Top 10 Machine wise rejected quantity
select `Machine Name`, sum(`Rejected Qty`) as Rejected_qty 
from manufacturingdata
group by `Machine Name`
order by `Rejected_qty` desc
limit 8;

-- delivery period
select `Delivery Period`, 
       `Department Name`, 
       count(`WO Number`) as total_Orders
from manufacturingdata
group by `Delivery Period`,`Department Name`;

-- top 5 machine cost per operation
Select `Operation Name`, 
	   concat(round(sum(`Per day Machine Cost made`)/1000000, 2), ' M') as Machine_cost
from manufacturingdata
group by `Operation Name`
order by Machine_cost desc
limit 5;

/*manufacturing qty*/
select concat(round(sum(`Manufactured Qty`)/1000000, 2), ' M')
from manufacturingdata;

/*rejected Qty*/
select concat(round(sum(`Rejected Qty`)/10000, 2), ' K')
from manufacturingdata;

/*Processed Qty*/
select concat(round(sum(`Processed Qty`)/1000000, 2), ' M')
from manufacturingdata;

/*Produced Qty*/
select concat(round(sum(`Produced Qty`)/1000000, 2), ' M')
from manufacturingdata;

/*man qty by cust name*/
select `Cust Name`, sum(`Manufactured Qty`) as Manufacture_Qty
from manufacturingdata
group by `Cust Name`
order by Manufacture_Qty desc
limit 8;

select `Cust Name`
from manufacturingdata
group by `Cust Name`
limit  8;
 select `Operation Name`, sum(`Produced Qty`) as Produced_qty 
from manufacturingdata
group by `Operation Name`
order by Produced_qty desc
limit 10;









