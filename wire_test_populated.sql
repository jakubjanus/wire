--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: comments; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE comments (
    id integer NOT NULL,
    content text,
    user_id integer,
    parent_id integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    post_id integer
);


--
-- Name: comments_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE comments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE comments_id_seq OWNED BY comments.id;


--
-- Name: posts; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE posts (
    id integer NOT NULL,
    title character varying(255),
    text text,
    user_id integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


--
-- Name: posts_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE posts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: posts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE posts_id_seq OWNED BY posts.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE schema_migrations (
    version character varying(255) NOT NULL
);


--
-- Name: users; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE users (
    id integer NOT NULL,
    email character varying(255),
    password character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE users_id_seq OWNED BY users.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY comments ALTER COLUMN id SET DEFAULT nextval('comments_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY posts ALTER COLUMN id SET DEFAULT nextval('posts_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY users ALTER COLUMN id SET DEFAULT nextval('users_id_seq'::regclass);


--
-- Data for Name: comments; Type: TABLE DATA; Schema: public; Owner: -
--

COPY comments (id, content, user_id, parent_id, created_at, updated_at, post_id) FROM stdin;
1	Dzwoń do niego codziennie o 5:30 rano i dzwoń tam cały czas	1	\N	2014-11-28 22:20:23.424817	2014-11-28 22:20:23.424817	1
2	Dzwoń do niego codziennie o 5:30 rano i dzwoń tam cały czas	2	\N	2014-11-28 22:20:23.446324	2014-11-28 22:20:23.446324	2
3	Dzwoń do niego codziennie o 5:30 rano i dzwoń tam cały czas	3	\N	2014-11-28 22:20:23.450185	2014-11-28 22:20:23.450185	3
4	Dzwoń do niego codziennie o 5:30 rano i dzwoń tam cały czas	4	\N	2014-11-28 22:20:23.453398	2014-11-28 22:20:23.453398	4
5	Dzwoń do niego codziennie o 5:30 rano i dzwoń tam cały czas	1	\N	2014-11-28 22:20:23.456495	2014-11-28 22:20:23.456495	5
6	Dzwoń do niego codziennie o 5:30 rano i dzwoń tam cały czas	2	\N	2014-11-28 22:20:23.459475	2014-11-28 22:20:23.459475	6
7	Dzwoń do niego codziennie o 5:30 rano i dzwoń tam cały czas	3	\N	2014-11-28 22:20:23.462642	2014-11-28 22:20:23.462642	7
8	Dzwoń do niego codziennie o 5:30 rano i dzwoń tam cały czas	4	\N	2014-11-28 22:20:23.465846	2014-11-28 22:20:23.465846	8
9	Dzwoń do niego codziennie o 5:30 rano i dzwoń tam cały czas	1	\N	2014-11-28 22:20:23.468987	2014-11-28 22:20:23.468987	9
10	Dzwoń do niego codziennie o 5:30 rano i dzwoń tam cały czas	2	\N	2014-11-28 22:20:23.472276	2014-11-28 22:20:23.472276	10
11	Dzwoń do niego codziennie o 5:30 rano i dzwoń tam cały czas	3	\N	2014-11-28 22:20:23.475437	2014-11-28 22:20:23.475437	11
12	Dzwoń do niego codziennie o 5:30 rano i dzwoń tam cały czas	4	\N	2014-11-28 22:20:23.48037	2014-11-28 22:20:23.48037	12
13	Dzwoń do niego codziennie o 5:30 rano i dzwoń tam cały czas	1	\N	2014-11-28 22:20:23.484318	2014-11-28 22:20:23.484318	13
14	Dzwoń do niego codziennie o 5:30 rano i dzwoń tam cały czas	2	\N	2014-11-28 22:20:23.48809	2014-11-28 22:20:23.48809	14
15	Dzwoń do niego codziennie o 5:30 rano i dzwoń tam cały czas	3	\N	2014-11-28 22:20:23.491731	2014-11-28 22:20:23.491731	15
16	Dzwoń do niego codziennie o 5:30 rano i dzwoń tam cały czas	4	\N	2014-11-28 22:20:23.500346	2014-11-28 22:20:23.500346	16
17	Dzwoń do niego codziennie o 5:30 rano i dzwoń tam cały czas	1	\N	2014-11-28 22:20:23.505649	2014-11-28 22:20:23.505649	17
18	Dzwoń do niego codziennie o 5:30 rano i dzwoń tam cały czas	2	\N	2014-11-28 22:20:23.513435	2014-11-28 22:20:23.513435	18
19	Dzwoń do niego codziennie o 5:30 rano i dzwoń tam cały czas	3	\N	2014-11-28 22:20:23.516652	2014-11-28 22:20:23.516652	19
20	Dzwoń do niego codziennie o 5:30 rano i dzwoń tam cały czas	4	\N	2014-11-28 22:20:23.51977	2014-11-28 22:20:23.51977	20
21	Dzwoń do niego codziennie o 5:30 rano i dzwoń tam cały czas	1	\N	2014-11-28 22:20:23.522896	2014-11-28 22:20:23.522896	1
22	Dzwoń do niego codziennie o 5:30 rano i dzwoń tam cały czas	2	\N	2014-11-28 22:20:23.52625	2014-11-28 22:20:23.52625	2
23	Dzwoń do niego codziennie o 5:30 rano i dzwoń tam cały czas	3	\N	2014-11-28 22:20:23.529467	2014-11-28 22:20:23.529467	3
24	Dzwoń do niego codziennie o 5:30 rano i dzwoń tam cały czas	4	\N	2014-11-28 22:20:23.532659	2014-11-28 22:20:23.532659	4
25	Dzwoń do niego codziennie o 5:30 rano i dzwoń tam cały czas	1	\N	2014-11-28 22:20:23.535956	2014-11-28 22:20:23.535956	5
26	Dzwoń do niego codziennie o 5:30 rano i dzwoń tam cały czas	2	\N	2014-11-28 22:20:23.539232	2014-11-28 22:20:23.539232	6
27	Dzwoń do niego codziennie o 5:30 rano i dzwoń tam cały czas	3	\N	2014-11-28 22:20:23.542448	2014-11-28 22:20:23.542448	7
28	Dzwoń do niego codziennie o 5:30 rano i dzwoń tam cały czas	4	\N	2014-11-28 22:20:23.553594	2014-11-28 22:20:23.553594	8
29	Dzwoń do niego codziennie o 5:30 rano i dzwoń tam cały czas	1	\N	2014-11-28 22:20:23.562544	2014-11-28 22:20:23.562544	9
30	Dzwoń do niego codziennie o 5:30 rano i dzwoń tam cały czas	2	\N	2014-11-28 22:20:23.565071	2014-11-28 22:20:23.565071	10
31	Dzwoń do niego codziennie o 5:30 rano i dzwoń tam cały czas	3	\N	2014-11-28 22:20:23.570013	2014-11-28 22:20:23.570013	11
32	Dzwoń do niego codziennie o 5:30 rano i dzwoń tam cały czas	4	\N	2014-11-28 22:20:23.580366	2014-11-28 22:20:23.580366	12
33	Dzwoń do niego codziennie o 5:30 rano i dzwoń tam cały czas	1	\N	2014-11-28 22:20:23.584883	2014-11-28 22:20:23.584883	13
34	Dzwoń do niego codziennie o 5:30 rano i dzwoń tam cały czas	2	\N	2014-11-28 22:20:23.588433	2014-11-28 22:20:23.588433	14
35	Dzwoń do niego codziennie o 5:30 rano i dzwoń tam cały czas	3	\N	2014-11-28 22:20:23.591981	2014-11-28 22:20:23.591981	15
36	Dzwoń do niego codziennie o 5:30 rano i dzwoń tam cały czas	4	\N	2014-11-28 22:20:23.595482	2014-11-28 22:20:23.595482	16
37	Dzwoń do niego codziennie o 5:30 rano i dzwoń tam cały czas	1	\N	2014-11-28 22:20:23.59898	2014-11-28 22:20:23.59898	17
38	Dzwoń do niego codziennie o 5:30 rano i dzwoń tam cały czas	2	\N	2014-11-28 22:20:23.602234	2014-11-28 22:20:23.602234	18
39	Dzwoń do niego codziennie o 5:30 rano i dzwoń tam cały czas	3	\N	2014-11-28 22:20:23.605446	2014-11-28 22:20:23.605446	19
40	Dzwoń do niego codziennie o 5:30 rano i dzwoń tam cały czas	4	\N	2014-11-28 22:20:23.608672	2014-11-28 22:20:23.608672	20
\.


--
-- Name: comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('comments_id_seq', 40, true);


--
-- Data for Name: posts; Type: TABLE DATA; Schema: public; Owner: -
--

COPY posts (id, title, text, user_id, created_at, updated_at) FROM stdin;
1	post 0	some long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long text	1	2014-11-28 22:13:26.846888	2014-11-28 22:13:26.846888
2	post 1	some long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long text	2	2014-11-28 22:13:26.858151	2014-11-28 22:13:26.858151
3	post 2	some long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long text	3	2014-11-28 22:13:26.85988	2014-11-28 22:13:26.85988
4	post 3	some long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long text	4	2014-11-28 22:13:26.861372	2014-11-28 22:13:26.861372
5	post 4	some long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long text	1	2014-11-28 22:13:26.86287	2014-11-28 22:13:26.86287
6	post 5	some long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long text	2	2014-11-28 22:13:26.864305	2014-11-28 22:13:26.864305
7	post 6	some long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long text	3	2014-11-28 22:13:26.865739	2014-11-28 22:13:26.865739
8	post 7	some long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long text	4	2014-11-28 22:13:26.867083	2014-11-28 22:13:26.867083
9	post 8	some long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long text	1	2014-11-28 22:13:26.868991	2014-11-28 22:13:26.868991
10	post 9	some long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long text	2	2014-11-28 22:13:26.872361	2014-11-28 22:13:26.872361
11	post 10	some long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long text	3	2014-11-28 22:13:26.875358	2014-11-28 22:13:26.875358
12	post 11	some long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long text	4	2014-11-28 22:13:26.879176	2014-11-28 22:13:26.879176
13	post 12	some long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long text	1	2014-11-28 22:13:26.882028	2014-11-28 22:13:26.882028
14	post 13	some long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long text	2	2014-11-28 22:13:26.886334	2014-11-28 22:13:26.886334
15	post 14	some long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long text	3	2014-11-28 22:13:26.888246	2014-11-28 22:13:26.888246
16	post 15	some long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long text	4	2014-11-28 22:13:26.889977	2014-11-28 22:13:26.889977
17	post 16	some long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long text	1	2014-11-28 22:13:26.893402	2014-11-28 22:13:26.893402
18	post 17	some long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long text	2	2014-11-28 22:13:26.89568	2014-11-28 22:13:26.89568
19	post 18	some long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long text	3	2014-11-28 22:13:26.898425	2014-11-28 22:13:26.898425
20	post 19	some long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long textsome long text	4	2014-11-28 22:13:26.902757	2014-11-28 22:13:26.902757
\.


--
-- Name: posts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('posts_id_seq', 20, true);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: -
--

COPY schema_migrations (version) FROM stdin;
20141128214026
20141128221514
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: -
--

COPY users (id, email, password, created_at, updated_at) FROM stdin;
1	stunt_man_mike@deathproof.com	dkasnjfdbwuibweruyg2yft32W#@$$Fdsfdf	2014-11-28 22:06:36.01285	2014-11-28 22:06:36.01285
2	marsellus_wallace@khahunaburger.com	dkasnjfdbwuibweruyg2yft32Wsadasdasffdgsdf	2014-11-28 22:07:50.759647	2014-11-28 22:07:50.759647
3	jules_winnfield@shepard.com	jules	2014-11-28 22:09:32.869874	2014-11-28 22:09:32.869874
4	vincent_vega@royalle_with_cheese.com	vincent	2014-11-28 22:11:16.210028	2014-11-28 22:11:16.210028
\.


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('users_id_seq', 4, true);


--
-- Name: comments_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY comments
    ADD CONSTRAINT comments_pkey PRIMARY KEY (id);


--
-- Name: posts_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (id);


--
-- Name: users_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


--
-- Name: public; Type: ACL; Schema: -; Owner: -
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM "jj-kuba";
GRANT ALL ON SCHEMA public TO "jj-kuba";
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

