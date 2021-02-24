# Reto 1 - Data env test

This repo aims to test and try solutions for logging systems through the Reto 1 application.

Currently it consist of a set of containers:

- mongo: database used for graylog
- elasticsearch: database used for graylog
- graylog: logging system which runs in http://127.0.0.1:9000/
- web_db: database used for sample django website
- web: sample django website which runs in http://127.0.0.1:8000/

## How to use

- Run `docker-compose up` in the root folder, it should install and run all the containers
- You will have to create a GELF UDP input in http://127.0.0.1:9000/system/inputs in bin address 0.0.0.0 and port 12201
- After that visting http://127.0.0.1:8000/hello/ should generate logs

## Greylog credentials

Credentials for greylog system are:

```
Username: admin
Password: admin
```
