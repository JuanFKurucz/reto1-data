--
-- PostgreSQL database dump
--

-- Dumped from database version 12.4
-- Dumped by pg_dump version 12.4

-- Started on 2021-03-08 21:12:56 -03

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 212 (class 1259 OID 17964)
-- Name: bioinformatica_fastq; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bioinformatica_fastq (
    created timestamp without time zone,
    removed timestamp without time zone,
    fastq_id integer,
    name character varying(240),
    date_created timestamp without time zone,
    experiment_id integer,
    sample_id integer
);


ALTER TABLE public.bioinformatica_fastq OWNER TO postgres;

--
-- TOC entry 3194 (class 0 OID 17964)
-- Dependencies: 212
-- Data for Name: bioinformatica_fastq; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bioinformatica_fastq (created, removed, fastq_id, name, date_created, experiment_id, sample_id) FROM stdin;
2021-03-01 10:23:54	\N	\N	ppa	2021-03-01 10:23:54	1	1
2021-03-01 10:23:54	\N	\N	hello	2021-03-01 10:23:54	2	2
2021-03-01 10:23:54	\N	\N	world	2021-03-01 10:23:54	2	2
\.


-- Completed on 2021-03-08 21:12:57 -03

--
-- PostgreSQL database dump complete
--

