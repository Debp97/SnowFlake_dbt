select 
lkp_year.description as year,
lkp_sex.description as sex,
lkp_area.description as area
from {{ ref('raw_dbt_fact_group') }} as fact
inner join {{ ref('raw_dbt_lookup_age') }} as lkp_year
on fact.age = lkp_year.code
inner join {{ ref('raw_dbt_lookup_sex') }} as lkp_sex
on fact.age = lkp_sex.code
inner join {{ ref('raw_dbt_lookup_area') }} as lkp_area
on cast(fact.area as varchar(100)) = lkp_area.code