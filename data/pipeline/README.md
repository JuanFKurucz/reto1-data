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
