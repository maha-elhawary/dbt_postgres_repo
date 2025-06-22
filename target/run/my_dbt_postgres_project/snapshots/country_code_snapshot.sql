
      update "dbt_db"."snapshots"."country_codes_snapshot"
    set dbt_valid_to = DBT_INTERNAL_SOURCE.dbt_valid_to
    from "country_codes_snapshot__dbt_tmp160418210528" as DBT_INTERNAL_SOURCE
    where DBT_INTERNAL_SOURCE.dbt_scd_id::text = "dbt_db"."snapshots"."country_codes_snapshot".dbt_scd_id::text
      and DBT_INTERNAL_SOURCE.dbt_change_type::text in ('update'::text, 'delete'::text)
      
        and "dbt_db"."snapshots"."country_codes_snapshot".dbt_valid_to is null;
      


    insert into "dbt_db"."snapshots"."country_codes_snapshot" ("country_name", "country_code", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to", "dbt_scd_id")
    select DBT_INTERNAL_SOURCE."country_name",DBT_INTERNAL_SOURCE."country_code",DBT_INTERNAL_SOURCE."dbt_updated_at",DBT_INTERNAL_SOURCE."dbt_valid_from",DBT_INTERNAL_SOURCE."dbt_valid_to",DBT_INTERNAL_SOURCE."dbt_scd_id"
    from "country_codes_snapshot__dbt_tmp160418210528" as DBT_INTERNAL_SOURCE
    where DBT_INTERNAL_SOURCE.dbt_change_type::text = 'insert'::text;

  