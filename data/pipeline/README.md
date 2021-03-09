# Pentaho pipeline

## Required to run

A database named `stg` has to be created aand the following tables have to be created manually too:

```sql
CREATE TABLE public.config_control
(
    last_check timestamp with time zone
)
TABLESPACE pg_default;

INSERT INTO public.config_control (last_check) VALUES ('1990-01-01 01:01:01-03');
```

```sql
CREATE TABLE public.csvload_control
(
    fastq_id integer NOT NULL,
    project_id integer NOT NULL,
    sample_id integer NOT NULL,
    experiment_id integer NOT NULL,
    path text COLLATE pg_catalog."default",
    uploaded_tax_family boolean,
    uploaded_tax_genus boolean,
    uploaded_tax_order boolean,
    uploaded_tax_species boolean,
    CONSTRAINT csvload_control_pkey PRIMARY KEY (fastq_id)
)
TABLESPACE pg_default;
```

## Configuration

In the file `Main.kjb` the fields inside parameters can be edited to point to different databases and paths to load csv.

- DB_DWH_HOST: data ware house database hostname
- DB_DWH_PORT: data ware house database port
- DB_DWH_NAME: data ware house database name
- DB_DWH_PASS: data ware house database password
- DB_DWH_USER: data ware house database username

- DB_PROD_HOST: django production database hostname
- DB_PROD_PORT: django production database port
- DB_PROD_NAME: django production database name
- DB_PROD_PASS: django production database password
- DB_PROD_USER: django production database username

- DB_STG_HOST: staging database hostname
- DB_STG_PORT: staging database port
- DB_STG_NAME: staging database name
- DB_STG_PASS: staging database password
- DB_STG_USER: staging database username

- FASTQ_ROOT_PATH: root folder for folders where fastq files are stored.
