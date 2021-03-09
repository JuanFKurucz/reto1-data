--
-- PostgreSQL database dump
--

-- Dumped from database version 12.4
-- Dumped by pg_dump version 12.4

-- Started on 2021-03-05 21:39:45 -03

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
-- TOC entry 208 (class 1259 OID 17808)
-- Name: bioinformatica_client; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bioinformatica_client (
    created timestamp without time zone,
    removed timestamp without time zone,
    client_id integer,
    name character varying(200),
    address character varying(200),
    email character varying(200),
    phone character varying(200)
);


ALTER TABLE public.bioinformatica_client OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 17821)
-- Name: bioinformatica_contact; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bioinformatica_contact (
    created timestamp without time zone,
    removed timestamp without time zone,
    contact_id integer,
    name character varying(200),
    last_name character varying(200),
    email character varying(200),
    phone character varying(200),
    client_id integer
);


ALTER TABLE public.bioinformatica_contact OWNER TO postgres;

--
-- TOC entry 207 (class 1259 OID 17799)
-- Name: bioinformatica_dynamicattributedefinition; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bioinformatica_dynamicattributedefinition (
    created timestamp without time zone,
    removed timestamp without time zone,
    dynamicattributedef_id integer,
    attribute_name character varying(120),
    attribute_description text
);


ALTER TABLE public.bioinformatica_dynamicattributedefinition OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 17817)
-- Name: bioinformatica_dynamicattributeinstance; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bioinformatica_dynamicattributeinstance (
    created timestamp without time zone,
    removed timestamp without time zone,
    dynamicattributeinst_id integer,
    attribute_value character varying(120),
    attribute_type_id integer,
    experiment_attributes_id integer
);


ALTER TABLE public.bioinformatica_dynamicattributeinstance OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 17830)
-- Name: bioinformatica_experiment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bioinformatica_experiment (
    created timestamp without time zone,
    removed timestamp without time zone,
    experiment_id integer,
    name character varying(120),
    place character varying(200),
    date timestamp without time zone,
    location character varying(200),
    state character varying(120),
    executioncommands text,
    project_id_id integer
);


ALTER TABLE public.bioinformatica_experiment OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 17783)
-- Name: bioinformatica_fast5; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bioinformatica_fast5 (
    created timestamp without time zone,
    removed timestamp without time zone,
    fast5_id integer,
    name character varying(240),
    date_created timestamp without time zone,
    file character varying(100),
    experiment_id integer,
    sample_id integer
);


ALTER TABLE public.bioinformatica_fast5 OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 17787)
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
-- TOC entry 205 (class 1259 OID 17791)
-- Name: bioinformatica_fastqfile; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bioinformatica_fastqfile (
    id integer,
    created timestamp without time zone,
    removed timestamp without time zone,
    file character varying(100),
    fastq_id integer
);


ALTER TABLE public.bioinformatica_fastqfile OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 17839)
-- Name: bioinformatica_project; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bioinformatica_project (
    created timestamp without time zone,
    removed timestamp without time zone,
    project_id integer,
    name character varying(200),
    description text,
    create_date timestamp without time zone,
    contact_id integer,
    projects_id integer
);


ALTER TABLE public.bioinformatica_project OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 17795)
-- Name: bioinformatica_sample; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bioinformatica_sample (
    created timestamp without time zone,
    removed timestamp without time zone,
    sample_id integer,
    date_created timestamp without time zone,
    responsible character varying(120),
    location character varying(120),
    experiment_id integer
);


ALTER TABLE public.bioinformatica_sample OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 17780)
-- Name: config_control; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.config_control (
    last_check timestamp with time zone
);


ALTER TABLE public.config_control OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 17852)
-- Name: tax_family; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tax_family (
    id integer NOT NULL,
    taxid character varying,
    rel_abundance numeric,
    sample_id numeric NOT NULL
);


ALTER TABLE public.tax_family OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 17850)
-- Name: tax_family_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tax_family_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tax_family_id_seq OWNER TO postgres;

--
-- TOC entry 3239 (class 0 OID 0)
-- Dependencies: 213
-- Name: tax_family_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tax_family_id_seq OWNED BY public.tax_family.id;


--
-- TOC entry 218 (class 1259 OID 17874)
-- Name: tax_genus; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tax_genus (
    id integer NOT NULL,
    taxid character varying,
    rel_abundance numeric,
    sample_id numeric NOT NULL
);


ALTER TABLE public.tax_genus OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 17872)
-- Name: tax_genus_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tax_genus_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tax_genus_id_seq OWNER TO postgres;

--
-- TOC entry 3240 (class 0 OID 0)
-- Dependencies: 217
-- Name: tax_genus_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tax_genus_id_seq OWNED BY public.tax_genus.id;


--
-- TOC entry 216 (class 1259 OID 17863)
-- Name: tax_order; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tax_order (
    id integer NOT NULL,
    taxid character varying,
    rel_abundance numeric,
    sample_id numeric NOT NULL
);


ALTER TABLE public.tax_order OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 17861)
-- Name: tax_order_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tax_order_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tax_order_id_seq OWNER TO postgres;

--
-- TOC entry 3241 (class 0 OID 0)
-- Dependencies: 215
-- Name: tax_order_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tax_order_id_seq OWNED BY public.tax_order.id;


--
-- TOC entry 220 (class 1259 OID 17885)
-- Name: tax_species; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tax_species (
    id integer NOT NULL,
    taxid character varying,
    rel_abundance numeric,
    sample_id numeric NOT NULL
);


ALTER TABLE public.tax_species OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 17883)
-- Name: tax_species_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tax_species_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tax_species_id_seq OWNER TO postgres;

--
-- TOC entry 3242 (class 0 OID 0)
-- Dependencies: 219
-- Name: tax_species_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tax_species_id_seq OWNED BY public.tax_species.id;


--
-- TOC entry 3077 (class 2604 OID 17855)
-- Name: tax_family id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tax_family ALTER COLUMN id SET DEFAULT nextval('public.tax_family_id_seq'::regclass);


--
-- TOC entry 3079 (class 2604 OID 17877)
-- Name: tax_genus id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tax_genus ALTER COLUMN id SET DEFAULT nextval('public.tax_genus_id_seq'::regclass);


--
-- TOC entry 3078 (class 2604 OID 17866)
-- Name: tax_order id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tax_order ALTER COLUMN id SET DEFAULT nextval('public.tax_order_id_seq'::regclass);


--
-- TOC entry 3080 (class 2604 OID 17888)
-- Name: tax_species id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tax_species ALTER COLUMN id SET DEFAULT nextval('public.tax_species_id_seq'::regclass);


--
-- TOC entry 3221 (class 0 OID 17808)
-- Dependencies: 208
-- Data for Name: bioinformatica_client; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bioinformatica_client (created, removed, client_id, name, address, email, phone) FROM stdin;
\.


--
-- TOC entry 3223 (class 0 OID 17821)
-- Dependencies: 210
-- Data for Name: bioinformatica_contact; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bioinformatica_contact (created, removed, contact_id, name, last_name, email, phone, client_id) FROM stdin;
\.


--
-- TOC entry 3220 (class 0 OID 17799)
-- Dependencies: 207
-- Data for Name: bioinformatica_dynamicattributedefinition; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bioinformatica_dynamicattributedefinition (created, removed, dynamicattributedef_id, attribute_name, attribute_description) FROM stdin;
\.


--
-- TOC entry 3222 (class 0 OID 17817)
-- Dependencies: 209
-- Data for Name: bioinformatica_dynamicattributeinstance; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bioinformatica_dynamicattributeinstance (created, removed, dynamicattributeinst_id, attribute_value, attribute_type_id, experiment_attributes_id) FROM stdin;
\.


--
-- TOC entry 3224 (class 0 OID 17830)
-- Dependencies: 211
-- Data for Name: bioinformatica_experiment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bioinformatica_experiment (created, removed, experiment_id, name, place, date, location, state, executioncommands, project_id_id) FROM stdin;
\.


--
-- TOC entry 3216 (class 0 OID 17783)
-- Dependencies: 203
-- Data for Name: bioinformatica_fast5; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bioinformatica_fast5 (created, removed, fast5_id, name, date_created, file, experiment_id, sample_id) FROM stdin;
\.


--
-- TOC entry 3217 (class 0 OID 17787)
-- Dependencies: 204
-- Data for Name: bioinformatica_fastq; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bioinformatica_fastq (created, removed, fastq_id, name, date_created, experiment_id, sample_id) FROM stdin;
\.


--
-- TOC entry 3218 (class 0 OID 17791)
-- Dependencies: 205
-- Data for Name: bioinformatica_fastqfile; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bioinformatica_fastqfile (id, created, removed, file, fastq_id) FROM stdin;
\.


--
-- TOC entry 3225 (class 0 OID 17839)
-- Dependencies: 212
-- Data for Name: bioinformatica_project; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bioinformatica_project (created, removed, project_id, name, description, create_date, contact_id, projects_id) FROM stdin;
\.


--
-- TOC entry 3219 (class 0 OID 17795)
-- Dependencies: 206
-- Data for Name: bioinformatica_sample; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bioinformatica_sample (created, removed, sample_id, date_created, responsible, location, experiment_id) FROM stdin;
\.


--
-- TOC entry 3215 (class 0 OID 17780)
-- Dependencies: 202
-- Data for Name: config_control; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.config_control (last_check) FROM stdin;
\N
\.


--
-- TOC entry 3227 (class 0 OID 17852)
-- Dependencies: 214
-- Data for Name: tax_family; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tax_family (id, taxid, rel_abundance, sample_id) FROM stdin;
\.


--
-- TOC entry 3231 (class 0 OID 17874)
-- Dependencies: 218
-- Data for Name: tax_genus; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tax_genus (id, taxid, rel_abundance, sample_id) FROM stdin;
\.


--
-- TOC entry 3229 (class 0 OID 17863)
-- Dependencies: 216
-- Data for Name: tax_order; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tax_order (id, taxid, rel_abundance, sample_id) FROM stdin;
\.


--
-- TOC entry 3233 (class 0 OID 17885)
-- Dependencies: 220
-- Data for Name: tax_species; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tax_species (id, taxid, rel_abundance, sample_id) FROM stdin;
\.


--
-- TOC entry 3243 (class 0 OID 0)
-- Dependencies: 213
-- Name: tax_family_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tax_family_id_seq', 1, false);


--
-- TOC entry 3244 (class 0 OID 0)
-- Dependencies: 217
-- Name: tax_genus_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tax_genus_id_seq', 1, false);


--
-- TOC entry 3245 (class 0 OID 0)
-- Dependencies: 215
-- Name: tax_order_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tax_order_id_seq', 1, false);


--
-- TOC entry 3246 (class 0 OID 0)
-- Dependencies: 219
-- Name: tax_species_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tax_species_id_seq', 1, false);


--
-- TOC entry 3082 (class 2606 OID 17860)
-- Name: tax_family tax_family_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tax_family
    ADD CONSTRAINT tax_family_pkey PRIMARY KEY (id);


--
-- TOC entry 3086 (class 2606 OID 17882)
-- Name: tax_genus tax_genus_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tax_genus
    ADD CONSTRAINT tax_genus_pkey PRIMARY KEY (id);


--
-- TOC entry 3084 (class 2606 OID 17871)
-- Name: tax_order tax_order_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tax_order
    ADD CONSTRAINT tax_order_pkey PRIMARY KEY (id);


--
-- TOC entry 3088 (class 2606 OID 17893)
-- Name: tax_species tax_species_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tax_species
    ADD CONSTRAINT tax_species_pkey PRIMARY KEY (id);


-- Completed on 2021-03-05 21:39:46 -03

--
-- PostgreSQL database dump complete
--

