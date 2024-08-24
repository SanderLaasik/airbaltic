{% snapshot trip_order_statuses_hist %}

    {{
        config(
          target_schema='airboltic',
          strategy='check',
          unique_key='trip_order_id',
          check_cols=['status_id'],
        )
    }}

    select * from {{ ref('int_aws__trip_orders') }}

{% endsnapshot %}