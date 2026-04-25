select 
    orders.*,
    order_intem_summary.gross_item_sales_amount, 
    order_intem_summary.total_discount_amount
from 
    {{ ref('stg_tpch_orders') }} as orders
join 
    {{ ref('int_oder_items_summary') }} as order_intem_summary
        on orders.order_key = order_intem_summary.order_key
order by 
    orders.order_date