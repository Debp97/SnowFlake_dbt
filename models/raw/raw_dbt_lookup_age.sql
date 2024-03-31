--{{ config(materialized='table') }}

select * from {{ source('global_project', 'lookup_age') }}