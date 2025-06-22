-- Use the `ref` function to select from other models

select *
from "dbt_db"."schema_db"."my_first_dbt_model"
where id = 1