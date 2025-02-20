SELECT
    orders.*,
    order_item_summary.gross_item_sales_amount,
    order_item_summary.item_discount_amount
FROM
    dbt_db.dbt_schema.stg_tpch_orders as orders
LEFT JOIN 
    dbt_db.dbt_schema.int_order_items_summary as order_item_summary
ON
    orders.order_key = order_item_summary.order_key
ORDER BY
    order_date