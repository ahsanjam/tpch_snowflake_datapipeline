SELECT 
    c_custkey as customer_key,
    c_name as name,
    c_address as address,
    c_nationkey as nation_key,
    c_phone as phone
FROM 
    snowflake_sample_data.tpch_sf1.customer