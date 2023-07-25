SELECT id,listing_url,name,30-availability_30 AS booked_out_30,
CAST(REPLACE(price,'$','')AS UNSIGNED)AS price_clean,
CAST(REPLACE(price,'$','')AS UNSIGNED)*(30-availability_30)AS proj_rev_30
FROM products.listings ORDER BY proj_rev_30 DESC LIMIT 20;