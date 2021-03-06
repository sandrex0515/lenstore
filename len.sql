--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.16
-- Dumped by pg_dump version 9.5.16

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: product; Type: TABLE; Schema: public; Owner: sandrex
--

CREATE TABLE public.product (
    id integer NOT NULL,
    qty integer,
    item character varying,
    status character varying DEFAULT 'pending'::character varying,
    date timestamp without time zone DEFAULT now(),
    price numeric(8,2),
    archived boolean DEFAULT false
);


ALTER TABLE public.product OWNER TO sandrex;

--
-- Name: product_id_seq; Type: SEQUENCE; Schema: public; Owner: sandrex
--

CREATE SEQUENCE public.product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_id_seq OWNER TO sandrex;

--
-- Name: product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sandrex
--

ALTER SEQUENCE public.product_id_seq OWNED BY public.product.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sandrex
--

ALTER TABLE ONLY public.product ALTER COLUMN id SET DEFAULT nextval('public.product_id_seq'::regclass);


--
-- Data for Name: product; Type: TABLE DATA; Schema: public; Owner: sandrex
--

COPY public.product (id, qty, item, status, date, price, archived) FROM stdin;
7	120	EGG PL	pending	2019-04-13 16:37:07.464684	134.00	f
8	180	EGG SM	pending	2019-04-13 16:37:18.237868	140.00	f
9	180	EGG MEDIUM	pending	2019-04-13 16:37:35.127552	145.00	f
10	120	EGG LG	pending	2019-04-13 16:37:48.47183	151.00	f
11	60	EGG XL	pending	2019-04-13 16:38:07.093001	163.00	f
15	2	EQ MEDIUM (36+2 x 6) (228's) (P1,685)	pending	2019-04-13 16:43:19.415158	1685.00	f
16	2	EQ LARGE (36+2 x 6) (204's) (P1,685)	pending	2019-04-13 16:43:48.513959	1685.00	f
17	1	EQ XL (28+2 x 6) (180's) (P1,685)	pending	2019-04-13 16:44:30.820505	1685.00	f
18	1	EQD XXL (24+2 x 6) (156's) (P1,685)	pending	2019-04-13 16:45:12.916555	1685.00	f
19	5	CADMA ADULT "A" Medium (10s x 8) 80s -- 12.00	pending	2019-04-13 16:45:55.803028	920.00	f
20	2	CADMA ADULT "A" Large (8s x 8) 64s -- 14.50	pending	2019-04-13 16:47:24.871878	896.00	f
21	1	Those w/ Wings (8s x 60) -- NEW PRICE(1.76)	pending	2019-04-13 16:48:37.901997	847.00	f
24	4	Dish liter -G  -- 10 box promo (25.75) 306	pending	2019-04-13 16:51:51.641078	306.00	f
25	3	Dish liter -T  -- 10 box promo (25.75) 306	pending	2019-04-13 16:52:03.572193	306.00	f
26	3	Dish liter -A  -- 10 box promo (25.75) 306	pending	2019-04-13 16:52:12.105108	306.00	f
27	3	Fab soft liter -B --5 box promo -- (22.75)	pending	2019-04-13 16:54:39.314077	270.00	f
28	3	Fab soft liter -P --5 box promo -- (22.75)	pending	2019-04-13 16:54:46.221629	270.00	f
75	18	PRIDE BAR KAL 400G(20.50)	pending	2019-04-13 18:38:02.072246	20.50	f
76	150	PRIDE LAUNDRY 40G	pending	2019-04-13 18:38:26.347463	4.25	f
30	1	Class B -- XL -- (4.34)	pending	2019-04-13 16:56:24.596006	781.20	f
29	5	Class B -- medium -- (3.64)	pending	2019-04-13 16:55:40.025331	655.20	f
23	2	THRIFT 2Ply(72 rolls) -- (6.15)	pending	2019-04-13 16:50:24.615439	442.80	f
77	46	PRIDE LAUNDRY 500G (46)	pending	2019-04-13 18:39:00.354095	46.00	f
14	4	HR XL (30+4) x 6 packs) 204's --BOX -- (5.27)	pending	2019-04-13 16:42:13.794064	1075.85	f
13	5	HR LARGE(30+4) x 6 packs) 204's --BOX -- (4.78)	pending	2019-04-13 16:41:23.472951	976.09	f
12	1	HR SMALL(30+4) x 6 packs) 204's --BOX -- (3.62)	pending	2019-04-13 16:40:30.980481	738.48	f
22	2	Those None Wings (8s x 60) -- NEW PRICE(1.32)	pending	2019-04-13 16:49:07.56405	663.60	f
34	18	PRIDE BAR SPECKLED 400G	pending	2019-04-13 17:44:16.872301	20.50	f
35	18	PRIDE BAR FABCON 400G	pending	2019-04-13 17:44:45.374602	20.50	f
36	72	PRIDE BAR WHITE 1/4 CUT 100G	pending	2019-04-13 17:45:05.369887	5.25	f
37	72	PRIDE BAR BLUE 1/4 CUT 100G	pending	2019-04-13 17:45:19.619293	5.25	f
38	1	SMART PASTE LEMON 200G (21.50)	pending	2019-04-13 17:46:39.023053	1032.00	f
39	1	SMART PASTE LEMON 420G (38.75)	pending	2019-04-13 17:47:06.905425	1395.00	f
40	1	SMART PASTE KAL 200G (21.50)	pending	2019-04-13 17:47:40.462811	1032.00	f
41	1	SMART PASTE KAL 420G (38.75)	pending	2019-04-13 17:48:03.697389	1395.00	f
42	8	SHIELD BATH SOAP PINK	pending	2019-04-13 17:50:32.404953	52.50	f
43	8	SHIELD BATH SOAP WHITE	pending	2019-04-13 17:50:46.82061	52.50	f
44	8	SHIELD BATH SOAP BEIGE	pending	2019-04-13 17:50:53.912753	52.50	f
45	6	KLSN DISWASHING LIQUID ANTIBAC 250ML	pending	2019-04-13 17:51:29.6818	42.75	f
46	6	KLSN DISWASHING LIQUID LEMON 250ML	pending	2019-04-13 17:51:50.459267	40.75	f
47	6	KLSN DISWASHING LIQUID KAL 250ML	pending	2019-04-13 17:52:00.217529	40.75	f
48	5	TOILET BOWL CLEANER 500ML	pending	2019-04-13 17:52:23.248409	70.75	f
49	2	KML35 MAKINIS 135G	pending	2019-04-13 18:03:51.988833	33.25	f
50	10	KK45 KLIN 365	pending	2019-04-13 18:04:36.240284	35.00	f
51	5	COLORED SMALL (20X 12) -- B3 -- (3.55)	pending	2019-04-13 18:05:52.90939	792.00	f
52	10	COLORED MEDIUM (15X 12) -- B3 -- (34.15)	pending	2019-04-13 18:06:36.75563	702.00	f
53	10	COLORED LARGE (15X 12) -- B3 -- (4.60)	pending	2019-04-13 18:07:17.188801	783.00	f
54	5	COLORED XL (15X 12) -- B3 -- (5)	pending	2019-04-13 18:07:50.032392	855.00	f
55	5	MR CHECKRED SMALL -- (4.50) - INCREASE	pending	2019-04-13 18:08:56.075606	810.00	f
56	10	M CHECKRED MEDIUM -- (5) - INCREASE	pending	2019-04-13 18:09:33.679177	900.00	f
57	10	M CHECKRED LARGE-- (5.50) - INCREASE	pending	2019-04-13 18:09:48.437393	990.00	f
58	7	M CHECKRED XL-- (5.90) - INCREASE	pending	2019-04-13 18:10:29.586742	1062.00	f
59	3	D FRESH SMALL -- (4.90	pending	2019-04-13 18:11:02.561329	855.00	f
60	5	D FRESH XL-- (6.50)	pending	2019-04-13 18:11:37.541129	1143.00	f
61	2	D FRESH XXL-- (7.00)	pending	2019-04-13 18:11:56.214884	1224.00	f
62	10	H PANTS MEDIUM (24S X 8 ) 192S -- (6.15) -- (10++ PROMO)	pending	2019-04-13 18:12:50.615501	1132.80	f
63	10	H PANTS LARGE (24S X 8 ) 192S -- (6.85) -- (10++ PROMO)	pending	2019-04-13 18:13:54.026285	1267.20	f
64	5	H PANTS XL (24S X 8 ) 192S -- (7.45)	pending	2019-04-13 18:14:29.060522	1382.40	f
65	3	H PANTS XXL (24S X 8 ) 192S -- (7.85)	pending	2019-04-13 18:14:53.877491	1459.20	f
66	1	PRIDE FABCON 500G (49.50)	pending	2019-04-13 18:16:39.980311	1188.00	f
67	6	PRIDE FABCON 1000G(97)	pending	2019-04-13 18:17:12.83934	97.00	f
68	3	PRIDE FABCON 2000G(192)	pending	2019-04-13 18:32:38.659507	192.00	f
69	150	PRIDE KAL 40G (4)	pending	2019-04-13 18:33:08.094616	4.00	f
70	12	PRIDE KAL 500G (45)	pending	2019-04-13 18:36:27.841866	45.00	f
71	3	PRIDE KAL 1000G(88)	pending	2019-04-13 18:36:54.759912	88.00	f
72	3	PRIDE KAL 2000G(174)	pending	2019-04-13 18:37:20.669573	174.00	f
73	18	PRIDE BAR WHITE 400G(20.50)	pending	2019-04-13 18:37:47.421317	20.50	f
74	18	PRIDE BAR BLUE 400G(20.50)	pending	2019-04-13 18:37:56.05718	20.50	f
78	6	PRIDE LAUNDRY 1000G(90)	pending	2019-04-13 18:39:19.309583	90.00	f
79	3	PRIDE LAUNDRY 2000G(178)	pending	2019-04-13 18:39:37.34082	178.00	f
80	150	PRIDE ANTIBAC 40G (4.25)	pending	2019-04-13 18:39:58.762169	4.25	f
81	12	PRIDE ANTIBAC 500G (48.5)	pending	2019-04-13 18:40:28.914334	48.50	f
82	6	PRIDE ANTIBAC 1000G (95)	pending	2019-04-13 18:40:54.040624	95.00	f
83	3	PRIDE ANTIBAC 2000G (188)	pending	2019-04-13 18:41:09.492629	188.00	f
84	150	PRIDE FABCON 40G (4.25)	pending	2019-04-13 18:41:27.941978	4.25	f
85	23	DISH LITER -- 10 BOX PROMO (25.75)	pending	2019-04-13 18:43:16.744207	306.00	f
86	5	DISH LITER -- 10 BOX PROMO (25.75)	pending	2019-04-13 18:43:48.804949	306.00	f
87	5	DISH LITER -- 10 BOX PROMO (25.75)	pending	2019-04-13 18:43:51.681729	306.00	f
88	1	ARIEL=TYPE(KILO) (25S) --30.50	pending	2019-04-13 18:44:29.656824	762.50	f
89	1	W/ FABSOFT (KILO) 25S -- 30.50	pending	2019-04-13 18:44:56.300702	762.50	f
90	4	OK CHEESE 180GMS	pending	2019-04-13 18:49:29.630526	1700.00	f
91	1	EDEN CHEESE 180G	pending	2019-04-13 18:49:41.222014	2100.00	f
92	3	DISHWASHING- C 12'S	pending	2019-04-13 18:49:59.59659	288.00	f
93	3	DISHWASHING- L 12'S	pending	2019-04-13 18:50:09.707537	288.00	f
94	2	DISHWASHING- CIT 12'S	pending	2019-04-13 18:50:25.706772	288.00	f
95	25	SOLAR DETERGENT	pending	2019-04-13 18:50:41.092355	45.00	f
96	25	DETERGENT P = ANROX	pending	2019-04-13 18:50:58.54773	45.00	f
97	4	80Z CLEARPLA	pending	2019-04-13 18:51:57.507639	249.00	f
98	1	MINI 50M	pending	2019-04-13 18:57:49.14034	2300.00	f
99	1	T 40M	pending	2019-04-13 18:58:10.928267	2080.00	f
100	1	M 28M	pending	2019-04-13 18:58:30.337635	2912.00	f
101	1	L 18M	pending	2019-04-13 18:58:56.087305	3312.00	f
102	1	W 20M	pending	2019-04-13 18:59:16.644092	2900.00	f
103	1	SH 20M	pending	2019-04-13 18:59:31.590422	2969.00	f
104	1	TH 20M	pending	2019-04-13 18:59:53.072564	2960.00	f
105	1	STX 20M	pending	2019-04-13 19:00:09.872128	2780.00	f
106	3	1X10 15M	pending	2019-04-13 19:00:36.008526	250.00	f
107	3	1 1/2X10 15M	pending	2019-04-13 19:00:53.381473	305.00	f
108	3	1 3/4X10 15M	pending	2019-04-13 19:01:20.465908	330.00	f
109	3	2X10 15M	pending	2019-04-13 19:01:39.101286	300.00	f
110	3	1 1/4 X 10	pending	2019-04-13 19:01:56.392689	290.00	f
111	4	ROYAL 90G	pending	2019-04-13 19:02:17.765587	510.00	f
112	4	PURITY	pending	2019-04-13 19:02:53.789014	235.00	f
113	1	8X11 HDC 50M	pending	2019-04-13 19:03:22.21182	3680.00	f
114	2	8X11 OK 50M	pending	2019-04-13 19:04:15.67951	860.00	f
115	2	KOPI SC	pending	2019-04-13 19:04:30.806554	74.00	f
117	10	80Z SONIC	pending	2019-04-13 19:05:40.37193	255.00	f
118	10	10OZ	pending	2019-04-13 19:06:02.440001	355.00	f
119	2	VIKIN KP 20	pending	2019-04-13 19:06:21.302275	165.00	f
120	2	VIKIN KPS	pending	2019-04-13 19:06:33.151128	200.00	f
121	2	VIKING HPW	pending	2019-04-13 19:06:56.328243	175.00	f
122	2	VIKING HPS	pending	2019-04-13 19:07:09.764645	225.00	f
123	2	SOGO AF 5M	pending	2019-04-13 19:08:18.394702	485.00	f
124	1	REY SM JR	pending	2019-04-13 19:08:32.62101	820.00	f
125	2	DURA S	pending	2019-04-13 19:08:51.388611	210.00	f
126	1	MEGAPOP SMW	pending	2019-04-13 19:09:14.136789	730.00	f
127	1	MEGAPOP FMW	pending	2019-04-13 19:09:24.890724	730.00	f
128	5	6X10 HDC	pending	2019-04-13 19:09:40.181803	57.00	f
129	5	6X10 04	pending	2019-04-13 19:09:55.998713	92.00	f
130	10	4X8 04	pending	2019-04-13 19:10:52.069473	53.00	f
131	5	CAL LB3	pending	2019-04-13 19:11:19.157983	150.00	f
133	20	MINI CE	pending	2019-04-13 19:12:26.635465	165.00	f
134	20	T CE	pending	2019-04-13 19:12:44.286485	200.00	f
135	20	M CE	pending	2019-04-13 19:13:00.207167	395.00	f
136	20	L CE	pending	2019-04-13 19:13:16.07381	655.00	f
137	5	4X10 1/2 CWO 1	pending	2019-04-13 19:14:02.908106	172.00	f
138	2	SKY BLUE	pending	2019-04-13 19:14:24.502675	390.00	f
139	2	PC STIRRER	pending	2019-04-13 19:14:35.620493	110.00	f
140	1	SMW	pending	2019-04-13 19:14:49.73826	850.00	f
141	1	FMW CLASS A	pending	2019-04-13 19:15:02.334981	850.00	f
\.


--
-- Name: product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sandrex
--

SELECT pg_catalog.setval('public.product_id_seq', 141, true);


--
-- Name: product_pkey; Type: CONSTRAINT; Schema: public; Owner: sandrex
--

ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (id);


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

