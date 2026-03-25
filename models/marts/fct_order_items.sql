with

int_order_items as (

    select * from {{ ref('int_order_items') }}

)

select
    order_item_id,
    order_id,
    product_id,
    ordered_at,
    product_price,
    supply_cost

from int_order_items
