
  
    

        create or replace transient table dbt_db.dbt_schema.dim_customer_orders
         as
        (SELECT 
    customers.customer_key,
    customers.name,
    customers.address,
    customers.nation_key,
    customers.phone,
    orders.order_key, 
    orders.status_code
FROM 
    dbt_db.dbt_schema.stg_tpch_customer as customers
LEFT JOIN
    dbt_db.dbt_schema.stg_tpch_orders as orders
ON
    customers.customer_key = orders.customer_key
        );
      
  