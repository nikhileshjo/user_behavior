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