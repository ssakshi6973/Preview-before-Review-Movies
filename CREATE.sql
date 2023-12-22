CREATE TABLE reviews (
    movie_link VARCHAR NULL,
    critic_name VARCHAR NULL,
    top_critic BOOLEAN NULL,
    publisher VARCHAR NULL,
    review_type VARCHAR NULL,
    review_score VARCHAR NULL,
    review_date DATE NULL
);

CREATE TABLE movies (
    movie_link VARCHAR PRIMARY KEY NOT NULL,
    title VARCHAR,
    audi_rating INT,
    genre VARCHAR,
    release_date DATE,
    runtime INT
);