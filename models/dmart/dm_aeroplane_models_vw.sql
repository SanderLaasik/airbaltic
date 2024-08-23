WITH 

models AS (
    SELECT *
    FROM {{ ref('aeroplane_models') }}
),
manufacturers AS (
    SELECT *
    FROM {{ ref('aeroplane_manufacturers') }}
),
engine_types AS (
    SELECT *
    FROM {{ ref('aeroplane_engine_types') }}
),
joined AS (
    SELECT 
        model.model_id,
        manu.manufacturer_name,
        model.model_name,
        model.max_seats,
        model.max_weight,
        model.max_distance,
        engine.engine_type_name
    FROM models as model
    JOIN manufacturers AS manu
        ON model.manufacturer_id=manu.manufacturer_id
    join engine_types AS engine
        ON model.engine_type_id=engine.engine_type_id
)
SELECT * FROM joined