select 
 count(*) as Total_count,
 area, 
 year,
 sex
 from {{ ref('stg_dbt_view1') }}
group by area, year,sex