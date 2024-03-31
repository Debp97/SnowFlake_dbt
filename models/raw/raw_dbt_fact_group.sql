--{{ config(materialized='table') }}

select * from  {{ source('global_project', 'group_fact') }}