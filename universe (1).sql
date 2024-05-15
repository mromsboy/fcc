--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: dupe; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.dupe (
    planet_id integer,
    name character varying(30),
    number_of_rings integer,
    circumference numeric,
    nickname text NOT NULL,
    has_life boolean,
    star_id integer,
    dupe_id integer NOT NULL
);


ALTER TABLE public.dupe OWNER TO freecodecamp;

--
-- Name: dupe_dupe_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.dupe_dupe_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dupe_dupe_id_seq OWNER TO freecodecamp;

--
-- Name: dupe_dupe_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.dupe_dupe_id_seq OWNED BY public.dupe.dupe_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    number_of_planets integer NOT NULL,
    is_visible boolean,
    circumference numeric
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    has_gas boolean,
    width numeric,
    circumference numeric,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    number_of_rings integer NOT NULL,
    circumference numeric NOT NULL,
    nickname text,
    has_life boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    size numeric,
    is_visible boolean,
    distance_in_ly numeric,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: dupe dupe_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dupe ALTER COLUMN dupe_id SET DEFAULT nextval('public.dupe_dupe_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: dupe; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.dupe VALUES (2, 'VG3', 6, 87929, 'Plutonia', false, 1, 1);
INSERT INTO public.dupe VALUES (3, 'M33', 0, 3497369, 'Anais', false, 1, 2);
INSERT INTO public.dupe VALUES (4, 'X78', 123, 38369, 'Mina', false, 1, 3);
INSERT INTO public.dupe VALUES (5, 'P98', 123, 38369, 'Beau', false, 5, 4);
INSERT INTO public.dupe VALUES (6, 'L08', 1569, 9989, 'Pluni', false, 4, 5);
INSERT INTO public.dupe VALUES (7, 'D33', 1569, 289, 'Mouna', true, 3, 6);
INSERT INTO public.dupe VALUES (8, 'D99', 869, 241, 'Trinity', true, 2, 7);
INSERT INTO public.dupe VALUES (9, 'A23', 87, 2661, 'Nicol', true, 2, 8);
INSERT INTO public.dupe VALUES (13, 'U76', 0, 551, 'Blue', true, 5, 9);
INSERT INTO public.dupe VALUES (14, 'E01', 0, 298229, 'Earth', true, 2, 10);
INSERT INTO public.dupe VALUES (15, 'C09', 0, 9091, 'Cotta', true, 2, 11);
INSERT INTO public.dupe VALUES (16, 'G67', 0, 4078, 'Clairy', true, 1, 12);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Exodust', 98722, true, 987382);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 287423, true, 192732);
INSERT INTO public.galaxy VALUES (3, 'Starfy', 267932, false, 77646);
INSERT INTO public.galaxy VALUES (4, 'Fleury', 2900002, true, 19200);
INSERT INTO public.galaxy VALUES (5, 'Majora', 909032, false, 28026);
INSERT INTO public.galaxy VALUES (6, 'Galactus', 88723, true, 8792);
INSERT INTO public.galaxy VALUES (7, 'Storma', 68922, false, 23528);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (2, 'Luna', false, NULL, 204674, 2);
INSERT INTO public.moon VALUES (3, 'Flutty', false, NULL, 204674, 2);
INSERT INTO public.moon VALUES (4, 'Hydra', false, NULL, 2332674, 3);
INSERT INTO public.moon VALUES (5, 'Padi', true, NULL, 2332674, 3);
INSERT INTO public.moon VALUES (8, 'Neara', false, NULL, 2223, 4);
INSERT INTO public.moon VALUES (9, 'Morty', false, NULL, 12341, 16);
INSERT INTO public.moon VALUES (10, 'Blizzard', false, NULL, 704, 6);
INSERT INTO public.moon VALUES (11, 'Activo', true, NULL, 2781, 5);
INSERT INTO public.moon VALUES (15, 'Nova', true, NULL, 81, 3);
INSERT INTO public.moon VALUES (16, 'Blorg', false, NULL, 933, 2);
INSERT INTO public.moon VALUES (17, 'Candu', false, NULL, 587, 2);
INSERT INTO public.moon VALUES (18, 'Dunnes', true, NULL, 3041, 6);
INSERT INTO public.moon VALUES (19, 'Stonehedge', false, NULL, 413, 4);
INSERT INTO public.moon VALUES (20, 'Stati', false, NULL, 58447, 2);
INSERT INTO public.moon VALUES (21, 'Cujama', true, NULL, 304, 6);
INSERT INTO public.moon VALUES (22, 'Sonic', false, NULL, 477, 8);
INSERT INTO public.moon VALUES (23, 'Floora', false, NULL, 5657, 2);
INSERT INTO public.moon VALUES (24, 'Flipper', true, NULL, 3044, 6);
INSERT INTO public.moon VALUES (25, 'Mallow', false, NULL, 77, 8);
INSERT INTO public.moon VALUES (26, 'Cantu', false, NULL, 57, 2);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (2, 'VG3', 6, 87929, 'Plutonia', false, 1);
INSERT INTO public.planet VALUES (3, 'M33', 0, 3497369, 'Anais', false, 1);
INSERT INTO public.planet VALUES (4, 'X78', 123, 38369, 'Mina', false, 1);
INSERT INTO public.planet VALUES (5, 'P98', 123, 38369, 'Beau', false, 5);
INSERT INTO public.planet VALUES (6, 'L08', 1569, 9989, 'Pluni', false, 4);
INSERT INTO public.planet VALUES (7, 'D33', 1569, 289, 'Mouna', true, 3);
INSERT INTO public.planet VALUES (8, 'D99', 869, 241, 'Trinity', true, 2);
INSERT INTO public.planet VALUES (9, 'A23', 87, 2661, 'Nicol', true, 2);
INSERT INTO public.planet VALUES (13, 'U76', 0, 551, 'Blue', true, 5);
INSERT INTO public.planet VALUES (14, 'E01', 0, 298229, 'Earth', true, 2);
INSERT INTO public.planet VALUES (15, 'C09', 0, 9091, 'Cotta', true, 2);
INSERT INTO public.planet VALUES (16, 'G67', 0, 4078, 'Clairy', true, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Axios', 2385628, true, 89737, 1);
INSERT INTO public.star VALUES (2, 'Golium', 6444328, true, 87577, 2);
INSERT INTO public.star VALUES (3, 'Tolia', 64448, true, 897, 7);
INSERT INTO public.star VALUES (4, 'Lutone', 56448, false, 83497, 4);
INSERT INTO public.star VALUES (5, 'NewtX', 597, false, 1087, 6);
INSERT INTO public.star VALUES (6, 'Spayx', 53237, false, 188687, 6);


--
-- Name: dupe_dupe_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.dupe_dupe_id_seq', 12, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 26, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 16, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: dupe dupe_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dupe
    ADD CONSTRAINT dupe_pkey PRIMARY KEY (dupe_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: dupe uq_dupe_nickname; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dupe
    ADD CONSTRAINT uq_dupe_nickname UNIQUE (nickname);


--
-- Name: star fk_galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

