with cte as(
select
 count(*) as Total_count,
 cast(area as varchar(100)) as area, 
 year as year,
 sex as sex
 from {{ ref('stg_dbt_view1') }}
group by area, year,sex
)
select
{{ dbt_utils.generate_surrogate_key(['area', 'year' ,'sex']) }} as sk_key,
*
from cte