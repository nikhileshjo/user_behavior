# User Behaviour
This is a data engineering project that demonstrates how we can deliver data to analysts. We assume that the analysis is about analysing customer behaviour on a online commercial website.

## Source Database
* The source database is Postgres database, we assume this is the OLTP platform where the user purchases are recorded. 
* This is auto-populated on start-up by a CSV file, so, it doesn't update over time.
* The data is persistent in the local host, so if you want to wipe-out the data, delete the persitent folder or drop the tables, otherwise you'll see duplicate data.

## Object Storage
* We're using a minio container for object storage, this is the place we assume where the client drops their file.
* Use this as a reference to set up Minio: https://www.youtube.com/watch?v=tRlEctAwkk8
* Usually, we have seperate buckets for the client and internal use, so we will create one bucket "client-files" and another bucket "internal-files" for our internal use.
* These are the links to it:
    - API URL: localhost:9000
    - WebUI: localhost:9001

## Tranformation
* We're using a Spark server for our transformations.
* Scrpts that run on the server are stored in the "scripts" folder.
* The spark jobs need external packages to be installed before we can connect to Minio, an init script sets it up.

## Datawarehouse
* We're using Duckdb as our datawarehousing tool.
* There are 2 layers to this container, this is a ubuntu container that installs duckdb as soon as it starts running, so you'll wait for a while before starting duckdb tasks, this will allow it some time to install, please check the logs for any issues with the installations.
* To start using DuckDB make use of `docker exec -it datawarehouse /root/.duckdb/cli/latest/duckdb` and you'll directly enter CLI mode for duckdb.
* We use duckdb because it's light and analytical focused, we can use it in our local machines without adding too much load to the machine.