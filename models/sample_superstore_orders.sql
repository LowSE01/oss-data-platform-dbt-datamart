select        orders.row_id,
              orders.order_id,
              orders.order_date,
              orders.ship_date,
              ship_modes.ship_mode,
              customers.customer_id,
              customers.customer_name,
              customers.segment,
              cities.country,
              cities.region,
              cities.city,
              cities.state,
              orders.postal_code,
              cities.region_id,
              products.product_id,
              products.category,
              products.sub_category,
              products.product_name,
              orders.sales,
              orders.quantity,
              orders.discount,
              orders.profit,
              regional_managers.regional_manager,
              returns.returned
from          datawarehouse.sample_superstore_orders                      orders
  left join   datawarehouse.sample_superstore_products                    products
    on        products.product_id = orders.product_id
  left join   datawarehouse.sample_superstore_customers                   customers
    on        customers.customer_id = orders.customer_id
  left join   datawarehouse.sample_superstore_cities                      cities
    on        cities.city_id = orders.city_id
  left join   datawarehouse.sample_superstore_ship_modes                  ship_modes
    on        ship_modes.ship_mode_id = orders.ship_mode_id
  left join   datawarehouse.sample_superstore_regional_managers           regional_managers
    on        regional_managers.region_id = cities.region_id
  left join   datawarehouse.sample_superstore_returns                     returns
    on        returns.order_id = orders.order_id
