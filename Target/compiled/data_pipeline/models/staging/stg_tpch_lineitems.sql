SELECT md5(cast(coalesce(cast(l_orderkey as TEXT), '_dbt_utils_surrogate_key_null_') || '-' || coalesce(cast(l_linenumber as TEXT), '_dbt_utils_surrogate_key_null_') as TEXT)) as order_item_key,
    l_orderkey as order_key,
    l_partkey as part_key,
    l_suppkey as supp_key,
    l_linenumber as line_number,
    l_quantity as quantity,
    l_extendedprice as extended_price,
    l_discount as discount,
    l_tax as tax,
    l_returnflag as return_flag
FROM snowflake_sample_data.tpch_sf1.lineitem