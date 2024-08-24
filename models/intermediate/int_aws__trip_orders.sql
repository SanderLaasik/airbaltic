WITH orders AS (
    SELECT
        order_id,
        customer_id,
        trip_id,
        price_amt,
        seat_no,
        HASH(status) AS status_id,
        status AS status_name
    FROM {{ ref('stg_aws__orders') }}
)

SELECT * FROM orders