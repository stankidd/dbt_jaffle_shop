with

locations as (

    select * from {{ ref('stg_locations') }}

)

select
    location_id,
    location_name,
    opened_date,
    tax_rate

from locations
