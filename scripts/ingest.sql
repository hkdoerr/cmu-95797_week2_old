--Create tables for specified file gorups
CREATE TABLE bike_data AS
SELECT * FROM read_csv_auto('data/bike/*.csv.gz', union_by_name=True, filename=True, all_varchar=True);

CREATE TABLE central_park_weather AS
SELECT * FROM read_csv_auto('data/central_park_weather.csv', filename=True);

CREATE TABLE daily_citi_bike_trip_counts_and_weather AS
SELECT * FROM read_csv_auto('data/daily_citi_bike_trip_counts_and_weather.csv', filename=True);

CREATE TABLE fhv_bases AS
SELECT * FROM read_csv_auto('data/fhv_bases.csv', filename=True);

CREATE TABLE fhv_tripdata AS 
SELECT * FROM read_parquet('data/taxi/fhv_tripdata*.parquet', filename=True);

CREATE TABLE fhvhv_tripdata AS 
SELECT * FROM read_parquet('data/taxi/fhvhv_tripdata*.parquet', filename=True);

CREATE TABLE green_tripdata AS 
SELECT * FROM read_parquet('data/taxi/green_tripdata*.parquet', filename=True);
