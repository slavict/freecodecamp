--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
-- Name: commets; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.commets (
    commets_id integer NOT NULL,
    name character varying(20) NOT NULL,
    star integer NOT NULL
);


ALTER TABLE public.commets OWNER TO freecodecamp;

--
-- Name: commets_commets_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.commets_commets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.commets_commets_id_seq OWNER TO freecodecamp;

--
-- Name: commets_commets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.commets_commets_id_seq OWNED BY public.commets.commets_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    shape text,
    galaxy_id integer NOT NULL,
    diameter numeric,
    age integer,
    name character varying(32) NOT NULL
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
    name character varying(30) NOT NULL,
    moon_id integer NOT NULL,
    age integer,
    diameter numeric,
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
    diameter integer,
    mass integer,
    has_atmosphere boolean,
    has_water_in_liquid_state boolean,
    age integer,
    name character varying(32) NOT NULL,
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
    diameter numeric,
    age integer,
    name character varying(32) NOT NULL,
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
-- Name: commets commets_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.commets ALTER COLUMN commets_id SET DEFAULT nextval('public.commets_commets_id_seq'::regclass);


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
-- Data for Name: commets; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.commets VALUES (1, 'Halley', 1);
INSERT INTO public.commets VALUES (2, 'Encke', 1);
INSERT INTO public.commets VALUES (3, 'Borrelly', 1);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('spiral', 1, 100, 1, 'Milky Way');
INSERT INTO public.galaxy VALUES ('cloud', 2, 132, 45, 'Maggelan Cloud');
INSERT INTO public.galaxy VALUES ('cloud', 3, 132, 45, 'Small Maggelan Cloud');
INSERT INTO public.galaxy VALUES ('spiral', 4, 100, 1, 'Andromeda');
INSERT INTO public.galaxy VALUES ('eliptic', 5, 100, 1, 'M82');
INSERT INTO public.galaxy VALUES ('eliptic', 6, 100, 1, 'M87');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Gynamide', 2, 5, 34, 5);
INSERT INTO public.moon VALUES ('Io', 3, 5, 34, 5);
INSERT INTO public.moon VALUES ('Calisto', 4, 5, 34, 5);
INSERT INTO public.moon VALUES ('titan', 5, 5, 34, 5);
INSERT INTO public.moon VALUES ('Iapetus', 6, 5, 34, 5);
INSERT INTO public.moon VALUES ('Tethys', 7, 5, 34, 5);
INSERT INTO public.moon VALUES ('Dione', 8, 5, 34, 5);
INSERT INTO public.moon VALUES ('Deimos', 10, 5, 34, 5);
INSERT INTO public.moon VALUES ('Helene', 11, 5, 34, 5);
INSERT INTO public.moon VALUES ('Pandora', 12, 5, 34, 5);
INSERT INTO public.moon VALUES ('Prometheus', 13, 5, 34, 5);
INSERT INTO public.moon VALUES ('Epimetheus', 14, 5, 34, 5);
INSERT INTO public.moon VALUES ('Janus', 15, 5, 34, 5);
INSERT INTO public.moon VALUES ('Phoebe', 16, 5, 34, 5);
INSERT INTO public.moon VALUES ('Hyperion', 17, 5, 34, 5);
INSERT INTO public.moon VALUES ('Mimas', 18, 5, 34, 5);
INSERT INTO public.moon VALUES ('Proteus', 19, 5, 34, 5);
INSERT INTO public.moon VALUES ('Miranda', 21, 5, 34, 5);
INSERT INTO public.moon VALUES ('moon', 1, 5, 34, 5);
INSERT INTO public.moon VALUES ('Phobos', 9, 5, 34, 5);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 143, 734, true, true, 5, 'earth', 1);
INSERT INTO public.planet VALUES (2, 143, 734, true, true, 5, 'mercury', 1);
INSERT INTO public.planet VALUES (3, 143, 734, true, false, 5, 'venus', 1);
INSERT INTO public.planet VALUES (4, 143, 734, true, false, 5, 'mars', 1);
INSERT INTO public.planet VALUES (5, 143, 734, true, false, 5, 'jupiter', 1);
INSERT INTO public.planet VALUES (6, 143, 734, true, false, 5, 'saturn', 1);
INSERT INTO public.planet VALUES (7, 143, 734, true, false, 5, 'neptune', 1);
INSERT INTO public.planet VALUES (8, 143, 734, true, false, 5, 'pluto', 1);
INSERT INTO public.planet VALUES (9, 143, 734, true, false, 5, 'uranus', 1);
INSERT INTO public.planet VALUES (10, 143, 734, true, true, 5, 'b123', 1);
INSERT INTO public.planet VALUES (11, 143, 734, true, true, 5, 'c123', 1);
INSERT INTO public.planet VALUES (12, 143, 734, true, true, 5, 'd34', 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 123.4, 765, 'Sun', 1);
INSERT INTO public.star VALUES (2, 13, 734, 'Alpha centauri', 1);
INSERT INTO public.star VALUES (3, 143, 734, 'Alpha proxima  centauri', 1);
INSERT INTO public.star VALUES (4, 143, 734, 'Aldebaran', 1);
INSERT INTO public.star VALUES (5, 143, 734, 'Rigel', 1);
INSERT INTO public.star VALUES (6, 143, 734, 'Sirius', 1);
INSERT INTO public.star VALUES (7, 143, 734, 'Polux', 1);


--
-- Name: commets_commets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.commets_commets_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: commets commets_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.commets
    ADD CONSTRAINT commets_name_key UNIQUE (name);


--
-- Name: commets commets_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.commets
    ADD CONSTRAINT commets_pkey PRIMARY KEY (commets_id);


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
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT name UNIQUE (name);


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

