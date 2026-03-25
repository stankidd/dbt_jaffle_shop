with

products as (

    select * from {{ ref('stg_products') }}

)

select
    product_id,
    product_name,
    product_type,
    product_description,
    is_food_item,
    is_drink_item,
    product_price

from products
