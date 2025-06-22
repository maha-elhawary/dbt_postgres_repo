
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select id
from "dbt_db"."schema_db"."my_first_dbt_model"
where id is null



  
  
      
    ) dbt_internal_test