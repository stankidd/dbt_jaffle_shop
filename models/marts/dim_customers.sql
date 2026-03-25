with

int_customers as (

    select * from {{ ref('int_customers') }}

)

select
    customer_id,
    customer_name,
    customer_type,
    first_ordered_at,
    last_ordered_at,
    count_lifetime_orders,
    lifetime_spend_pretax,
    lifetime_tax_paid,
    lifetime_spend

from int_customers
