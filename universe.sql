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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    distance_from_earth bigint,
    age_in_millions_of_years integer,
    rotation_speed integer,
    description text NOT NULL,
    has_life boolean
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
    temperature integer,
    name character varying(20) NOT NULL,
    distance_from_earth bigint,
    age_in_millions_of_years integer,
    rotation_speed integer,
    description text NOT NULL,
    has_life boolean,
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
    temperature integer,
    name character varying(20) NOT NULL,
    distance_from_earth bigint,
    age_in_millions_of_years integer,
    rotation_speed integer,
    description text NOT NULL,
    has_life boolean,
    star_id integer,
    population numeric(10,2)
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
-- Name: spacecraft; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.spacecraft (
    spacecraft_id integer NOT NULL,
    name character varying(40) NOT NULL,
    speed integer NOT NULL
);


ALTER TABLE public.spacecraft OWNER TO freecodecamp;

--
-- Name: spacecraft_spacecraft_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.spacecraft_spacecraft_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spacecraft_spacecraft_id_seq OWNER TO freecodecamp;

--
-- Name: spacecraft_spacecraft_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.spacecraft_spacecraft_id_seq OWNED BY public.spacecraft.spacecraft_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    temperature integer,
    name character varying(20) NOT NULL,
    distance_from_earth bigint,
    age_in_millions_of_years integer,
    rotation_speed integer,
    description text NOT NULL,
    has_life boolean,
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
-- Name: spacecraft spacecraft_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.spacecraft ALTER COLUMN spacecraft_id SET DEFAULT nextval('public.spacecraft_spacecraft_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'The Great Beyond', 9846541651651, 78, 785, 'Very spacious', true);
INSERT INTO public.galaxy VALUES (3, 'Far far away', 7564654651621, 5, 18, 'We are looking for Fiona', true);
INSERT INTO public.galaxy VALUES (4, 'Spiderverse', 7454654651621, 55, 18, 'We might be wrong but we saw a web', true);
INSERT INTO public.galaxy VALUES (5, 'Four', 400, 40, 4, 'Galaxy number 4', false);
INSERT INTO public.galaxy VALUES (6, 'Five', 500, 50, 5, 'Galaxy number 5', false);
INSERT INTO public.galaxy VALUES (7, 'Six', 600, 60, 6, 'Galaxy number 6', false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 56456, 'Full Moon', 4654654654, 78, 45, 'It is quite dark', false, 1);
INSERT INTO public.moon VALUES (2, 566, 'Sunlight Moon', 54654654, 80, 5, 'No sunshine at night', false, 2);
INSERT INTO public.moon VALUES (3, 5646, 'Nursery Rhyme', 654654654, 4561, 450, 'Twinkles like a star', false, 5);
INSERT INTO public.moon VALUES (4, 4, 'Four', 4, 4, 4, 'Fourth planet', false, 1);
INSERT INTO public.moon VALUES (5, 5, 'Five', 5, 5, 5, 'Description Five', false, 2);
INSERT INTO public.moon VALUES (6, 6, 'Six', 6, 61, 6, 'Sixth planet', false, 5);
INSERT INTO public.moon VALUES (7, 7, 'Seven', 7, 71, 7, 'Seven planet', false, 5);
INSERT INTO public.moon VALUES (8, 8, 'Eight', 8, 81, 8, 'Eight planet', false, 5);
INSERT INTO public.moon VALUES (9, 9, 'Nine', 9, 91, 9, 'Nine planet', false, 5);
INSERT INTO public.moon VALUES (10, 8, 'Ten', 10, 10, 10, 'Ten planet', false, 5);
INSERT INTO public.moon VALUES (11, 11, 'Eleven', 11, 11, 11, 'Eleven planet', false, 1);
INSERT INTO public.moon VALUES (12, 12, 'Twelve', 12, 12, 12, 'Description Twelve', false, 2);
INSERT INTO public.moon VALUES (13, 13, 'Thirteen', 13, 13, 13, 'Planet number Thirteen', false, 5);
INSERT INTO public.moon VALUES (14, 14, 'Fourteen', 14, 14, 14, 'Fourteen planet', false, 5);
INSERT INTO public.moon VALUES (15, 15, 'fifteen', 15, 15, 15, 'Fifteen planet', false, 5);
INSERT INTO public.moon VALUES (16, 16, 'Sixteen', 16, 16, 16, 'Sixteen planet', false, 5);
INSERT INTO public.moon VALUES (17, 17, 'Seventeen', 17, 17, 17, '17 planet', false, 5);
INSERT INTO public.moon VALUES (18, 18, 'Eighteen', 18, 18, 18, '18 planet', false, 1);
INSERT INTO public.moon VALUES (19, 19, 'Nineteen', 19, 19, 19, '19 planet', false, 5);
INSERT INTO public.moon VALUES (20, 20, 'Twenty', 20, 20, 20, '20 planet', false, 5);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 900, 'Earth', 654651651, 78, 456, 'A very strange planet', true, 1, 6000.00);
INSERT INTO public.planet VALUES (2, 45, 'Pizza Hut', 54651651, 59, 56, 'Very good with extra cheese', true, 4, 7000.00);
INSERT INTO public.planet VALUES (5, 5, 'Capsule Corp', 51651, 40, 7, 'A strong presence of Saiyans', true, 5, 7000.00);
INSERT INTO public.planet VALUES (6, 3, 'Three', 300, 30, 300, 'Third rock from the sun', false, 5, 5000.00);
INSERT INTO public.planet VALUES (7, 4, 'Four', 400, 40, 400, 'Fourth rock from the sun', false, 4, 5000.00);
INSERT INTO public.planet VALUES (8, 5, 'five', 500, 50, 500, 'Fifth rock from the sun', false, 5, 5000.00);
INSERT INTO public.planet VALUES (9, 6, 'Six', 600, 60, 600, 'Sixth rock from the sun', false, 4, 5000.00);
INSERT INTO public.planet VALUES (10, 7, 'Seven', 700, 70, 700, 'Seven rock from the sun', false, 1, 5000.00);
INSERT INTO public.planet VALUES (11, 8, 'eight', 800, 80, 800, 'Eight rock from the sun', false, 4, 5000.00);
INSERT INTO public.planet VALUES (12, 9, 'Nine', 900, 90, 900, 'Nine rock from the sun', false, 1, 5000.00);
INSERT INTO public.planet VALUES (13, 10, 'Ten', 1000, 100, 1000, 'Ten rock from the sun', false, 1, 5000.00);
INSERT INTO public.planet VALUES (14, 11, 'Eleven', 1100, 110, 1100, 'eleven rock from the sun', false, 5, 5000.00);
INSERT INTO public.planet VALUES (15, 12, 'Twelve', 1200, 120, 1200, 'Twelve rock from the sun', false, 4, 5000.00);


--
-- Data for Name: spacecraft; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.spacecraft VALUES (1, 'Blitz Bok', 90000);
INSERT INTO public.spacecraft VALUES (2, 'Shooting Star', 5000);
INSERT INTO public.spacecraft VALUES (3, 'Thunder Strike', 78000);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 564651, 'Lucky Star', 465123137987, 879, 51, 'Looks like a fish', false, 1);
INSERT INTO public.star VALUES (4, 7841, 'Special Star', 123137987564, 200, 78, 'The one from Super Mario', false, 3);
INSERT INTO public.star VALUES (5, 84651, 'Bright Star', 165137987, 9, 41651, 'It is quite bright', false, 4);
INSERT INTO public.star VALUES (6, 400, 'Four', 4000, 4, 400, 'Fourth star', false, 1);
INSERT INTO public.star VALUES (7, 500, 'Five', 5000, 5, 500, 'Five star', false, 5);
INSERT INTO public.star VALUES (8, 600, 'Six', 6000, 6, 600, 'Six star', false, 3);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 15, true);


--
-- Name: spacecraft_spacecraft_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.spacecraft_spacecraft_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


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
-- Name: spacecraft spacecraft_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.spacecraft
    ADD CONSTRAINT spacecraft_name_key UNIQUE (name);


--
-- Name: spacecraft spacecraft_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.spacecraft
    ADD CONSTRAINT spacecraft_pkey PRIMARY KEY (spacecraft_id);


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
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

