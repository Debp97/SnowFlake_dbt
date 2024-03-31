{{ config(materialized='table') }}

select 
cast(code as varchar(100)) as code,
description,
sortorder
 from DEBAJIT_TEST_DB.debajit_schema.lookup_area