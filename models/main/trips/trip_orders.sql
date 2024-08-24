{{ 
    config(
        unique_key='order_id'
    ) 
}}

WITH orders AS (
    SELECT
        trip_order_id,
        customer_id,
        trip_id,
        price_amt,
        seat_no
    FROM {{ ref('int_aws__trip_orders') }}
)

SELECT * FROM orders