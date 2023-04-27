with orders as (select * from {{ ref("raw_orders") }})
select orderid, sum(ordersellingprice)
from orders
group by orderid
having sum(ordersellingprice) < 0
