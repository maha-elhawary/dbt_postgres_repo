
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

select
    country_code as unique_field,
    count(*) as n_records

from "dbt_db"."schema_db"."country_codes"
where country_code is not null
group by country_code
having count(*) > 1



  
  
      
    ) dbt_internal_test