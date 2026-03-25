with

int_orders as (

    select * from {{ ref('int_orders') }}

)

select
    order_id,
    customer_id,
    location_id,
    ordered_at,

    subtotal,
    tax_paid,
    order_total,
    order_cost,

    count_order_items,
    count_food_items,
    count_drink_items,
    is_food_order,
    is_drink_order,

    customer_order_number

from int_orders
