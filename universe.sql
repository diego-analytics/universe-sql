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
\ connect universe
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
    name character varying(30) NOT NULL,
    risk_of_collision_with_earth numeric,
    galaxy_id integer
);
ALTER TABLE public.asteroid OWNER TO freecodecamp;
--
-- Name: astedoids_asteroid_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--
CREATE SEQUENCE public.astedoids_asteroid_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public.astedoids_asteroid_id_seq OWNER TO freecodecamp;
--
-- Name: astedoids_asteroid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--
ALTER SEQUENCE public.astedoids_asteroid_id_seq OWNED BY public.asteroid.asteroid_id;
--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--
CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(60) NOT NULL,
    age_in_millions_of_years numeric,
    galaxy_type character varying(30),
    distance_from_earth integer,
    size integer
);
ALTER TABLE public.galaxy OWNER TO freecodecamp;
--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--
CREATE SEQUENCE public.galaxy_galaxy_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
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
    name character varying(60) NOT NULL,
    size_in_km integer,
    has_water boolean,
    age_in_millions_of_years integer,
    planet_id integer
);
ALTER TABLE public.moon OWNER TO freecodecamp;
--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--
CREATE SEQUENCE public.moon_moon_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
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
    name character varying(60) NOT NULL,
    age_in_millions_of_year integer,
    planet_type character varying(30),
    description text,
    has_life boolean,
    star_id integer
);
ALTER TABLE public.planet OWNER TO freecodecamp;
--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--
CREATE SEQUENCE public.planet_planet_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
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
    name character varying(60) NOT NULL,
    size integer,
    age_in_millions_of_year integer,
    is_orbited boolean,
    galaxy_id integer
);
ALTER TABLE public.star OWNER TO freecodecamp;
--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--
CREATE SEQUENCE public.star_star_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;
--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--
ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;
--
-- Name: asteroid asteroid_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--
ALTER TABLE ONLY public.asteroid
ALTER COLUMN asteroid_id
SET DEFAULT nextval('public.astedoids_asteroid_id_seq'::regclass);
--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--
ALTER TABLE ONLY public.galaxy
ALTER COLUMN galaxy_id
SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);
--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--
ALTER TABLE ONLY public.moon
ALTER COLUMN moon_id
SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);
--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--
ALTER TABLE ONLY public.planet
ALTER COLUMN planet_id
SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);
--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--
ALTER TABLE ONLY public.star
ALTER COLUMN star_id
SET DEFAULT nextval('public.star_star_id_seq'::regclass);
--
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--
INSERT INTO public.asteroid
VALUES (1, 'Rasputin-500', 0.89, 2);
INSERT INTO public.asteroid
VALUES (2, 'UMD-890B2', 1.56, 3);
INSERT INTO public.asteroid
VALUES (3, 'Harley', 25.33, 1);
INSERT INTO public.asteroid
VALUES (4, 'TT-200', 60.9, 1);
INSERT INTO public.asteroid
VALUES (5, 'YUIM38123', 0.0002, 4);
--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--
INSERT INTO public.galaxy
VALUES (1, 'Milky Way', 12.6, 'sb', 0, 27);
INSERT INTO public.galaxy
VALUES (2, 'Andromeda', NULL, 'SA(s)b ', 765, 27);
INSERT INTO public.galaxy
VALUES (3, 'Eye of Sauron', NULL, '(R)SAB(rs)ab', 16, 35);
INSERT INTO public.galaxy
VALUES (4, 'Little Sombrero', NULL, 'SA(S)ab', 40, 12);
INSERT INTO public.galaxy
VALUES (5, 'Bode', NULL, 'SA(S)ab', 12, 29);
INSERT INTO public.galaxy
VALUES (6, 'Black Eye', NULL, '(R)SA(rs)ab', 17, 16);
INSERT INTO public.galaxy
VALUES (7, 'Cigar', NULL, 'I0', 12, 12);
--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--
INSERT INTO public.moon
VALUES (1, 'Moon', 5000, false, 10000, 1);
INSERT INTO public.moon
VALUES (2, 'Uruakan', 3040, false, 80000, 2);
INSERT INTO public.moon
VALUES (3, 'Tilapia', 6000, true, 7030, 2);
INSERT INTO public.moon
VALUES (4, 'Meaw', 9030, false, 39991, 3);
INSERT INTO public.moon
VALUES (5, 'Gatsby', 7930, true, 10030, 4);
INSERT INTO public.moon
VALUES (6, 'Love', 1023, false, 901330, 4);
INSERT INTO public.moon
VALUES (7, 'Santa Maria', 29900, false, 77920, 5);
INSERT INTO public.moon
VALUES (8, 'Pinta', 78000, true, 90440, 5);
INSERT INTO public.moon
VALUES (9, 'Nina', 802, false, 6660, 6);
INSERT INTO public.moon
VALUES (10, 'Ganja', 420, false, 42000, 7);
INSERT INTO public.moon
VALUES (11, 'Gal', 10000, true, 30000, 8);
INSERT INTO public.moon
VALUES (12, 'Geralt', 93000, false, 70000, 9);
INSERT INTO public.moon
VALUES (13, 'Harmand', 5000, false, 72900, 10);
INSERT INTO public.moon
VALUES (14, 'Gael', 8000, false, 39990, 11);
INSERT INTO public.moon
VALUES (15, 'Mauriceia', 4000, true, 10002, 12);
INSERT INTO public.moon
VALUES (16, 'Fany', 200, false, 5600, 1);
INSERT INTO public.moon
VALUES (17, 'Uana', 50000, false, 700800, 2);
INSERT INTO public.moon
VALUES (18, 'Jaw', 64090, true, 802290, 3);
INSERT INTO public.moon
VALUES (19, 'Bowie', 13000, false, 5000, 4);
INSERT INTO public.moon
VALUES (20, 'Badalanabade', 389220, false, 890200, 5);
--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--
INSERT INTO public.planet
VALUES (
        1,
        'Earth',
        30000,
        'earthlin',
        'The only Earth in the Universe',
        true,
        1
    );
INSERT INTO public.planet
VALUES (
        2,
        'Jupiter',
        3450000,
        'jupterian',
        'The biggest planet on Earths star system',
        false,
        1
    );
INSERT INTO public.planet
VALUES (
        3,
        'MPT-3995',
        NULL,
        'Unknown',
        'A little planet called MPT-3995',
        false,
        2
    );
INSERT INTO public.planet
VALUES (
        4,
        'Yukatsuma',
        93000,
        'maian',
        'Imagina all the people...',
        true,
        3
    );
INSERT INTO public.planet
VALUES (
        5,
        'Alpha Omega',
        500000,
        'biblical',
        'The start and the end',
        false,
        4
    );
INSERT INTO public.planet
VALUES (
        6,
        'Omarion',
        NULL,
        'singerly',
        'Smack that',
        false,
        5
    );
INSERT INTO public.planet
VALUES (
        7,
        'Bella Lugosis',
        1000,
        'vampirian',
        'Bella Lugosi is dead, undead, undead, undead',
        false,
        6
    );
INSERT INTO public.planet
VALUES (
        8,
        'Cakatuca',
        30000,
        'birdly',
        'Like the bird but is a planet',
        true,
        6
    );
INSERT INTO public.planet
VALUES (
        9,
        'Queen',
        94000,
        'deadly',
        'Long live the queen',
        false,
        5
    );
INSERT INTO public.planet
VALUES (
        10,
        'Gilgamesh',
        80000,
        'mythological',
        'Imagine that, just imagine',
        false,
        5
    );
INSERT INTO public.planet
VALUES (
        11,
        'Torotoro',
        NULL,
        NULL,
        'Lets just make our own planets',
        true,
        4
    );
INSERT INTO public.planet
VALUES (
        12,
        'Lastly',
        120,
        'tired',
        'I just cant take it anymore',
        false,
        3
    );
--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--
INSERT INTO public.star
VALUES (1, 'Sun', 32, 4600, true, 1);
INSERT INTO public.star
VALUES (3, 'Alpheratz', NULL, 7000, true, 2);
INSERT INTO public.star
VALUES (4, 'Fomalhaut', 185, 44000, true, 3);
INSERT INTO public.star
VALUES (5, 'Alpha Ursae Majoris', 17, 280, true, 5);
INSERT INTO public.star
VALUES (6, 'Xi Ussae Majoris', 10, NULL, NULL, 7);
INSERT INTO public.star
VALUES (7, 'Beta Comae Berenices', 1106, 15000, false, 6);
INSERT INTO public.star
VALUES (2, 'Regulus', 102, 100000, false, 4);
--
-- Name: astedoids_asteroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--
SELECT pg_catalog.setval('public.astedoids_asteroid_id_seq', 5, true);
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
SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);
--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--
SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);
--
-- Name: asteroid astedoids_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--
ALTER TABLE ONLY public.asteroid
ADD CONSTRAINT astedoids_pkey PRIMARY KEY (asteroid_id);
--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--
ALTER TABLE ONLY public.galaxy
ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);
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
-- Name: asteroid name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--
ALTER TABLE ONLY public.asteroid
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
-- Name: asteroid asteroids_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--
ALTER TABLE ONLY public.asteroid
ADD CONSTRAINT asteroids_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);
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
- -