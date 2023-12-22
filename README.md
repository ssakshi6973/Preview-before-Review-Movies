# Preview-before-Review-Movies
**Preview before Review Movies is the academic project for Fall 2023.

It containes the movie and review dataset, based upon the user requirement one can query out the data and get the desired result.**

**How was data imported in Azure Data Studio?**
i) The azure data studio is running via Docker, its running through a docker container.

ii) It provides the flexibility to install the PostgreSQL extension at azure data studio. But that didn’t start the PostgreSQL, since my environment is in docker we created a docker-compose.yml file which states the environment variables for the PostgreSQL. Below are details of my PostgreSQL container
ED          STATUS          PORTS                              NAMES
b74cff39bf79   postgres:14.1-alpine               "docker-entrypoint.s…"   15 minutes ago   Up 15 minutes   0.0.0.0:5432->5432/tcp             dcoker-db-1

iii) Once we run the file and installed the extension in the studio, we try to connect to PostgreSQL by providing username and password.

iv) Now we first create the table structure for both movies and reviews table, create.sql file in the submission folder contains the query that created the tables.


v) We need to create directory in the container of PostgreSQL to copy csv file from local machine to the particular PostgreSQL container. Below command was used to create the directory.
docker exec -it b74cff39bf79 /bin/sh
/ # mkdir -p /path/in/container
/ # exit
vi) Now we copy the csv files from local machine to docker container of postgresql that was done by the command :

cp /Users/ssakshi697/Desktop/DMQL/Project/Phase\ 2/movies_updated.csv b74cff39bf79:/path/in/container/movies-updated.csv
vii) Now finally we copy this data into out tables. Load.sql file in the submission contains the query that was executed to create the database.

