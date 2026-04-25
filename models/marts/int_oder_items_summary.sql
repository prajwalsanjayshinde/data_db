select 
    order_key,
    sum(extended_price) as gross_item_sales_amount,
    sum(discounted_amount) as total_discount_amount
from 
    {{ ref('int_order_item') }}
group by
    order_key