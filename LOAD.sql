COPY movies FROM '/path/in/container/movies-updated.csv' DELIMITER E ',' CSV HEADER;
COPY reviews FROM '/path/in/container/reviews.csv' DELIMITER ',' CSV HEADER;