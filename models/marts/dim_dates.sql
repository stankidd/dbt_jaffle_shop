{{
  config(
    materialized = 'table',
  )
}}

with date_spine as (

    select
        dateadd(
            'day',
            row_number() over (order by seq4()) - 1,
            to_date('2016-01-01')
        ) as date_day

    from table(generator(rowcount => 5479))  -- 2016-01-01 til 2030-12-31

)

select
    date_day,
    date_trunc('year',  date_day) as date_year,
    date_trunc('month', date_day) as date_month,
    date_trunc('week',  date_day) as date_week

from date_spine
