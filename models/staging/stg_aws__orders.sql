SELECT 
    order_id,
    customer_id,
    trip_id,
    price_amt,
    seat_no,
    status
FROM {{ source('aws_raw', 'orders') }}
--Would filter out only new/changed records if a change timestamp column existed in source