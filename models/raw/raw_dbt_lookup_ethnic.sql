--{{ config(materialized='table') }}

--select * from DEBAJIT_TEST_DB.debajit_schema.lookup_ethnic
select * from {{ source('global_project', 'lookup_ethnic') }}