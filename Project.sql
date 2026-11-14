--
-- PostgreSQL database cluster dump
--

-- Started on 2026-11-13 15:38:10

\restrict LazpkCHRu8iY0CIoDkPBspG2iP2oI32ilFHDfqp95deHUblkORggNRcs4382twN

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Roles
--

CREATE ROLE postgres;
ALTER ROLE postgres WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:sowNldfdmcJSCwJxm76D7A==$iB5kJSqfJ18TqqyxjeD8FxO2KldZGrv9VmEqeyp6oN4=:9pZS7qrXq/Y/tADrJHdDJIh/PrZjyP51omYDWlxwXOw=';

--
-- User Configurations
--








\unrestrict LazpkCHRu8iY0CIoDkPBspG2iP2oI32ilFHDfqp95deHUblkORggNRcs4382twN

--
-- Databases
--

--
-- Database "template1" dump
--

\connect template1

--
-- PostgreSQL database dump
--

\restrict 5CXqFOG1LScrAYQwuiPN451wmwN61ET7USax6S74R5vQoa0Da23Fc6zrY8iXCl0

-- Dumped from database version 18.3
-- Dumped by pg_dump version 18.2

-- Started on 2026-11-13 15:38:10

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

-- Completed on 2026-11-13 15:38:11

--
-- PostgreSQL database dump complete
--

\unrestrict 5CXqFOG1LScrAYQwuiPN451wmwN61ET7USax6S74R5vQoa0Da23Fc6zrY8iXCl0

--
-- Database "cloudcomputing" dump
--

--
-- PostgreSQL database dump
--

\restrict tU1cENUUp8oqspgRTGsczoXM3vT2HcCNcuRlxl8am4M1oit5J2CW06IuwU6Bdhp

-- Dumped from database version 18.3
-- Dumped by pg_dump version 18.2

-- Started on 2026-11-13 15:38:11

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 5003 (class 1262 OID 23183)
-- Name: cloudcomputing; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE cloudcomputing WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';


ALTER DATABASE cloudcomputing OWNER TO postgres;

\unrestrict tU1cENUUp8oqspgRTGsczoXM3vT2HcCNcuRlxl8am4M1oit5J2CW06IuwU6Bdhp
\connect cloudcomputing
\restrict tU1cENUUp8oqspgRTGsczoXM3vT2HcCNcuRlxl8am4M1oit5J2CW06IuwU6Bdhp

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

-- Completed on 2026-11-13 15:38:13

--
-- PostgreSQL database dump complete
--

\unrestrict tU1cENUUp8oqspgRTGsczoXM3vT2HcCNcuRlxl8am4M1oit5J2CW06IuwU6Bdhp

--
-- Database "labassignment_2" dump
--

--
-- PostgreSQL database dump
--

\restrict cyAdqglNJq09T8mXdF0w5lEPcHgGu16WrXiH8nQDhHEWeIKf3ojvWc4IP6DF0ju

-- Dumped from database version 18.3
-- Dumped by pg_dump version 18.2

-- Started on 2026-11-13 15:38:13

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 5991 (class 1262 OID 24476)
-- Name: labassignment_2; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE labassignment_2 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';


ALTER DATABASE labassignment_2 OWNER TO postgres;

\unrestrict cyAdqglNJq09T8mXdF0w5lEPcHgGu16WrXiH8nQDhHEWeIKf3ojvWc4IP6DF0ju
\connect labassignment_2
\restrict cyAdqglNJq09T8mXdF0w5lEPcHgGu16WrXiH8nQDhHEWeIKf3ojvWc4IP6DF0ju

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 3 (class 3079 OID 25559)
-- Name: pgcrypto; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pgcrypto WITH SCHEMA public;


--
-- TOC entry 5992 (class 0 OID 0)
-- Dependencies: 3
-- Name: EXTENSION pgcrypto; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgcrypto IS 'cryptographic functions';


--
-- TOC entry 2 (class 3079 OID 24477)
-- Name: postgis; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS postgis WITH SCHEMA public;


--
-- TOC entry 5993 (class 0 OID 0)
-- Dependencies: 2
-- Name: EXTENSION postgis; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION postgis IS 'PostGIS geometry and geography spatial types and functions';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 229 (class 1259 OID 25620)
-- Name: road_issues; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.road_issues (
    issue_id integer NOT NULL,
    title character varying(100) NOT NULL,
    issue_type character varying(30) NOT NULL,
    severity character varying(10) NOT NULL,
    status character varying(20) DEFAULT 'Open'::character varying NOT NULL,
    description text,
    reported_by character varying(50),
    reported_at timestamp without time zone DEFAULT now(),
    geom public.geometry(Point,4326) NOT NULL,
    CONSTRAINT road_issues_issue_type_check CHECK (((issue_type)::text = ANY ((ARRAY['Pothole'::character varying, 'Broken Streetlight'::character varying, 'Traffic Jam'::character varying, 'Road Damage'::character varying, 'Flooding'::character varying])::text[]))),
    CONSTRAINT road_issues_severity_check CHECK (((severity)::text = ANY ((ARRAY['Low'::character varying, 'Medium'::character varying, 'High'::character varying])::text[]))),
    CONSTRAINT road_issues_status_check CHECK (((status)::text = ANY ((ARRAY['Open'::character varying, 'In Progress'::character varying, 'Resolved'::character varying])::text[])))
);


ALTER TABLE public.road_issues OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 25619)
-- Name: road_issues_issue_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.road_issues_issue_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.road_issues_issue_id_seq OWNER TO postgres;

--
-- TOC entry 5994 (class 0 OID 0)
-- Dependencies: 228
-- Name: road_issues_issue_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.road_issues_issue_id_seq OWNED BY public.road_issues.issue_id;


--
-- TOC entry 227 (class 1259 OID 25604)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(50) NOT NULL,
    password_hash text NOT NULL,
    role character varying(20) DEFAULT 'user'::character varying NOT NULL
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 25603)
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_user_id_seq OWNER TO postgres;

--
-- TOC entry 5995 (class 0 OID 0)
-- Dependencies: 226
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- TOC entry 5814 (class 2604 OID 25623)
-- Name: road_issues issue_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.road_issues ALTER COLUMN issue_id SET DEFAULT nextval('public.road_issues_issue_id_seq'::regclass);


--
-- TOC entry 5812 (class 2604 OID 25607)
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- TOC entry 5985 (class 0 OID 25620)
-- Dependencies: 229
-- Data for Name: road_issues; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.road_issues (issue_id, title, issue_type, severity, status, description, reported_by, reported_at, geom) FROM stdin;
2	Streetlight out at Faizabad	Broken Streetlight	Medium	Open	Three lights not working	user1	2026-10-27 19:17:30.435427	0101000020E6100000857CD0B3594552403108AC1C5AD44040
3	Heavy jam at Zero Point	Traffic Jam	High	In Progress	Peak hour congestion	admin	2026-10-27 19:17:30.435427	0101000020E61000003108AC1C5A4452407FFB3A70CED84040
4	Cracked road in Blue Area	Road Damage	Medium	Open	Long cracks along the service road	user1	2026-10-27 19:18:08.950548	0101000020E6100000CBA145B6F3455240894160E5D0DA4040
5	Flooding at Saddar underpass	Flooding	High	Open	Water stays after rain	user1	2026-10-27 19:18:08.950548	0101000020E61000009E5E29CB10435240C0EC9E3C2CCC4040
6	Pothole near Rawal Lake	Pothole	Low	Resolved	Patched last week	admin	2026-10-27 19:18:08.950548	0101000020E61000001D5A643BDF47524062105839B4D84040
7	Dark road in F-6	Broken Streetlight	Medium	In Progress	Lights flicker at night	user1	2026-10-27 19:18:08.950548	0101000020E6100000B0726891ED445240B0726891EDDC4040
8	Congestion at Kashmir Highway	Traffic Jam	Medium	Open	Signal timing issue	user1	2026-10-27 19:18:08.950548	0101000020E6100000DD24068195435240F4FDD478E9D64040
9	Road damage at G-9 Markaz	Road Damage	Low	Open	Edge of road is breaking	user1	2026-10-27 19:18:08.950548	0101000020E61000007D3F355EBA4152402B8716D9CED74040
10	Flooded street in I-8	Flooding	Medium	Resolved	Drain cleaned	admin	2026-10-27 19:18:08.950548	0101000020E6100000F853E3A59B4452402FDD240681D54040
11	Pothole on IJP Road	Pothole	High	Open	Dangerous for motorcycles	user1	2026-10-27 19:18:08.950548	0101000020E6100000DD24068195435240C1CAA145B6D34040
12	Streetlight pole fallen in H-8	Broken Streetlight	High	Open	Pole leaning on the road	user1	2026-10-27 19:18:08.950548	0101000020E6100000894160E5D0425240105839B4C8D64040
13	Traffic jam at Rawal Chowk	Traffic Jam	High	Open	School time congestion	user1	2026-10-27 19:18:08.950548	0101000020E6100000B29DEFA7C6435240931804560ECD4040
14	Road damage in Bahria Town	Road Damage	Medium	In Progress	Repair crew on site	admin	2026-10-27 19:18:08.950548	0101000020E610000048E17A14AE475240F853E3A59BC44040
15	Pothole at Chaklala Scheme 3	Pothole	Medium	Open	Several small potholes	user1	2026-10-27 19:18:08.950548	0101000020E610000091ED7C3F354652403D0AD7A370CD4040
16	Flooding near Nala Lai	Flooding	High	Open	Water overflows after rain	user1	2026-10-27 19:18:08.950548	0101000020E610000096438B6CE7435240AE47E17A14CE4040
17	Streetlights off in Satellite Town	Broken Streetlight	Low	Resolved	Fixed by LESCO	admin	2026-10-27 19:18:08.950548	0101000020E61000005C8FC2F528445240E17A14AE47D14040
18	Traffic jam at Islamabad Expressway	Traffic Jam	Medium	Open	Merging traffic near Koral	user1	2026-10-27 19:18:08.950548	0101000020E6100000448B6CE7FB495240AC1C5A643BCF4040
19	Road damage at Peshawar Morh	Road Damage	High	Open	Sunken patch on the carriageway	user1	2026-10-27 19:18:08.950548	0101000020E6100000B6F3FDD478415240D578E92631D84040
20	Pothole on Srinagar Highway	Pothole	Medium	In Progress	Asphalt work has started	admin	2026-10-27 19:18:08.950548	0101000020E61000001283C0CAA1455240273108AC1CDA4040
21	Flooded road in Gulberg	Flooding	Low	Open	Minor water logging	user1	2026-10-27 19:18:08.950548	0101000020E610000004560E2DB245524062105839B4D84040
22	Streetlight missing in E-11	Broken Streetlight	Medium	Open	No lights on the main street	user1	2026-10-27 19:18:08.950548	0101000020E6100000F4FDD478E93E52409A99999999D94040
23	Traffic jam on Peshawar Road	Traffic Jam	Low	Resolved	Roadwork finished	admin	2026-10-27 19:18:08.950548	0101000020E6100000E3A59BC4204052403333333333D34040
24	Road damage near Faisal Mosque	Road Damage	Medium	Open	Broken kerb and cracked surface	user1	2026-10-27 19:18:08.950548	0101000020E61000003C4ED1915C4252404C37894160DD4040
1	Deep pothole on Murree Road	Pothole	High	Resolved	Large pothole near Committee Chowk	user1	2026-10-27 19:17:30.435427	0101000020E61000009D8026C286435240865AD3BCE3CC4040
25	ABC	Pothole	Medium	Open	abc	Public user	2026-10-28 21:03:46.062151	0101000020E61000000100000060425240CF5F631DC4D44040
\.


--
-- TOC entry 5811 (class 0 OID 24796)
-- Dependencies: 222
-- Data for Name: spatial_ref_sys; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spatial_ref_sys (srid, auth_name, auth_srid, srtext, proj4text) FROM stdin;
\.


--
-- TOC entry 5983 (class 0 OID 25604)
-- Dependencies: 227
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (user_id, username, password_hash, role) FROM stdin;
1	admin	$2a$06$YyDDWWOci80NChWUBQLqAu2382zv1VNm0N5nyyKMFUNCmz6F/DtNG	admin
2	user1	$2a$06$9qa.B4NKVvOzd1Mg4sC6x.5EhzPuL4kecSlGQHzGb7f8pOBp8K7bi	user
\.


--
-- TOC entry 5996 (class 0 OID 0)
-- Dependencies: 228
-- Name: road_issues_issue_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.road_issues_issue_id_seq', 25, true);


--
-- TOC entry 5997 (class 0 OID 0)
-- Dependencies: 226
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_user_id_seq', 2, true);


--
-- TOC entry 5829 (class 2606 OID 25638)
-- Name: road_issues road_issues_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.road_issues
    ADD CONSTRAINT road_issues_pkey PRIMARY KEY (issue_id);


--
-- TOC entry 5824 (class 2606 OID 25616)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- TOC entry 5826 (class 2606 OID 25618)
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- TOC entry 5827 (class 1259 OID 25639)
-- Name: road_issues_geom_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX road_issues_geom_idx ON public.road_issues USING gist (geom);


-- Completed on 2026-11-13 15:38:15

--
-- PostgreSQL database dump complete
--

\unrestrict cyAdqglNJq09T8mXdF0w5lEPcHgGu16WrXiH8nQDhHEWeIKf3ojvWc4IP6DF0ju

--
-- Database "postgres" dump
--

\connect postgres

--
-- PostgreSQL database dump
--

\restrict vdgzwuuYJj8gr9kaXjSlpzIcETqZ4HwzKNXMBCgXx1Y1ZoWlDJ0PkeUVRcocyTE

-- Dumped from database version 18.3
-- Dumped by pg_dump version 18.2

-- Started on 2026-11-13 15:38:15

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 2 (class 3079 OID 20978)
-- Name: postgis; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS postgis WITH SCHEMA public;


--
-- TOC entry 5935 (class 0 OID 0)
-- Dependencies: 2
-- Name: EXTENSION postgis; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION postgis IS 'PostGIS geometry and geography spatial types and functions';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 226 (class 1259 OID 22061)
-- Name: local_spots; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.local_spots (
    id integer NOT NULL,
    name character varying(100),
    category character varying(50),
    geom public.geometry(Point,4326)
);


ALTER TABLE public.local_spots OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 22060)
-- Name: local_spots_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.local_spots_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.local_spots_id_seq OWNER TO postgres;

--
-- TOC entry 5936 (class 0 OID 0)
-- Dependencies: 225
-- Name: local_spots_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.local_spots_id_seq OWNED BY public.local_spots.id;


--
-- TOC entry 5769 (class 2604 OID 22064)
-- Name: local_spots id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.local_spots ALTER COLUMN id SET DEFAULT nextval('public.local_spots_id_seq'::regclass);


--
-- TOC entry 5929 (class 0 OID 22061)
-- Dependencies: 226
-- Data for Name: local_spots; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.local_spots (id, name, category, geom) FROM stdin;
1	Faisal Mosque	Monument	0101000020E6100000C442AD69DE41524013F241CF66DD4040
2	Centaurus Mall	Shopping	0101000020E6100000D734EF38454352408AB0E1E995DA4040
3	Rawal Lake View Park	Park	0101000020E61000008716D9CEF74752408B6CE7FBA9D94040
\.


--
-- TOC entry 5768 (class 0 OID 21297)
-- Dependencies: 221
-- Data for Name: spatial_ref_sys; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spatial_ref_sys (srid, auth_name, auth_srid, srtext, proj4text) FROM stdin;
\.


--
-- TOC entry 5937 (class 0 OID 0)
-- Dependencies: 225
-- Name: local_spots_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.local_spots_id_seq', 3, true);


--
-- TOC entry 5775 (class 2606 OID 22069)
-- Name: local_spots local_spots_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.local_spots
    ADD CONSTRAINT local_spots_pkey PRIMARY KEY (id);


--
-- TOC entry 5773 (class 1259 OID 22070)
-- Name: idx_local_spots_geom; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_local_spots_geom ON public.local_spots USING gist (geom);


-- Completed on 2026-11-13 15:38:33

--
-- PostgreSQL database dump complete
--

\unrestrict vdgzwuuYJj8gr9kaXjSlpzIcETqZ4HwzKNXMBCgXx1Y1ZoWlDJ0PkeUVRcocyTE

--
-- Database "spatial_db" dump
--

--
-- PostgreSQL database dump
--

\restrict we5qMInoDMrPnDH0KLMYBIl3ma7MEPFVEaugLYPlLh2Dmbx04leLpkLA2HV5H9T

-- Dumped from database version 18.3
-- Dumped by pg_dump version 18.2

-- Started on 2026-11-13 15:38:33

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 6012 (class 1262 OID 19830)
-- Name: spatial_db; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE spatial_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';


ALTER DATABASE spatial_db OWNER TO postgres;

\unrestrict we5qMInoDMrPnDH0KLMYBIl3ma7MEPFVEaugLYPlLh2Dmbx04leLpkLA2HV5H9T
\connect spatial_db
\restrict we5qMInoDMrPnDH0KLMYBIl3ma7MEPFVEaugLYPlLh2Dmbx04leLpkLA2HV5H9T

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 2 (class 3079 OID 19831)
-- Name: postgis; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS postgis WITH SCHEMA public;


--
-- TOC entry 6013 (class 0 OID 0)
-- Dependencies: 2
-- Name: EXTENSION postgis; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION postgis IS 'PostGIS geometry and geography spatial types and functions';


--
-- TOC entry 443 (class 1255 OID 20975)
-- Name: check_geofence_breach(); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.check_geofence_breach() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
    -- If an inserted point falls within a geofence zone, log it immediately
    INSERT INTO geofence_alerts (vehicle_id, zone_name, event_time, status)
    SELECT NEW.vehicle_id, z.zone_name, NEW.ping_time, 'BREACH: Inside Zone'
    FROM geofence_zones z
    WHERE ST_Contains(z.geom, NEW.geom); -- The spatial intersection check
    
    RETURN NEW;
END;
$$;


ALTER FUNCTION public.check_geofence_breach() OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 240 (class 1259 OID 25643)
-- Name: banks_atms; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.banks_atms (
    id integer NOT NULL,
    name character varying(150) NOT NULL,
    feature_type character varying(10) NOT NULL,
    bank_name character varying(100),
    address character varying(255),
    opening_hours character varying(100),
    source character varying(50) DEFAULT 'OpenStreetMap'::character varying,
    osm_id character varying(30),
    geom public.geometry(Point,4326) NOT NULL,
    CONSTRAINT banks_atms_feature_type_check CHECK (((feature_type)::text = ANY ((ARRAY['Bank'::character varying, 'ATM'::character varying])::text[])))
);


ALTER TABLE public.banks_atms OWNER TO postgres;

--
-- TOC entry 239 (class 1259 OID 25642)
-- Name: banks_atms_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.banks_atms_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.banks_atms_id_seq OWNER TO postgres;

--
-- TOC entry 6014 (class 0 OID 0)
-- Dependencies: 239
-- Name: banks_atms_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.banks_atms_id_seq OWNED BY public.banks_atms.id;


--
-- TOC entry 236 (class 1259 OID 23347)
-- Name: buildings; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.buildings (
    building_id integer NOT NULL,
    building_name character varying(100),
    geom public.geometry(Polygon,32642)
);


ALTER TABLE public.buildings OWNER TO postgres;

--
-- TOC entry 235 (class 1259 OID 23346)
-- Name: buildings_building_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.buildings_building_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.buildings_building_id_seq OWNER TO postgres;

--
-- TOC entry 6015 (class 0 OID 0)
-- Dependencies: 235
-- Name: buildings_building_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.buildings_building_id_seq OWNED BY public.buildings.building_id;


--
-- TOC entry 238 (class 1259 OID 23357)
-- Name: flood_zones; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.flood_zones (
    zone_id integer NOT NULL,
    zone_name character varying(100),
    geom public.geometry(Polygon,32642)
);


ALTER TABLE public.flood_zones OWNER TO postgres;

--
-- TOC entry 237 (class 1259 OID 23356)
-- Name: flood_zones_zone_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.flood_zones_zone_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.flood_zones_zone_id_seq OWNER TO postgres;

--
-- TOC entry 6016 (class 0 OID 0)
-- Dependencies: 237
-- Name: flood_zones_zone_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.flood_zones_zone_id_seq OWNED BY public.flood_zones.zone_id;


--
-- TOC entry 232 (class 1259 OID 20962)
-- Name: geofence_alerts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.geofence_alerts (
    alert_id integer NOT NULL,
    vehicle_id character varying(20),
    zone_name character varying(50),
    event_time timestamp without time zone,
    status text
);


ALTER TABLE public.geofence_alerts OWNER TO postgres;

--
-- TOC entry 231 (class 1259 OID 20961)
-- Name: geofence_alerts_alert_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.geofence_alerts_alert_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.geofence_alerts_alert_id_seq OWNER TO postgres;

--
-- TOC entry 6017 (class 0 OID 0)
-- Dependencies: 231
-- Name: geofence_alerts_alert_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.geofence_alerts_alert_id_seq OWNED BY public.geofence_alerts.alert_id;


--
-- TOC entry 228 (class 1259 OID 20941)
-- Name: geofence_zones; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.geofence_zones (
    id integer NOT NULL,
    zone_name character varying(50),
    geom public.geometry(Polygon,4326)
);


ALTER TABLE public.geofence_zones OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 20940)
-- Name: geofence_zones_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.geofence_zones_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.geofence_zones_id_seq OWNER TO postgres;

--
-- TOC entry 6018 (class 0 OID 0)
-- Dependencies: 227
-- Name: geofence_zones_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.geofence_zones_id_seq OWNED BY public.geofence_zones.id;


--
-- TOC entry 226 (class 1259 OID 20931)
-- Name: locations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.locations (
    id integer NOT NULL,
    name character varying(100),
    geom public.geometry(Point,4326)
);


ALTER TABLE public.locations OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 20930)
-- Name: locations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.locations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.locations_id_seq OWNER TO postgres;

--
-- TOC entry 6019 (class 0 OID 0)
-- Dependencies: 225
-- Name: locations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.locations_id_seq OWNED BY public.locations.id;


--
-- TOC entry 234 (class 1259 OID 23337)
-- Name: roads; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.roads (
    road_id integer NOT NULL,
    road_name character varying(100),
    geom public.geometry(LineString,32642)
);


ALTER TABLE public.roads OWNER TO postgres;

--
-- TOC entry 233 (class 1259 OID 23336)
-- Name: roads_road_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.roads_road_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.roads_road_id_seq OWNER TO postgres;

--
-- TOC entry 6020 (class 0 OID 0)
-- Dependencies: 233
-- Name: roads_road_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.roads_road_id_seq OWNED BY public.roads.road_id;


--
-- TOC entry 230 (class 1259 OID 20951)
-- Name: vehicle_tracking; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.vehicle_tracking (
    id integer NOT NULL,
    vehicle_id character varying(20),
    ping_time timestamp without time zone DEFAULT now(),
    geom public.geometry(Point,4326)
);


ALTER TABLE public.vehicle_tracking OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 20950)
-- Name: vehicle_tracking_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.vehicle_tracking_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.vehicle_tracking_id_seq OWNER TO postgres;

--
-- TOC entry 6021 (class 0 OID 0)
-- Dependencies: 229
-- Name: vehicle_tracking_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.vehicle_tracking_id_seq OWNED BY public.vehicle_tracking.id;


--
-- TOC entry 5813 (class 2604 OID 25646)
-- Name: banks_atms id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.banks_atms ALTER COLUMN id SET DEFAULT nextval('public.banks_atms_id_seq'::regclass);


--
-- TOC entry 5811 (class 2604 OID 23350)
-- Name: buildings building_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.buildings ALTER COLUMN building_id SET DEFAULT nextval('public.buildings_building_id_seq'::regclass);


--
-- TOC entry 5812 (class 2604 OID 23360)
-- Name: flood_zones zone_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.flood_zones ALTER COLUMN zone_id SET DEFAULT nextval('public.flood_zones_zone_id_seq'::regclass);


--
-- TOC entry 5809 (class 2604 OID 20965)
-- Name: geofence_alerts alert_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.geofence_alerts ALTER COLUMN alert_id SET DEFAULT nextval('public.geofence_alerts_alert_id_seq'::regclass);


--
-- TOC entry 5806 (class 2604 OID 20944)
-- Name: geofence_zones id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.geofence_zones ALTER COLUMN id SET DEFAULT nextval('public.geofence_zones_id_seq'::regclass);


--
-- TOC entry 5805 (class 2604 OID 20934)
-- Name: locations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.locations ALTER COLUMN id SET DEFAULT nextval('public.locations_id_seq'::regclass);


--
-- TOC entry 5810 (class 2604 OID 23340)
-- Name: roads road_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roads ALTER COLUMN road_id SET DEFAULT nextval('public.roads_road_id_seq'::regclass);


--
-- TOC entry 5807 (class 2604 OID 20954)
-- Name: vehicle_tracking id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vehicle_tracking ALTER COLUMN id SET DEFAULT nextval('public.vehicle_tracking_id_seq'::regclass);


--
-- TOC entry 6006 (class 0 OID 25643)
-- Dependencies: 240
-- Data for Name: banks_atms; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.banks_atms (id, name, feature_type, bank_name, address, opening_hours, source, osm_id, geom) FROM stdin;
1	Allied Bank Bus Terminal Branch	Bank	Allied Bank	Bus Terminal, Mirpur Khas	\N	Google Maps (manual)	\N	0101000020E6100000429770E82D3F51404DBA2D910B863940
2	Soneri Bank	Bank	Soneri Bank	Hyderabad Road, Mirpur Khas	\N	Google Maps (manual)	\N	0101000020E610000018062CB98A3F514017B9A7AB3B863940
3	United Bank Limited (UBL)	Bank	United Bank Limited	M.A Jinnah Road, Mirpur Khas	\N	Google Maps (manual)	\N	0101000020E61000005708ABB184405140884677103B873940
4	NBP Customer Facilitation Centre	Bank	National Bank of Pakistan	M.A Jinnah Road, Heerabad, Mirpur Khas	\N	Google Maps (manual)	\N	0101000020E6100000F19C2D20B4405140F3C81F0C3C873940
5	National Bank of Pakistan (NBP) Baldia Shopping Centre	Bank	National Bank of Pakistan	Baldia Shopping Centre, MA Jinnah Road, Market Chowk, New Town, Mirpur Khas	\N	Google Maps (manual)	\N	0101000020E610000070B4E386DF4051404A27124C35873940
6	Habib Metro Bank	Bank	Habib Metropolitan Bank	PM Colony, Mirpur Khas	\N	Google Maps (manual)	\N	0101000020E6100000BB97FBE4284151400CCEE0EF17873940
7	BankIslami Mirpur Khas Branch	Bank	BankIslami	Ward-A, PM Colony, Mirpur Khas	\N	Google Maps (manual)	\N	0101000020E61000006823D74D2941514098BED7101C873940
8	Bank AL Habib (PM Colony)	Bank	Bank AL Habib	PM Colony, Mirpur Khas	\N	Google Maps (manual)	\N	0101000020E6100000F12900C633415140C251F2EA1C873940
9	The Bank of Punjab	Bank	Bank of Punjab	Mirpur Khas - Umerkot Road, Mirpur Khas	\N	Google Maps (manual)	\N	0101000020E6100000999A046F48415140295B24ED46873940
10	JS Bank	Bank	JS Bank	N-120, Mirpur Khas	\N	Google Maps (manual)	\N	0101000020E610000009A69A594B415140726F7EC344873940
11	Bank Alfalah	Bank	Bank Alfalah	Umerkot Road, Adam Town, Mirpur Khas	\N	Google Maps (manual)	\N	0101000020E6100000D5E940D653415140246420CF2E873940
12	MCB Bank Regional Office	Bank	MCB Bank	Muslimabad, Mirpur Khas	\N	Google Maps (manual)	\N	0101000020E610000000C974E8F44051406F0C01C0B1873940
13	Bank AL Habib MPS (Muslimabad)	Bank	Bank AL Habib	Muslimabad, Mirpur Khas	\N	Google Maps (manual)	\N	0101000020E6100000D064FF3C0D4151401D3D7E6FD3873940
14	BankIslami Iqbal Road Branch	Bank	BankIslami	Iqbal Road, Mirpur Khas	\N	Google Maps (manual)	\N	0101000020E6100000E622BE13B34051402D08E57D1C853940
15	Habib Bank Limited (HBL)	Bank	Habib Bank Limited	Mirpur Khas	\N	Google Maps (manual)	\N	0101000020E6100000D6390664AF4051404C530438BD833940
16	Meezan Bank Satellite Town Branch	Bank	Meezan Bank	Mirpur Khas - Digri Road, Satellite Town, Mirpur Khas	\N	Google Maps (manual)	\N	0101000020E6100000535BEA20AF405140A1496249B9833940
17	Allied Bank Limited (ABL)	Bank	Allied Bank	Mirpur Khas	\N	Google Maps (manual)	\N	0101000020E6100000E2E7BF07AF40514030D7A20568833940
18	National Bank of Pakistan Khipro Stand Branch and ATM	Bank	National Bank of Pakistan	Khipro Stand, Gulshan-e-Nawab Colony, Mirpur Khas	\N	Google Maps (manual)	\N	0101000020E6100000E5805D4D9E415140AB5CA8FC6B893940
19	ZTBL ATM	ATM	Zarai Taraqiati Bank (ZTBL)	Digri Road, Mirpur Khas	\N	Google Maps (manual)	\N	0101000020E61000001E4E603AAD405140F850A2258F833940
20	Allied Bank Bus Terminal Branch ATM	ATM	Allied Bank	Bus Terminal, Mirpur Khas	\N	Google Maps (manual)	\N	0101000020E6100000D0EFFB372F3F51404DBA2D910B863940
21	Soneri Bank ATM	ATM	Soneri Bank	Hyderabad Road, Mirpur Khas	\N	Google Maps (manual)	\N	0101000020E6100000A65EB7088C3F514017B9A7AB3B863940
22	United Bank Limited (UBL) ATM	ATM	United Bank Limited	M.A Jinnah Road, Mirpur Khas	\N	Google Maps (manual)	\N	0101000020E6100000E560360186405140884677103B873940
23	NBP Customer Facilitation Centre ATM	ATM	National Bank of Pakistan	M.A Jinnah Road, Heerabad, Mirpur Khas	\N	Google Maps (manual)	\N	0101000020E61000007FF5B86FB5405140F3C81F0C3C873940
24	National Bank of Pakistan (NBP) Baldia Shopping Centre ATM	ATM	National Bank of Pakistan	Baldia Shopping Centre, MA Jinnah Road, Market Chowk, New Town, Mirpur Khas	\N	Google Maps (manual)	\N	0101000020E6100000FE0C6FD6E04051404A27124C35873940
25	Habib Metro Bank ATM	ATM	Habib Metropolitan Bank	PM Colony, Mirpur Khas	\N	Google Maps (manual)	\N	0101000020E610000049F086342A4151400CCEE0EF17873940
26	BankIslami Mirpur Khas Branch ATM	ATM	BankIslami	Ward-A, PM Colony, Mirpur Khas	\N	Google Maps (manual)	\N	0101000020E6100000F67B629D2A41514098BED7101C873940
27	Bank AL Habib (PM Colony) ATM	ATM	Bank AL Habib	PM Colony, Mirpur Khas	\N	Google Maps (manual)	\N	0101000020E61000007F828B1535415140C251F2EA1C873940
28	The Bank of Punjab ATM	ATM	Bank of Punjab	Mirpur Khas - Umerkot Road, Mirpur Khas	\N	Google Maps (manual)	\N	0101000020E610000027F38FBE49415140295B24ED46873940
29	JS Bank ATM	ATM	JS Bank	N-120, Mirpur Khas	\N	Google Maps (manual)	\N	0101000020E610000097FE25A94C415140726F7EC344873940
30	Bank Alfalah ATM	ATM	Bank Alfalah	Umerkot Road, Adam Town, Mirpur Khas	\N	Google Maps (manual)	\N	0101000020E61000006342CC2555415140246420CF2E873940
31	MCB Bank Regional Office ATM	ATM	MCB Bank	Muslimabad, Mirpur Khas	\N	Google Maps (manual)	\N	0101000020E61000008E210038F64051406F0C01C0B1873940
32	Bank AL Habib MPS (Muslimabad) ATM	ATM	Bank AL Habib	Muslimabad, Mirpur Khas	\N	Google Maps (manual)	\N	0101000020E61000005EBD8A8C0E4151401D3D7E6FD3873940
33	BankIslami Iqbal Road Branch ATM	ATM	BankIslami	Iqbal Road, Mirpur Khas	\N	Google Maps (manual)	\N	0101000020E6100000747B4963B44051402D08E57D1C853940
34	Habib Bank Limited (HBL) ATM	ATM	Habib Bank Limited	Mirpur Khas	\N	Google Maps (manual)	\N	0101000020E6100000649291B3B04051404C530438BD833940
35	Meezan Bank Satellite Town Branch ATM	ATM	Meezan Bank	Mirpur Khas - Digri Road, Satellite Town, Mirpur Khas	\N	Google Maps (manual)	\N	0101000020E6100000E1B37570B0405140A1496249B9833940
36	Allied Bank Limited (ABL) ATM	ATM	Allied Bank	Mirpur Khas	\N	Google Maps (manual)	\N	0101000020E610000070404B57B040514030D7A20568833940
37	National Bank of Pakistan Khipro Stand ATM	ATM	National Bank of Pakistan	Khipro Stand, Gulshan-e-Nawab Colony, Mirpur Khas	\N	Google Maps (manual)	\N	0101000020E610000073D9E89C9F415140AB5CA8FC6B893940
\.


--
-- TOC entry 6002 (class 0 OID 23347)
-- Dependencies: 236
-- Data for Name: buildings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.buildings (building_id, building_name, geom) FROM stdin;
1	Building A	0103000020827F000001000000050000000000000010861E4100000000F25C454100000000D8861E4100000000F25C454100000000D8861E41000000000B5D45410000000010861E41000000000B5D45410000000010861E4100000000F25C4541
2	Building B	0103000020827F0000010000000500000000000000C08A1E4100000000565D454100000000888B1E4100000000565D454100000000888B1E41000000006F5D454100000000C08A1E41000000006F5D454100000000C08A1E4100000000565D4541
3	Building C	0103000020827F0000010000000500000000000000708F1E41000000001E5E45410000000038901E41000000001E5E45410000000038901E4100000000375E454100000000708F1E4100000000375E454100000000708F1E41000000001E5E4541
\.


--
-- TOC entry 6004 (class 0 OID 23357)
-- Dependencies: 238
-- Data for Name: flood_zones; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.flood_zones (zone_id, zone_name, geom) FROM stdin;
1	Flood Zone 1	0103000020827F0000010000000500000000000000F8891E4100000000245D454100000000A88E1E4100000000245D454100000000A88E1E4100000000BA5D454100000000F8891E4100000000BA5D454100000000F8891E4100000000245D4541
\.


--
-- TOC entry 5998 (class 0 OID 20962)
-- Dependencies: 232
-- Data for Name: geofence_alerts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.geofence_alerts (alert_id, vehicle_id, zone_name, event_time, status) FROM stdin;
1	Truck-01	Secure Zone Alpha	2026-08-20 17:41:30.728739	BREACH: Inside Zone
\.


--
-- TOC entry 5994 (class 0 OID 20941)
-- Dependencies: 228
-- Data for Name: geofence_zones; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.geofence_zones (id, zone_name, geom) FROM stdin;
1	Secure Zone Alpha	0103000020E61000000100000004000000C3F5285C8F425240D7A3703D0AD74040A4703D0AD7435240D7A3703D0AD7404033333333334352409A99999999D94040C3F5285C8F425240D7A3703D0AD74040
\.


--
-- TOC entry 5992 (class 0 OID 20931)
-- Dependencies: 226
-- Data for Name: locations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.locations (id, name, geom) FROM stdin;
1	Park A	0101000020E61000009E5E29CB10435240F2B0506B9AD74040
2	Park B	0101000020E61000003333333333435240B81E85EB51D84040
\.


--
-- TOC entry 6000 (class 0 OID 23337)
-- Dependencies: 234
-- Data for Name: roads; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.roads (road_id, road_name, geom) FROM stdin;
1	Main Road	0102000020827F0000020000000000000080841E4100000000C05C45410000000020941E4100000000C05C4541
2	North Road	0102000020827F0000020000000000000080841E4100000000BA5D45410000000020941E4100000000BA5D4541
\.


--
-- TOC entry 5804 (class 0 OID 20150)
-- Dependencies: 221
-- Data for Name: spatial_ref_sys; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spatial_ref_sys (srid, auth_name, auth_srid, srtext, proj4text) FROM stdin;
\.


--
-- TOC entry 5996 (class 0 OID 20951)
-- Dependencies: 230
-- Data for Name: vehicle_tracking; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.vehicle_tracking (id, vehicle_id, ping_time, geom) FROM stdin;
1	Truck-01	2026-08-20 17:41:30.728739	0101000020E6100000713D0AD7A3405240AE47E17A14CE4040
2	Truck-01	2026-08-20 17:41:30.728739	0101000020E6100000333333333343524048E17A14AED74040
\.


--
-- TOC entry 6022 (class 0 OID 0)
-- Dependencies: 239
-- Name: banks_atms_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.banks_atms_id_seq', 37, true);


--
-- TOC entry 6023 (class 0 OID 0)
-- Dependencies: 235
-- Name: buildings_building_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.buildings_building_id_seq', 3, true);


--
-- TOC entry 6024 (class 0 OID 0)
-- Dependencies: 237
-- Name: flood_zones_zone_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.flood_zones_zone_id_seq', 1, true);


--
-- TOC entry 6025 (class 0 OID 0)
-- Dependencies: 231
-- Name: geofence_alerts_alert_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.geofence_alerts_alert_id_seq', 1, true);


--
-- TOC entry 6026 (class 0 OID 0)
-- Dependencies: 227
-- Name: geofence_zones_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.geofence_zones_id_seq', 1, true);


--
-- TOC entry 6027 (class 0 OID 0)
-- Dependencies: 225
-- Name: locations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.locations_id_seq', 2, true);


--
-- TOC entry 6028 (class 0 OID 0)
-- Dependencies: 233
-- Name: roads_road_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.roads_road_id_seq', 2, true);


--
-- TOC entry 6029 (class 0 OID 0)
-- Dependencies: 229
-- Name: vehicle_tracking_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.vehicle_tracking_id_seq', 2, true);


--
-- TOC entry 5835 (class 2606 OID 25658)
-- Name: banks_atms banks_atms_osm_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.banks_atms
    ADD CONSTRAINT banks_atms_osm_id_key UNIQUE (osm_id);


--
-- TOC entry 5837 (class 2606 OID 25656)
-- Name: banks_atms banks_atms_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.banks_atms
    ADD CONSTRAINT banks_atms_pkey PRIMARY KEY (id);


--
-- TOC entry 5830 (class 2606 OID 23355)
-- Name: buildings buildings_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.buildings
    ADD CONSTRAINT buildings_pkey PRIMARY KEY (building_id);


--
-- TOC entry 5832 (class 2606 OID 23365)
-- Name: flood_zones flood_zones_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.flood_zones
    ADD CONSTRAINT flood_zones_pkey PRIMARY KEY (zone_id);


--
-- TOC entry 5826 (class 2606 OID 20970)
-- Name: geofence_alerts geofence_alerts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.geofence_alerts
    ADD CONSTRAINT geofence_alerts_pkey PRIMARY KEY (alert_id);


--
-- TOC entry 5822 (class 2606 OID 20949)
-- Name: geofence_zones geofence_zones_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.geofence_zones
    ADD CONSTRAINT geofence_zones_pkey PRIMARY KEY (id);


--
-- TOC entry 5820 (class 2606 OID 20939)
-- Name: locations locations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.locations
    ADD CONSTRAINT locations_pkey PRIMARY KEY (id);


--
-- TOC entry 5828 (class 2606 OID 23345)
-- Name: roads roads_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roads
    ADD CONSTRAINT roads_pkey PRIMARY KEY (road_id);


--
-- TOC entry 5824 (class 2606 OID 20960)
-- Name: vehicle_tracking vehicle_tracking_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vehicle_tracking
    ADD CONSTRAINT vehicle_tracking_pkey PRIMARY KEY (id);


--
-- TOC entry 5833 (class 1259 OID 25659)
-- Name: banks_atms_geom_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX banks_atms_geom_idx ON public.banks_atms USING gist (geom);


--
-- TOC entry 5838 (class 2620 OID 20976)
-- Name: vehicle_tracking trg_vehicle_movement; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER trg_vehicle_movement AFTER INSERT ON public.vehicle_tracking FOR EACH ROW EXECUTE FUNCTION public.check_geofence_breach();


-- Completed on 2026-11-13 15:38:35

--
-- PostgreSQL database dump complete
--

\unrestrict we5qMInoDMrPnDH0KLMYBIl3ma7MEPFVEaugLYPlLh2Dmbx04leLpkLA2HV5H9T

--
-- Database "webgis1" dump
--

--
-- PostgreSQL database dump
--

\restrict O9cSk5SfEC2zeldC06WK3CM4mAAykYK8ZRrqTfuD6PsJPWVwKFrluurimtc55Vq

-- Dumped from database version 18.3
-- Dumped by pg_dump version 18.2

-- Started on 2026-11-13 15:38:35

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 5003 (class 1262 OID 20977)
-- Name: webgis1; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE webgis1 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';


ALTER DATABASE webgis1 OWNER TO postgres;

\unrestrict O9cSk5SfEC2zeldC06WK3CM4mAAykYK8ZRrqTfuD6PsJPWVwKFrluurimtc55Vq
\connect webgis1
\restrict O9cSk5SfEC2zeldC06WK3CM4mAAykYK8ZRrqTfuD6PsJPWVwKFrluurimtc55Vq

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

-- Completed on 2026-11-13 15:38:37

--
-- PostgreSQL database dump complete
--

\unrestrict O9cSk5SfEC2zeldC06WK3CM4mAAykYK8ZRrqTfuD6PsJPWVwKFrluurimtc55Vq

--
-- Database "webgis_07" dump
--

--
-- PostgreSQL database dump
--

\restrict GhW4J2KdHa0pvJtbUlNVApnXzXkbiQaCt9ltt0Xi6PId4y5lVTP5jlmgIHcQtcU

-- Dumped from database version 18.3
-- Dumped by pg_dump version 18.2

-- Started on 2026-11-13 15:38:37

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 5935 (class 1262 OID 22077)
-- Name: webgis_07; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE webgis_07 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';


ALTER DATABASE webgis_07 OWNER TO postgres;

\unrestrict GhW4J2KdHa0pvJtbUlNVApnXzXkbiQaCt9ltt0Xi6PId4y5lVTP5jlmgIHcQtcU
\connect webgis_07
\restrict GhW4J2KdHa0pvJtbUlNVApnXzXkbiQaCt9ltt0Xi6PId4y5lVTP5jlmgIHcQtcU

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 2 (class 3079 OID 22078)
-- Name: postgis; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS postgis WITH SCHEMA public;


--
-- TOC entry 5936 (class 0 OID 0)
-- Dependencies: 2
-- Name: EXTENSION postgis; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION postgis IS 'PostGIS geometry and geography spatial types and functions';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 226 (class 1259 OID 23167)
-- Name: health_facilities; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.health_facilities (
    facility_id integer NOT NULL,
    name character varying(100) NOT NULL,
    type character varying(30) NOT NULL,
    district character varying(60),
    beds integer DEFAULT 0,
    geom public.geometry(Point,4326) NOT NULL
);


ALTER TABLE public.health_facilities OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 23166)
-- Name: health_facilities_facility_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.health_facilities_facility_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.health_facilities_facility_id_seq OWNER TO postgres;

--
-- TOC entry 5937 (class 0 OID 0)
-- Dependencies: 225
-- Name: health_facilities_facility_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.health_facilities_facility_id_seq OWNED BY public.health_facilities.facility_id;


--
-- TOC entry 5769 (class 2604 OID 23170)
-- Name: health_facilities facility_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.health_facilities ALTER COLUMN facility_id SET DEFAULT nextval('public.health_facilities_facility_id_seq'::regclass);


--
-- TOC entry 5929 (class 0 OID 23167)
-- Dependencies: 226
-- Data for Name: health_facilities; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.health_facilities (facility_id, name, type, district, beds, geom) FROM stdin;
\.


--
-- TOC entry 5768 (class 0 OID 22397)
-- Dependencies: 221
-- Data for Name: spatial_ref_sys; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spatial_ref_sys (srid, auth_name, auth_srid, srtext, proj4text) FROM stdin;
\.


--
-- TOC entry 5938 (class 0 OID 0)
-- Dependencies: 225
-- Name: health_facilities_facility_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.health_facilities_facility_id_seq', 1, false);


--
-- TOC entry 5775 (class 2606 OID 23179)
-- Name: health_facilities health_facilities_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.health_facilities
    ADD CONSTRAINT health_facilities_pkey PRIMARY KEY (facility_id);


-- Completed on 2026-11-13 15:38:39

--
-- PostgreSQL database dump complete
--

\unrestrict GhW4J2KdHa0pvJtbUlNVApnXzXkbiQaCt9ltt0Xi6PId4y5lVTP5jlmgIHcQtcU

--
-- Database "webgis_8" dump
--

--
-- PostgreSQL database dump
--

\restrict dXqPg0jDSTbN1d7OsdGLojqjbIMZgpz524WbtrtrA0sQ0cSc7hnBtTtrmpI1qRg

-- Dumped from database version 18.3
-- Dumped by pg_dump version 18.2

-- Started on 2026-11-13 15:38:39

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 5935 (class 1262 OID 23369)
-- Name: webgis_8; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE webgis_8 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';


ALTER DATABASE webgis_8 OWNER TO postgres;

\unrestrict dXqPg0jDSTbN1d7OsdGLojqjbIMZgpz524WbtrtrA0sQ0cSc7hnBtTtrmpI1qRg
\connect webgis_8
\restrict dXqPg0jDSTbN1d7OsdGLojqjbIMZgpz524WbtrtrA0sQ0cSc7hnBtTtrmpI1qRg

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 2 (class 3079 OID 23370)
-- Name: postgis; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS postgis WITH SCHEMA public;


--
-- TOC entry 5936 (class 0 OID 0)
-- Dependencies: 2
-- Name: EXTENSION postgis; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION postgis IS 'PostGIS geometry and geography spatial types and functions';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 226 (class 1259 OID 24459)
-- Name: monitoring_stations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.monitoring_stations (
    id integer NOT NULL,
    station_name character varying(100) NOT NULL,
    rainfall_mm numeric(100,0) NOT NULL,
    risk_level character varying(20) NOT NULL,
    observation_date date NOT NULL,
    geom public.geometry(Point,4326) NOT NULL
);


ALTER TABLE public.monitoring_stations OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 24458)
-- Name: monitoring_stations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.monitoring_stations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.monitoring_stations_id_seq OWNER TO postgres;

--
-- TOC entry 5937 (class 0 OID 0)
-- Dependencies: 225
-- Name: monitoring_stations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.monitoring_stations_id_seq OWNED BY public.monitoring_stations.id;


--
-- TOC entry 5769 (class 2604 OID 24462)
-- Name: monitoring_stations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.monitoring_stations ALTER COLUMN id SET DEFAULT nextval('public.monitoring_stations_id_seq'::regclass);


--
-- TOC entry 5929 (class 0 OID 24459)
-- Dependencies: 226
-- Data for Name: monitoring_stations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.monitoring_stations (id, station_name, rainfall_mm, risk_level, observation_date, geom) FROM stdin;
1	Islamabad Central	46	Moderate	2026-10-20	0101000020E61000009E5E29CB10435240F2B0506B9AD74040
2	Rawal Lake	72	High	2026-10-20	0101000020E6100000C0EC9E3C2C485240B4C876BE9FDA4040
3	Margalla Hills	91	High	2026-10-20	0101000020E61000009D8026C286435240FA7E6ABC74E34040
4	Rawalpindi Central	28	Low	2026-10-20	0101000020E61000007FD93D79584452401C7C613255C84040
5	Leh Nullah	108	Very High	2026-10-20	0101000020E61000004C37894160455240B0726891EDCC4040
\.


--
-- TOC entry 5768 (class 0 OID 23689)
-- Dependencies: 221
-- Data for Name: spatial_ref_sys; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spatial_ref_sys (srid, auth_name, auth_srid, srtext, proj4text) FROM stdin;
\.


--
-- TOC entry 5938 (class 0 OID 0)
-- Dependencies: 225
-- Name: monitoring_stations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.monitoring_stations_id_seq', 5, true);


--
-- TOC entry 5775 (class 2606 OID 24472)
-- Name: monitoring_stations monitoring_stations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.monitoring_stations
    ADD CONSTRAINT monitoring_stations_pkey PRIMARY KEY (id);


--
-- TOC entry 5773 (class 1259 OID 24475)
-- Name: monitoring_stations_geom_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX monitoring_stations_geom_idx ON public.monitoring_stations USING gist (geom);


-- Completed on 2026-11-13 15:38:41

--
-- PostgreSQL database dump complete
--

\unrestrict dXqPg0jDSTbN1d7OsdGLojqjbIMZgpz524WbtrtrA0sQ0cSc7hnBtTtrmpI1qRg

--
-- Database "webgis_labproject" dump
--

--
-- PostgreSQL database dump
--

\restrict POZpaKEMJdBsOVcu56cYVa8LrgNatXMlEtFBICJctr5BRau2dbJQ5izpTUJZJza

-- Dumped from database version 18.3
-- Dumped by pg_dump version 18.2

-- Started on 2026-11-13 15:38:41

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 5939 (class 1262 OID 25641)
-- Name: webgis_labproject; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE webgis_labproject WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';


ALTER DATABASE webgis_labproject OWNER TO postgres;

\unrestrict POZpaKEMJdBsOVcu56cYVa8LrgNatXMlEtFBICJctr5BRau2dbJQ5izpTUJZJza
\connect webgis_labproject
\restrict POZpaKEMJdBsOVcu56cYVa8LrgNatXMlEtFBICJctr5BRau2dbJQ5izpTUJZJza

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 2 (class 3079 OID 25660)
-- Name: postgis; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS postgis WITH SCHEMA public;


--
-- TOC entry 5940 (class 0 OID 0)
-- Dependencies: 2
-- Name: EXTENSION postgis; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION postgis IS 'PostGIS geometry and geography spatial types and functions';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 226 (class 1259 OID 26743)
-- Name: banks_atms; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.banks_atms (
    id integer NOT NULL,
    name character varying(150) NOT NULL,
    feature_type character varying(10) NOT NULL,
    bank_name character varying(100),
    address character varying(255),
    opening_hours character varying(100),
    source character varying(50) DEFAULT 'OpenStreetMap'::character varying,
    osm_id character varying(30),
    geom public.geometry(Point,4326) NOT NULL,
    CONSTRAINT banks_atms_feature_type_check CHECK (((feature_type)::text = ANY ((ARRAY['Bank'::character varying, 'ATM'::character varying])::text[])))
);


ALTER TABLE public.banks_atms OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 26742)
-- Name: banks_atms_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.banks_atms_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.banks_atms_id_seq OWNER TO postgres;

--
-- TOC entry 5941 (class 0 OID 0)
-- Dependencies: 225
-- Name: banks_atms_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.banks_atms_id_seq OWNED BY public.banks_atms.id;


--
-- TOC entry 5769 (class 2604 OID 26746)
-- Name: banks_atms id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.banks_atms ALTER COLUMN id SET DEFAULT nextval('public.banks_atms_id_seq'::regclass);


--
-- TOC entry 5933 (class 0 OID 26743)
-- Dependencies: 226
-- Data for Name: banks_atms; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.banks_atms (id, name, feature_type, bank_name, address, opening_hours, source, osm_id, geom) FROM stdin;
1	Allied Bank Bus Terminal Branch	Bank	Allied Bank	Bus Terminal, Mirpur Khas	\N	Google Maps (manual)	\N	0101000020E6100000429770E82D3F51404DBA2D910B863940
2	Soneri Bank	Bank	Soneri Bank	Hyderabad Road, Mirpur Khas	\N	Google Maps (manual)	\N	0101000020E610000018062CB98A3F514017B9A7AB3B863940
3	United Bank Limited (UBL)	Bank	United Bank Limited	M.A Jinnah Road, Mirpur Khas	\N	Google Maps (manual)	\N	0101000020E61000005708ABB184405140884677103B873940
4	NBP Customer Facilitation Centre	Bank	National Bank of Pakistan	M.A Jinnah Road, Heerabad, Mirpur Khas	\N	Google Maps (manual)	\N	0101000020E6100000F19C2D20B4405140F3C81F0C3C873940
5	National Bank of Pakistan (NBP) Baldia Shopping Centre	Bank	National Bank of Pakistan	Baldia Shopping Centre, MA Jinnah Road, Market Chowk, New Town, Mirpur Khas	\N	Google Maps (manual)	\N	0101000020E610000070B4E386DF4051404A27124C35873940
6	Habib Metro Bank	Bank	Habib Metropolitan Bank	PM Colony, Mirpur Khas	\N	Google Maps (manual)	\N	0101000020E6100000BB97FBE4284151400CCEE0EF17873940
7	BankIslami Mirpur Khas Branch	Bank	BankIslami	Ward-A, PM Colony, Mirpur Khas	\N	Google Maps (manual)	\N	0101000020E61000006823D74D2941514098BED7101C873940
8	Bank AL Habib (PM Colony)	Bank	Bank AL Habib	PM Colony, Mirpur Khas	\N	Google Maps (manual)	\N	0101000020E6100000F12900C633415140C251F2EA1C873940
9	The Bank of Punjab	Bank	Bank of Punjab	Mirpur Khas - Umerkot Road, Mirpur Khas	\N	Google Maps (manual)	\N	0101000020E6100000999A046F48415140295B24ED46873940
10	JS Bank	Bank	JS Bank	N-120, Mirpur Khas	\N	Google Maps (manual)	\N	0101000020E610000009A69A594B415140726F7EC344873940
11	Bank Alfalah	Bank	Bank Alfalah	Umerkot Road, Adam Town, Mirpur Khas	\N	Google Maps (manual)	\N	0101000020E6100000D5E940D653415140246420CF2E873940
12	MCB Bank Regional Office	Bank	MCB Bank	Muslimabad, Mirpur Khas	\N	Google Maps (manual)	\N	0101000020E610000000C974E8F44051406F0C01C0B1873940
13	Bank AL Habib MPS (Muslimabad)	Bank	Bank AL Habib	Muslimabad, Mirpur Khas	\N	Google Maps (manual)	\N	0101000020E6100000D064FF3C0D4151401D3D7E6FD3873940
14	BankIslami Iqbal Road Branch	Bank	BankIslami	Iqbal Road, Mirpur Khas	\N	Google Maps (manual)	\N	0101000020E6100000E622BE13B34051402D08E57D1C853940
15	Habib Bank Limited (HBL)	Bank	Habib Bank Limited	Mirpur Khas	\N	Google Maps (manual)	\N	0101000020E6100000D6390664AF4051404C530438BD833940
16	Meezan Bank Satellite Town Branch	Bank	Meezan Bank	Mirpur Khas - Digri Road, Satellite Town, Mirpur Khas	\N	Google Maps (manual)	\N	0101000020E6100000535BEA20AF405140A1496249B9833940
17	Allied Bank Limited (ABL)	Bank	Allied Bank	Mirpur Khas	\N	Google Maps (manual)	\N	0101000020E6100000E2E7BF07AF40514030D7A20568833940
18	National Bank of Pakistan Khipro Stand Branch and ATM	Bank	National Bank of Pakistan	Khipro Stand, Gulshan-e-Nawab Colony, Mirpur Khas	\N	Google Maps (manual)	\N	0101000020E6100000E5805D4D9E415140AB5CA8FC6B893940
19	ZTBL ATM	ATM	Zarai Taraqiati Bank (ZTBL)	Digri Road, Mirpur Khas	\N	Google Maps (manual)	\N	0101000020E61000001E4E603AAD405140F850A2258F833940
20	Allied Bank Bus Terminal Branch ATM	ATM	Allied Bank	Bus Terminal, Mirpur Khas	\N	Google Maps (manual)	\N	0101000020E6100000D0EFFB372F3F51404DBA2D910B863940
21	Soneri Bank ATM	ATM	Soneri Bank	Hyderabad Road, Mirpur Khas	\N	Google Maps (manual)	\N	0101000020E6100000A65EB7088C3F514017B9A7AB3B863940
22	United Bank Limited (UBL) ATM	ATM	United Bank Limited	M.A Jinnah Road, Mirpur Khas	\N	Google Maps (manual)	\N	0101000020E6100000E560360186405140884677103B873940
23	NBP Customer Facilitation Centre ATM	ATM	National Bank of Pakistan	M.A Jinnah Road, Heerabad, Mirpur Khas	\N	Google Maps (manual)	\N	0101000020E61000007FF5B86FB5405140F3C81F0C3C873940
24	National Bank of Pakistan (NBP) Baldia Shopping Centre ATM	ATM	National Bank of Pakistan	Baldia Shopping Centre, MA Jinnah Road, Market Chowk, New Town, Mirpur Khas	\N	Google Maps (manual)	\N	0101000020E6100000FE0C6FD6E04051404A27124C35873940
25	Habib Metro Bank ATM	ATM	Habib Metropolitan Bank	PM Colony, Mirpur Khas	\N	Google Maps (manual)	\N	0101000020E610000049F086342A4151400CCEE0EF17873940
26	BankIslami Mirpur Khas Branch ATM	ATM	BankIslami	Ward-A, PM Colony, Mirpur Khas	\N	Google Maps (manual)	\N	0101000020E6100000F67B629D2A41514098BED7101C873940
27	Bank AL Habib (PM Colony) ATM	ATM	Bank AL Habib	PM Colony, Mirpur Khas	\N	Google Maps (manual)	\N	0101000020E61000007F828B1535415140C251F2EA1C873940
28	The Bank of Punjab ATM	ATM	Bank of Punjab	Mirpur Khas - Umerkot Road, Mirpur Khas	\N	Google Maps (manual)	\N	0101000020E610000027F38FBE49415140295B24ED46873940
29	JS Bank ATM	ATM	JS Bank	N-120, Mirpur Khas	\N	Google Maps (manual)	\N	0101000020E610000097FE25A94C415140726F7EC344873940
30	Bank Alfalah ATM	ATM	Bank Alfalah	Umerkot Road, Adam Town, Mirpur Khas	\N	Google Maps (manual)	\N	0101000020E61000006342CC2555415140246420CF2E873940
31	MCB Bank Regional Office ATM	ATM	MCB Bank	Muslimabad, Mirpur Khas	\N	Google Maps (manual)	\N	0101000020E61000008E210038F64051406F0C01C0B1873940
32	Bank AL Habib MPS (Muslimabad) ATM	ATM	Bank AL Habib	Muslimabad, Mirpur Khas	\N	Google Maps (manual)	\N	0101000020E61000005EBD8A8C0E4151401D3D7E6FD3873940
33	BankIslami Iqbal Road Branch ATM	ATM	BankIslami	Iqbal Road, Mirpur Khas	\N	Google Maps (manual)	\N	0101000020E6100000747B4963B44051402D08E57D1C853940
34	Habib Bank Limited (HBL) ATM	ATM	Habib Bank Limited	Mirpur Khas	\N	Google Maps (manual)	\N	0101000020E6100000649291B3B04051404C530438BD833940
35	Meezan Bank Satellite Town Branch ATM	ATM	Meezan Bank	Mirpur Khas - Digri Road, Satellite Town, Mirpur Khas	\N	Google Maps (manual)	\N	0101000020E6100000E1B37570B0405140A1496249B9833940
36	Allied Bank Limited (ABL) ATM	ATM	Allied Bank	Mirpur Khas	\N	Google Maps (manual)	\N	0101000020E610000070404B57B040514030D7A20568833940
37	National Bank of Pakistan Khipro Stand ATM	ATM	National Bank of Pakistan	Khipro Stand, Gulshan-e-Nawab Colony, Mirpur Khas	\N	Google Maps (manual)	\N	0101000020E610000073D9E89C9F415140AB5CA8FC6B893940
\.


--
-- TOC entry 5768 (class 0 OID 25979)
-- Dependencies: 221
-- Data for Name: spatial_ref_sys; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spatial_ref_sys (srid, auth_name, auth_srid, srtext, proj4text) FROM stdin;
\.


--
-- TOC entry 5942 (class 0 OID 0)
-- Dependencies: 225
-- Name: banks_atms_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.banks_atms_id_seq', 37, true);


--
-- TOC entry 5777 (class 2606 OID 26758)
-- Name: banks_atms banks_atms_osm_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.banks_atms
    ADD CONSTRAINT banks_atms_osm_id_key UNIQUE (osm_id);


--
-- TOC entry 5779 (class 2606 OID 26756)
-- Name: banks_atms banks_atms_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.banks_atms
    ADD CONSTRAINT banks_atms_pkey PRIMARY KEY (id);


--
-- TOC entry 5775 (class 1259 OID 26759)
-- Name: banks_atms_geom_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX banks_atms_geom_idx ON public.banks_atms USING gist (geom);


-- Completed on 2026-11-13 15:38:42

--
-- PostgreSQL database dump complete
--

\unrestrict POZpaKEMJdBsOVcu56cYVa8LrgNatXMlEtFBICJctr5BRau2dbJQ5izpTUJZJza

-- Completed on 2026-11-13 15:38:42

--
-- PostgreSQL database cluster dump complete
--

