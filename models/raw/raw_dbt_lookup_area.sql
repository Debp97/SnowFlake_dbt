--{{ config(materialized='table') }}

select 
cast(code as varchar(100)) as code,
description,
sortorder
 from {{ source('global_project', 'lookup_area') }}