--{{ config(materialized='incremental',
            unique_key = 'CODE') }}

select *,current_timestamp as dbt_timestamp from  {{ source('global_project', 'incremental_lookup_sex') }}
{% if is_incremental() %}
where RAW_TIMESTAMP >= (SELECT MAX(dbt_timestamp) FROM {{ this}})
{% endif %}