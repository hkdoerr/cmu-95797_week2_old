--Count rows for each table created, union together into one result
COPY (
SELECT 'bike_data' as table_name, count(*) as row_count FROM bike_data
UNION
SELECT 'central_park_weather' as table_name, count(*) as row_count FROM central_park_weather
UNION
SELECT 'daily_citi_bike_trip_counts_and_weather' as table_name, count(*) as row_count FROM daily_citi_bike_trip_counts_and_weather
UNION
SELECT 'fhv_bases' as table_name, count(*) as row_count FROM fhv_bases
UNION
SELECT 'fhv_tripdata' as table_name, count(*) as row_count FROM fhv_tripdata
UNION
SELECT 'fhvhv_tripdata' as table_name, count(*) as row_count FROM fhvhv_tripdata
UNION
SELECT 'green_tripdata' as table_name, count(*) as row_count FROM green_tripdata
) TO '/home/hdoerr/row_counts.csv' (HEADER, DELIMITER '|');
