{{
  config(
    materialized = "table",
    pre_hook =  "create table if not exists test_customers2 (a int)"
    )
}}


with customers as (

    select * from {{this}}

)


select * from customers