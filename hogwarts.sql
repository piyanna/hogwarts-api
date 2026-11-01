--
-- PostgreSQL database dump
--

\restrict P4Scef5bI1W1J9ZVtpO3JqE3cfJoUtJMFuqe4Kj54bAEafyJENKds139D4VzECt

-- Dumped from database version 18.6 (Postgres.app)
-- Dumped by pg_dump version 18.4

-- Started on 2026-11-01 22:24:45 CET

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
-- TOC entry 6 (class 2615 OID 16390)
-- Name: firstdb; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA firstdb;


ALTER SCHEMA firstdb OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 224 (class 1259 OID 16405)
-- Name: books; Type: TABLE; Schema: firstdb; Owner: postgres
--

CREATE TABLE firstdb.books (
    id integer NOT NULL,
    author character(80) NOT NULL,
    title character(150) NOT NULL
);


ALTER TABLE firstdb.books OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 16404)
-- Name: books_id_seq; Type: SEQUENCE; Schema: firstdb; Owner: postgres
--

ALTER TABLE firstdb.books ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME firstdb.books_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 232 (class 1259 OID 16441)
-- Name: course; Type: TABLE; Schema: firstdb; Owner: postgres
--

CREATE TABLE firstdb.course (
    id integer NOT NULL,
    course_name character varying(200) NOT NULL,
    teacher integer NOT NULL
);


ALTER TABLE firstdb.course OWNER TO postgres;

--
-- TOC entry 231 (class 1259 OID 16440)
-- Name: course_id_seq; Type: SEQUENCE; Schema: firstdb; Owner: postgres
--

ALTER TABLE firstdb.course ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME firstdb.course_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 233 (class 1259 OID 16451)
-- Name: course_students; Type: TABLE; Schema: firstdb; Owner: postgres
--

CREATE TABLE firstdb.course_students (
    course_id integer NOT NULL,
    student_id integer NOT NULL
);


ALTER TABLE firstdb.course_students OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 16414)
-- Name: houses; Type: TABLE; Schema: firstdb; Owner: postgres
--

CREATE TABLE firstdb.houses (
    id integer NOT NULL,
    house character varying(90) NOT NULL,
    colors character varying(90) NOT NULL
);


ALTER TABLE firstdb.houses OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 16413)
-- Name: houses_id_seq; Type: SEQUENCE; Schema: firstdb; Owner: postgres
--

ALTER TABLE firstdb.houses ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME firstdb.houses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 220 (class 1259 OID 16391)
-- Name: katte; Type: TABLE; Schema: firstdb; Owner: postgres
--

CREATE TABLE firstdb.katte (
);


ALTER TABLE firstdb.katte OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 16396)
-- Name: katte1; Type: TABLE; Schema: firstdb; Owner: postgres
--

CREATE TABLE firstdb.katte1 (
    id integer NOT NULL,
    breed character(30),
    birthday date NOT NULL,
    name character(30),
    forsale boolean NOT NULL
);


ALTER TABLE firstdb.katte1 OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16395)
-- Name: katte1_id_seq; Type: SEQUENCE; Schema: firstdb; Owner: postgres
--

ALTER TABLE firstdb.katte1 ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME firstdb.katte1_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 230 (class 1259 OID 16431)
-- Name: students; Type: TABLE; Schema: firstdb; Owner: postgres
--

CREATE TABLE firstdb.students (
    id integer NOT NULL,
    student_name character varying(200) NOT NULL,
    year character varying(4) NOT NULL,
    house integer NOT NULL
);


ALTER TABLE firstdb.students OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 16430)
-- Name: students_id_seq; Type: SEQUENCE; Schema: firstdb; Owner: postgres
--

ALTER TABLE firstdb.students ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME firstdb.students_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 228 (class 1259 OID 16422)
-- Name: teachers; Type: TABLE; Schema: firstdb; Owner: postgres
--

CREATE TABLE firstdb.teachers (
    id integer NOT NULL,
    "teacher-name" character varying(200) CONSTRAINT "teachers_student-name_not_null" NOT NULL,
    house integer NOT NULL
);


ALTER TABLE firstdb.teachers OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 16421)
-- Name: teachers_id_seq; Type: SEQUENCE; Schema: firstdb; Owner: postgres
--

ALTER TABLE firstdb.teachers ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME firstdb.teachers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 3871 (class 0 OID 16405)
-- Dependencies: 224
-- Data for Name: books; Type: TABLE DATA; Schema: firstdb; Owner: postgres
--

INSERT INTO firstdb.books OVERRIDING SYSTEM VALUE VALUES (1, 'christian                                                                       ', 'harry potter                                                                                                                                          ');


--
-- TOC entry 3879 (class 0 OID 16441)
-- Dependencies: 232
-- Data for Name: course; Type: TABLE DATA; Schema: firstdb; Owner: postgres
--

INSERT INTO firstdb.course OVERRIDING SYSTEM VALUE VALUES (1, 'Transfiguration', 1);
INSERT INTO firstdb.course OVERRIDING SYSTEM VALUE VALUES (2, 'Potions', 2);
INSERT INTO firstdb.course OVERRIDING SYSTEM VALUE VALUES (3, 'Charms', 3);
INSERT INTO firstdb.course OVERRIDING SYSTEM VALUE VALUES (4, 'Herbology', 4);
INSERT INTO firstdb.course OVERRIDING SYSTEM VALUE VALUES (5, 'Defence Against the Dark Arts', 6);
INSERT INTO firstdb.course OVERRIDING SYSTEM VALUE VALUES (7, 'Care of Magical Creatures', 2);


--
-- TOC entry 3880 (class 0 OID 16451)
-- Dependencies: 233
-- Data for Name: course_students; Type: TABLE DATA; Schema: firstdb; Owner: postgres
--

INSERT INTO firstdb.course_students VALUES (1, 1);
INSERT INTO firstdb.course_students VALUES (2, 4);
INSERT INTO firstdb.course_students VALUES (3, 2);
INSERT INTO firstdb.course_students VALUES (4, 7);
INSERT INTO firstdb.course_students VALUES (5, 1);


--
-- TOC entry 3873 (class 0 OID 16414)
-- Dependencies: 226
-- Data for Name: houses; Type: TABLE DATA; Schema: firstdb; Owner: postgres
--

INSERT INTO firstdb.houses OVERRIDING SYSTEM VALUE VALUES (1, 'Gryffindor', 'Red and Gold');
INSERT INTO firstdb.houses OVERRIDING SYSTEM VALUE VALUES (2, 'Slytherin', 'Green and Silver');
INSERT INTO firstdb.houses OVERRIDING SYSTEM VALUE VALUES (3, 'Ravenclaw', 'Blue and Bronze');
INSERT INTO firstdb.houses OVERRIDING SYSTEM VALUE VALUES (4, 'Hufflepuff', 'Yellow and Black');


--
-- TOC entry 3867 (class 0 OID 16391)
-- Dependencies: 220
-- Data for Name: katte; Type: TABLE DATA; Schema: firstdb; Owner: postgres
--



--
-- TOC entry 3869 (class 0 OID 16396)
-- Dependencies: 222
-- Data for Name: katte1; Type: TABLE DATA; Schema: firstdb; Owner: postgres
--

INSERT INTO firstdb.katte1 OVERRIDING SYSTEM VALUE VALUES (4, 'house                         ', '2004-05-02', 'mrs. fluffy                   ', false);
INSERT INTO firstdb.katte1 OVERRIDING SYSTEM VALUE VALUES (3, 'persian                       ', '2001-01-02', 'mr. fluffy                    ', true);


--
-- TOC entry 3877 (class 0 OID 16431)
-- Dependencies: 230
-- Data for Name: students; Type: TABLE DATA; Schema: firstdb; Owner: postgres
--

INSERT INTO firstdb.students OVERRIDING SYSTEM VALUE VALUES (1, 'Harry Potter', '5', 1);
INSERT INTO firstdb.students OVERRIDING SYSTEM VALUE VALUES (2, 'Hermione Granger', '5', 1);
INSERT INTO firstdb.students OVERRIDING SYSTEM VALUE VALUES (3, 'Ron Weasley', '5', 1);
INSERT INTO firstdb.students OVERRIDING SYSTEM VALUE VALUES (4, 'Draco Malfoy', '5', 2);
INSERT INTO firstdb.students OVERRIDING SYSTEM VALUE VALUES (5, 'Luna Lovegood', '4', 3);
INSERT INTO firstdb.students OVERRIDING SYSTEM VALUE VALUES (6, 'Cedric Diggory', '6', 4);
INSERT INTO firstdb.students OVERRIDING SYSTEM VALUE VALUES (7, 'Neville Longbottom', '5', 1);
INSERT INTO firstdb.students OVERRIDING SYSTEM VALUE VALUES (8, 'Ginny Weasley', '4', 1);


--
-- TOC entry 3875 (class 0 OID 16422)
-- Dependencies: 228
-- Data for Name: teachers; Type: TABLE DATA; Schema: firstdb; Owner: postgres
--

INSERT INTO firstdb.teachers OVERRIDING SYSTEM VALUE VALUES (1, 'Minerva McGonagall', 1);
INSERT INTO firstdb.teachers OVERRIDING SYSTEM VALUE VALUES (2, 'Severus Snape', 2);
INSERT INTO firstdb.teachers OVERRIDING SYSTEM VALUE VALUES (3, 'Filius Flitwick', 3);
INSERT INTO firstdb.teachers OVERRIDING SYSTEM VALUE VALUES (4, 'Pomona Sprout', 4);
INSERT INTO firstdb.teachers OVERRIDING SYSTEM VALUE VALUES (5, 'Albus Dumbledore', 1);
INSERT INTO firstdb.teachers OVERRIDING SYSTEM VALUE VALUES (6, 'Remus Lupin', 1);


--
-- TOC entry 3886 (class 0 OID 0)
-- Dependencies: 223
-- Name: books_id_seq; Type: SEQUENCE SET; Schema: firstdb; Owner: postgres
--

SELECT pg_catalog.setval('firstdb.books_id_seq', 1, true);


--
-- TOC entry 3887 (class 0 OID 0)
-- Dependencies: 231
-- Name: course_id_seq; Type: SEQUENCE SET; Schema: firstdb; Owner: postgres
--

SELECT pg_catalog.setval('firstdb.course_id_seq', 7, true);


--
-- TOC entry 3888 (class 0 OID 0)
-- Dependencies: 225
-- Name: houses_id_seq; Type: SEQUENCE SET; Schema: firstdb; Owner: postgres
--

SELECT pg_catalog.setval('firstdb.houses_id_seq', 4, true);


--
-- TOC entry 3889 (class 0 OID 0)
-- Dependencies: 221
-- Name: katte1_id_seq; Type: SEQUENCE SET; Schema: firstdb; Owner: postgres
--

SELECT pg_catalog.setval('firstdb.katte1_id_seq', 4, true);


--
-- TOC entry 3890 (class 0 OID 0)
-- Dependencies: 229
-- Name: students_id_seq; Type: SEQUENCE SET; Schema: firstdb; Owner: postgres
--

SELECT pg_catalog.setval('firstdb.students_id_seq', 9, true);


--
-- TOC entry 3891 (class 0 OID 0)
-- Dependencies: 227
-- Name: teachers_id_seq; Type: SEQUENCE SET; Schema: firstdb; Owner: postgres
--

SELECT pg_catalog.setval('firstdb.teachers_id_seq', 7, true);


--
-- TOC entry 3707 (class 2606 OID 16412)
-- Name: books books_pkey; Type: CONSTRAINT; Schema: firstdb; Owner: postgres
--

ALTER TABLE ONLY firstdb.books
    ADD CONSTRAINT books_pkey PRIMARY KEY (id);


--
-- TOC entry 3715 (class 2606 OID 16449)
-- Name: course course_pkey; Type: CONSTRAINT; Schema: firstdb; Owner: postgres
--

ALTER TABLE ONLY firstdb.course
    ADD CONSTRAINT course_pkey PRIMARY KEY (id);


--
-- TOC entry 3717 (class 2606 OID 16457)
-- Name: course_students course_students_pkey; Type: CONSTRAINT; Schema: firstdb; Owner: postgres
--

ALTER TABLE ONLY firstdb.course_students
    ADD CONSTRAINT course_students_pkey PRIMARY KEY (course_id, student_id);


--
-- TOC entry 3709 (class 2606 OID 16420)
-- Name: houses houses_pkey; Type: CONSTRAINT; Schema: firstdb; Owner: postgres
--

ALTER TABLE ONLY firstdb.houses
    ADD CONSTRAINT houses_pkey PRIMARY KEY (id);


--
-- TOC entry 3705 (class 2606 OID 16403)
-- Name: katte1 katte1_pkey; Type: CONSTRAINT; Schema: firstdb; Owner: postgres
--

ALTER TABLE ONLY firstdb.katte1
    ADD CONSTRAINT katte1_pkey PRIMARY KEY (id);


--
-- TOC entry 3713 (class 2606 OID 16439)
-- Name: students students_pkey; Type: CONSTRAINT; Schema: firstdb; Owner: postgres
--

ALTER TABLE ONLY firstdb.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (id);


--
-- TOC entry 3711 (class 2606 OID 16429)
-- Name: teachers teachers_pkey; Type: CONSTRAINT; Schema: firstdb; Owner: postgres
--

ALTER TABLE ONLY firstdb.teachers
    ADD CONSTRAINT teachers_pkey PRIMARY KEY (id);


--
-- TOC entry 3718 (class 2606 OID 16458)
-- Name: course_students course_students_course_id_fkey; Type: FK CONSTRAINT; Schema: firstdb; Owner: postgres
--

ALTER TABLE ONLY firstdb.course_students
    ADD CONSTRAINT course_students_course_id_fkey FOREIGN KEY (course_id) REFERENCES firstdb.course(id);


--
-- TOC entry 3719 (class 2606 OID 16463)
-- Name: course_students course_students_student_id_fkey; Type: FK CONSTRAINT; Schema: firstdb; Owner: postgres
--

ALTER TABLE ONLY firstdb.course_students
    ADD CONSTRAINT course_students_student_id_fkey FOREIGN KEY (student_id) REFERENCES firstdb.students(id);


-- Completed on 2026-11-01 22:24:50 CET

--
-- PostgreSQL database dump complete
--

\unrestrict P4Scef5bI1W1J9ZVtpO3JqE3cfJoUtJMFuqe4Kj54bAEafyJENKds139D4VzECt

