WITH models AS (
    SELECT 
        HASH(manufacturer, model) AS model_id,
        model AS model_name,
        HASH(manufacturer) AS manufacturer_id,
        manufacturer AS manufacturer_name,
        HASH(engine_type) AS engine_type_id,
        engine_type AS engine_type_name,
        max_seats,
        max_weight,
        max_distance
    FROM {{ ref('stg_aws__aeroplane_models') }}
)

SELECT * FROM models