DROP TABLE IF EXISTS locations, weather, events, yelp;


CREATE TABLE IF NOT EXISTS locations (
id SERIAL PRIMARY KEY,
search_query  VARCHAR(255), 
formatted_query VARCHAR(255), 
latitude NUMERIC(10,7), 
longitude NUMERIC(10,7)
);

CREATE TABLE IF NOT EXISTS weather (
id SERIAL PRIMARY KEY,
forecast VARCHAR(500),
time VARCHAR(255),
location_id INTEGER
);

CREATE TABLE IF NOT EXISTS events (
id SERIAL PRIMARY KEY,
link VARCHAR(500),
name VARCHAR(255),
event_date VARCHAR(255),
summary VARCHAR(255),
location_id INTEGER
);

-- CREATE TABLE IF NOT EXISTS movies (
-- id SERIAL PRIMARY KEY,
-- name  VARCHAR(255), 
-- image_url VARCHAR(500),
-- price VARCHAR(6),
-- rating NUMERIC(3,2),
-- url VARCHAR(500),
-- location_id INTEGER
-- );

CREATE TABLE IF NOT EXISTS yelp (
id SERIAL PRIMARY KEY,
name  VARCHAR(255), 
image_url VARCHAR(500),
price VARCHAR(6),
rating NUMERIC(3,2),
url VARCHAR(500),
location_id INTEGER
);