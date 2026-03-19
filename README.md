The docker-compose folder contains an example project setting up:
* postgres DB
* Unity primary instance (using shared postgres)
* Unity replica instance (using shared postgres)
* HAproxy

Whole stack can be started from the top level docker-compose.yml file, but there are also separate docker compose files in service folders, allowing to start the serivces individually.

It is trivial to trim down the project to just use Postgres and a single Unity instance.
