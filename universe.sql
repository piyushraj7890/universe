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
    name character varying(100) NOT NULL,
    type text,
    size integer,
    age numeric,
    active boolean
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
    name character varying(100) NOT NULL,
    type character varying(50),
    diameter integer,
    mass numeric,
    planet_id integer,
    habitable boolean
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
    name character varying(100) NOT NULL,
    type character varying(50),
    radius integer,
    mass numeric,
    star_id integer,
    habitable boolean
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
    name character varying(100) NOT NULL,
    type character varying(50),
    launch_date date,
    mission_duration integer,
    galaxy_id integer,
    status text
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
    name character varying(100) NOT NULL,
    type character varying(50),
    mass integer,
    temperature integer,
    galaxy_id integer,
    luminous boolean
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

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Spiral', 100000, 13.6, true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Spiral', 120000, 10.1, true);
INSERT INTO public.galaxy VALUES (3, 'Messier 87', 'Elliptical', 600000, 13.5, false);
INSERT INTO public.galaxy VALUES (4, 'Triangulum', 'Spiral', 50000, 5.7, true);
INSERT INTO public.galaxy VALUES (5, 'Whirlpool', 'Spiral', 70000, 8.2, true);
INSERT INTO public.galaxy VALUES (6, 'Centaurus A', 'Elliptical', 300000, 12.4, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'Terrestrial', 3474, 73500000000000000000000, 1, false);
INSERT INTO public.moon VALUES (2, 'Phobos', 'Rocky', 22, 10700000000000000, 2, false);
INSERT INTO public.moon VALUES (3, 'Deimos', 'Rocky', 12, 1800000000000000, 2, false);
INSERT INTO public.moon VALUES (4, 'Ganymede', 'Ice', 5268, 148000000000000000000000, 3, false);
INSERT INTO public.moon VALUES (5, 'Europa', 'Ice', 3121, 48000000000000000000000, 3, true);
INSERT INTO public.moon VALUES (6, 'Callisto', 'Ice', 4800, 108000000000000000000000, 3, false);
INSERT INTO public.moon VALUES (7, 'Titan', 'Rocky/Ice', 5150, 135000000000000000000000, 4, true);
INSERT INTO public.moon VALUES (8, 'Enceladus', 'Ice', 504, 108000000000000000000, 4, true);
INSERT INTO public.moon VALUES (9, 'Triton', 'Rocky/Ice', 2706, 21400000000000000000000, 5, false);
INSERT INTO public.moon VALUES (10, 'Io', 'Rocky', 3660, 89300000000000000000000, 5, false);
INSERT INTO public.moon VALUES (11, 'Luna', 'Terrestrial', 3474, 73500000000000000000000, 6, false);
INSERT INTO public.moon VALUES (12, 'Phobos II', 'Rocky', 22, 10700000000000000, 7, false);
INSERT INTO public.moon VALUES (13, 'Deimos II', 'Rocky', 12, 1800000000000000, 8, false);
INSERT INTO public.moon VALUES (14, 'Ganymede II', 'Ice', 5268, 148000000000000000000000, 9, false);
INSERT INTO public.moon VALUES (15, 'Europa II', 'Ice', 3121, 48000000000000000000000, 10, true);
INSERT INTO public.moon VALUES (16, 'Callisto II', 'Ice', 4800, 108000000000000000000000, 11, false);
INSERT INTO public.moon VALUES (17, 'Titan II', 'Rocky/Ice', 5150, 135000000000000000000000, 12, true);
INSERT INTO public.moon VALUES (18, 'Enceladus II', 'Ice', 504, 108000000000000000000, 11, true);
INSERT INTO public.moon VALUES (19, 'Triton II', 'Rocky/Ice', 2706, 21400000000000000000000, 10, false);
INSERT INTO public.moon VALUES (20, 'Io II', 'Rocky', 3660, 89300000000000000000000, 9, false);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 'Terrestrial', 6371, 5972000000000000000000000, 1, true);
INSERT INTO public.planet VALUES (2, 'Mars', 'Terrestrial', 3389, 639000000000000000000000, 1, false);
INSERT INTO public.planet VALUES (3, 'Jupiter', 'Gas Giant', 69911, 1898000000000000000000000000, 1, false);
INSERT INTO public.planet VALUES (4, 'Saturn', 'Gas Giant', 58232, 568300000000000000000000000, 1, false);
INSERT INTO public.planet VALUES (5, 'Venus', 'Terrestrial', 6052, 4867000000000000000000000, 1, false);
INSERT INTO public.planet VALUES (6, 'Neptune', 'Ice Giant', 24622, 102400000000000000000000000, 2, false);
INSERT INTO public.planet VALUES (7, 'Uranus', 'Ice Giant', 25362, 86810000000000000000000000, 2, false);
INSERT INTO public.planet VALUES (8, 'Kepler-22b', 'Terrestrial', 12100, 6400000000000000000000000, 2, true);
INSERT INTO public.planet VALUES (9, 'Gliese 581g', 'Terrestrial', 7520, 3100000000000000000000000, 2, true);
INSERT INTO public.planet VALUES (10, 'HD 40307g', 'Terrestrial', 13100, 8200000000000000000000000, 2, true);
INSERT INTO public.planet VALUES (11, 'Gliese 436b', 'Neptune-like', 5730, 433000000000000000000000, 2, false);
INSERT INTO public.planet VALUES (12, '55 Cancri e', 'Super-Earth', 21700, 8600000000000000000000000, 2, false);


--
-- Data for Name: spacecraft; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.spacecraft VALUES (1, 'Voyager 1', 'Space Probe', '1977-09-05', 49, 1, 'Active');
INSERT INTO public.spacecraft VALUES (2, 'Voyager 2', 'Space Probe', '1977-08-20', 44, 2, 'Active');
INSERT INTO public.spacecraft VALUES (3, 'New Horizons', 'Space Probe', '2006-01-19', 19, 1, 'Active');
INSERT INTO public.spacecraft VALUES (4, 'Curiosity', 'Rover', '2011-11-26', NULL, 1, 'Active');
INSERT INTO public.spacecraft VALUES (5, 'Perseverance', 'Rover', '2020-07-30', NULL, 1, 'Active');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'G-type', 1989000, 5778, 1, true);
INSERT INTO public.star VALUES (2, 'Sirius', 'A-type', 3330000, 9940, 1, true);
INSERT INTO public.star VALUES (3, 'Alpha Centauri A', 'G-type', 2250000, 5790, 1, true);
INSERT INTO public.star VALUES (4, 'Alpha Centauri B', 'K-type', 1230000, 5260, 1, true);
INSERT INTO public.star VALUES (5, 'Proxima Centauri', 'M-type', 123000, 3042, 1, true);
INSERT INTO public.star VALUES (6, 'Betelgeuse', 'M-type', 11900000, 3500, 2, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: spacecraft_spacecraft_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.spacecraft_spacecraft_id_seq', 5, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: spacecraft spacecraft_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.spacecraft
    ADD CONSTRAINT spacecraft_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

