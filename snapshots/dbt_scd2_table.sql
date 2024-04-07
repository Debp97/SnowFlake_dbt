{% snapshot dbt_scd2_table%}
{{
    config(
        target_schema = 'DEBAJIT_SCHEMA',
        unique_key = 'CODE',
        strategy = 'timestamp',
        updated_at = 'raw_timestamp',
        invalidate_hard_deletes = True
    )
}}

select * from {{ source('global_project', 'lookup_area_new') }}

{% endsnapshot %}