{{
  config(
    materialized = "table",
    pre_hook =  "create table if not exists test (a int)"
    )
}}


select * from test_customers1