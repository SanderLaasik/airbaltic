WITH 

customers AS (
    SELECT *
    FROM {{ ref('customers') }}
),
groups AS (
    SELECT *
    FROM {{ ref('customer_groups') }}
),
types AS (
    SELECT *
    FROM {{ ref('customer_group_types') }}
),
joined AS (
    SELECT 
        customers.customer_id,
        customers.customer_name,
        customers.email,
        customers.phone_number,
        groups.customer_group_name,
        groups.registry_number AS customer_group_registry_number,
        types.customer_group_type_name
    FROM customers
    LEFT JOIN groups
        ON customers.customer_group_id=groups.customer_group_id
    LEFT JOIN types
        ON groups.customer_group_type_id=types.customer_group_type_id
)
SELECT * FROM joined