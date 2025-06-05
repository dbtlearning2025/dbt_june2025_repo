SELECT
    id,
    TO_DATE(created_at) AS order_date,
    user_id,
    product_id,
    quantity,
    unit_price,
    quantity * unit_price as order_amount
FROM {{ ref('bronze_orders') }}