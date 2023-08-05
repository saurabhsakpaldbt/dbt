select
    id as order_id,
    user_id as customer_id,
    order_date,
    status
bad code
from {{ source('jaffle_shop', 'orders') }}
