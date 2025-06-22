
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select country_name
from "dbt_db"."schema_db"."country_codes"
where country_name is null



  
  
      
    ) dbt_internal_test