
  
    

        create or replace transient table dbt_db.dbt_schema.int_order_items
         as
        (SELECT 
    line_items.order_item_key,
    line_items.part_key,
    line_items.line_number,
    line_items.extended_price,
    orders.order_key,
    orders.customer_key,
    orders.order_date,
    
    (-1 * line_items.extended_price * line_items.discount)::decimal(16, 2)
 as item_discount_amount,
    orders.status_code
    -- orders.total_price,
    -- line_items.order_key,
    -- line_items.quantity,
    -- line_items.extended_price,
    -- line_items.discount,
    -- line_items.tax
FROM
    dbt_db.dbt_schema.stg_tpch_orders as orders
LEFT JOIN
    dbt_db.dbt_schema.stg_tpch_lineitems as line_items
ON
    orders.order_key = line_items.order_key
ORDER BY 
    orders.order_date
        );
      
  