{{ 
    config(
        unique_key='order_id'
    ) 
}}

WITH orders AS (
    SELECT
        order_id,
        customer_id,
        trip_id,
        price_amt,
        seat_no,
        status
    FROM {{ ref('stg_aws__orders') }}
)

SELECT * FROM orders