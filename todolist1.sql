--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.3
-- Dumped by pg_dump version 9.6.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
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


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: todos; Type: TABLE; Schema: public; Owner: shontaehogan
--

CREATE TABLE todos (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    details character varying(3000),
    priority integer DEFAULT 1 NOT NULL,
    created_at timestamp without time zone NOT NULL,
    completed_at timestamp without time zone
);


ALTER TABLE todos OWNER TO shontaehogan;

--
-- Name: todos_id_seq; Type: SEQUENCE; Schema: public; Owner: shontaehogan
--

CREATE SEQUENCE todos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE todos_id_seq OWNER TO shontaehogan;

--
-- Name: todos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shontaehogan
--

ALTER SEQUENCE todos_id_seq OWNED BY todos.id;


--
-- Name: todos id; Type: DEFAULT; Schema: public; Owner: shontaehogan
--

ALTER TABLE ONLY todos ALTER COLUMN id SET DEFAULT nextval('todos_id_seq'::regclass);


--
-- Data for Name: todos; Type: TABLE DATA; Schema: public; Owner: shontaehogan
--

COPY todos (id, title, details, priority, created_at, completed_at) FROM stdin;
1	garbage	take out trash	2	2017-08-10 13:48:44.935899	\N
3	vacuum hallway	second floor hallway	2	2017-08-10 13:51:03.359479	\N
4	vacuum CJ room	CJ bedroom	2	2017-08-10 13:51:48.28806	\N
5	vacuum girls room	girls room	2	2017-08-10 13:52:35.724245	\N
6	clean bathroom 1	first floor bathroom	1	2017-08-10 13:54:06.722026	\N
7	clean bathroom 2	second floor bathroom	1	2017-08-10 13:54:28.853911	\N
8	clean bathroom 3	third floor bathroom	1	2017-08-10 13:54:49.227503	\N
9	lawn	water lawn	3	2017-08-10 13:57:03.354766	\N
10	wash car	wash car	3	2017-08-10 13:57:26.59677	\N
13	dust ceiling fans	ceiling fans in all rooms	2	2017-08-10 14:05:24.814008	\N
14	groceries	grocery shopping	1	2017-08-10 14:05:58.275421	\N
15	fold clothes	fold laundry	2	2017-08-10 14:09:59.491861	\N
16	oil change	change oil	1	2017-08-10 14:10:28.048368	\N
17	school supplies	buy school supplies	1	2017-08-10 14:16:31.630445	\N
18	screendoor	clean screendoor	2	2017-08-10 14:18:41.029266	\N
20	mop kitchen	mop kitchen	2	2017-08-10 14:19:57.530184	\N
11	mail	check mailbox	1	2017-08-10 13:57:55.356011	2017-08-10 14:31:23.46456
19	sweep	sweep kitchen	2	2017-08-10 14:19:23.522079	2017-08-10 14:32:08.732274
2	dishes	wash the dishes	2	2017-08-10 13:49:24.909721	2017-08-10 14:32:31.397186
12	dust blinds	dust blinds in all rooms	2	2017-08-10 13:58:59.272831	2017-08-10 14:34:48.227316
\.


--
-- Name: todos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shontaehogan
--

SELECT pg_catalog.setval('todos_id_seq', 20, true);


--
-- Name: todos todos_pkey; Type: CONSTRAINT; Schema: public; Owner: shontaehogan
--

ALTER TABLE ONLY todos
    ADD CONSTRAINT todos_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

