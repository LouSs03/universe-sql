--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    asteroid_id integer NOT NULL,
    name character varying(20) NOT NULL,
    size_km integer,
    orbit_period_days integer,
    mass numeric(10,2) NOT NULL,
    description text,
    is_potentially_hazardous boolean,
    is_visible boolean,
    planet_id integer
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteroid_asteroid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteroid_asteroid_id_seq OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteroid_asteroid_id_seq OWNED BY public.asteroid.asteroid_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description text,
    age_in_millions_of_years numeric(10,3) NOT NULL,
    number_of_stars integer,
    age_million_years integer,
    have_black_hole boolean,
    have_planets boolean
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
    name character varying(20) NOT NULL,
    description text,
    age_in_millions_of_years numeric(10,3) NOT NULL,
    diameter_km integer,
    orbital_period_days integer,
    has_atmosphere boolean,
    is_spherical boolean,
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
    name character varying(20) NOT NULL,
    description text,
    age_in_millions_of_years numeric(10,3) NOT NULL,
    radius_km integer,
    orbital_period_days integer,
    has_life boolean,
    is_spherical boolean,
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
    name character varying(20) NOT NULL,
    description text,
    age_in_millions_of_years numeric(10,3) NOT NULL,
    temperature_k integer,
    age_million_years integer,
    is_active boolean,
    is_visible boolean,
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
-- Name: asteroid asteroid_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid ALTER COLUMN asteroid_id SET DEFAULT nextval('public.asteroid_asteroid_id_seq'::regclass);


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
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES (1, 'AsteroidA', 5, 400, 1200.50, 'Small asteroid', false, true, 1);
INSERT INTO public.asteroid VALUES (2, 'AsteroidB', 12, 600, 5400.75, 'Medium asteroid', true, true, 2);
INSERT INTO public.asteroid VALUES (3, 'AsteroidC', 20, 800, 9800.00, 'Large asteroid', true, false, 3);
INSERT INTO public.asteroid VALUES (4, 'AsteroidD', 8, 300, 2200.40, 'Rocky asteroid', false, true, 4);
INSERT INTO public.asteroid VALUES (5, 'AsteroidE', 15, 700, 7500.90, 'Metal-rich asteroid', true, true, 5);
INSERT INTO public.asteroid VALUES (6, 'AsteroidF', 25, 1000, 15000.00, 'Massive asteroid', true, false, 6);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Our home galaxy', 13600.000, 100000000, 13600, true, true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Nearest spiral galaxy', 10000.000, 1000000000, 10000, true, true);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Small spiral galaxy', 12000.000, 40000000, 12000, false, true);
INSERT INTO public.galaxy VALUES (4, 'Sombrero', 'Galaxy with large bulge', 9000.000, 800000000, 9000, true, false);
INSERT INTO public.galaxy VALUES (5, 'Whirlpool', 'Interacting galaxy', 11000.000, 100000000, 11000, true, true);
INSERT INTO public.galaxy VALUES (6, 'Cartwheel', 'Ring-shaped galaxy', 8000.000, 300000000, 8000, false, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'Earth moon', 4500.000, 3474, 27, false, true, 3);
INSERT INTO public.moon VALUES (2, 'Phobos', 'Mars moon', 4500.000, 22, 0, false, false, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 'Mars moon', 4500.000, 12, 1, false, false, 4);
INSERT INTO public.moon VALUES (4, 'MoonA1', 'Moon A1', 3000.000, 100, 10, false, true, 5);
INSERT INTO public.moon VALUES (5, 'MoonA2', 'Moon A2', 3000.000, 120, 12, false, true, 5);
INSERT INTO public.moon VALUES (6, 'MoonB1', 'Moon B1', 3200.000, 200, 15, false, true, 6);
INSERT INTO public.moon VALUES (7, 'MoonB2', 'Moon B2', 3200.000, 220, 18, false, true, 6);
INSERT INTO public.moon VALUES (8, 'MoonC1', 'Moon C1', 6000.000, 300, 30, true, true, 7);
INSERT INTO public.moon VALUES (9, 'MoonC2', 'Moon C2', 6000.000, 350, 35, true, true, 7);
INSERT INTO public.moon VALUES (10, 'MoonD1', 'Moon D1', 5000.000, 180, 20, false, true, 8);
INSERT INTO public.moon VALUES (11, 'MoonD2', 'Moon D2', 5000.000, 190, 22, false, true, 8);
INSERT INTO public.moon VALUES (12, 'MoonE1', 'Moon E1', 7000.000, 210, 25, false, true, 9);
INSERT INTO public.moon VALUES (13, 'MoonE2', 'Moon E2', 7000.000, 230, 28, false, true, 9);
INSERT INTO public.moon VALUES (14, 'MoonF1', 'Moon F1', 6500.000, 260, 40, false, true, 10);
INSERT INTO public.moon VALUES (15, 'MoonF2', 'Moon F2', 6500.000, 280, 45, false, true, 10);
INSERT INTO public.moon VALUES (16, 'MoonG1', 'Moon G1', 8000.000, 300, 50, false, true, 11);
INSERT INTO public.moon VALUES (17, 'MoonG2', 'Moon G2', 8000.000, 320, 55, false, true, 11);
INSERT INTO public.moon VALUES (18, 'MoonH1', 'Moon H1', 8200.000, 340, 60, false, true, 12);
INSERT INTO public.moon VALUES (19, 'MoonH2', 'Moon H2', 8200.000, 360, 65, false, true, 12);
INSERT INTO public.moon VALUES (20, 'MoonI1', 'Irregularly shaped moon with chaotic rotation', 4500.000, 270, 21, false, false, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'Closest planet to Sun', 4500.000, 2439, 88, false, true, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 'Hot planet', 4500.000, 6051, 225, false, true, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 'Habitable planet', 4500.000, 6371, 365, true, true, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 'Red planet', 4500.000, 3389, 687, false, true, 1);
INSERT INTO public.planet VALUES (5, 'PlanetA', 'Exoplanet A', 3000.000, 7000, 400, false, true, 2);
INSERT INTO public.planet VALUES (6, 'PlanetB', 'Exoplanet B', 3200.000, 8000, 500, false, true, 2);
INSERT INTO public.planet VALUES (7, 'PlanetC', 'Gas giant', 6000.000, 60000, 2000, false, true, 3);
INSERT INTO public.planet VALUES (8, 'PlanetD', 'Rocky planet', 5000.000, 5000, 300, false, true, 3);
INSERT INTO public.planet VALUES (9, 'PlanetE', 'Cold planet', 7000.000, 4500, 600, false, true, 4);
INSERT INTO public.planet VALUES (10, 'PlanetF', 'Large planet', 6500.000, 55000, 1500, false, true, 4);
INSERT INTO public.planet VALUES (11, 'PlanetG', 'Distant planet', 8000.000, 9000, 800, false, true, 5);
INSERT INTO public.planet VALUES (12, 'PlanetH', 'Outer planet', 8200.000, 10000, 900, false, true, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'Main sequence star', 4600.000, 5778, 4600, true, true, 1);
INSERT INTO public.star VALUES (2, 'Sirius', 'Bright binary star', 250.000, 9940, 250, true, true, 1);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 'Red supergiant', 8000.000, 3500, 8000, true, true, 2);
INSERT INTO public.star VALUES (4, 'Vega', 'Bright star in Lyra', 455.000, 9600, 455, true, true, 3);
INSERT INTO public.star VALUES (5, 'Rigel', 'Blue supergiant', 9000.000, 12100, 9000, true, true, 4);
INSERT INTO public.star VALUES (6, 'Proxima Centauri', 'Red dwarf star', 4500.000, 3042, 4500, true, false, 5);


--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroid_asteroid_id_seq', 6, true);


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
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: asteroid asteroid_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_name_key UNIQUE (name);


--
-- Name: asteroid asteroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_pkey PRIMARY KEY (asteroid_id);


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
-- Name: asteroid asteroid_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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

