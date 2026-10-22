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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    galaxy_types text,
    age_in_millions_of_years integer NOT NULL,
    is_spherical boolean NOT NULL
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
-- Name: galaxy_info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_info (
    galaxy_info_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text NOT NULL
);


ALTER TABLE public.galaxy_info OWNER TO freecodecamp;

--
-- Name: galaxy_info_galaxy_info_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_info_galaxy_info_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_info_galaxy_info_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_info_galaxy_info_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_info_galaxy_info_id_seq OWNED BY public.galaxy_info.galaxy_info_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50) NOT NULL,
    planet_id integer NOT NULL,
    distance_from_planet integer NOT NULL,
    description text,
    has_life boolean NOT NULL
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
    name character varying(50) NOT NULL,
    star_id integer NOT NULL,
    planet_types character varying(30),
    age_in_millions_of_years integer NOT NULL,
    is_spherical boolean NOT NULL
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
    name character varying(50) NOT NULL,
    galaxy_id integer NOT NULL,
    star_types character varying(30),
    distance_from_earth numeric(10,2) NOT NULL,
    has_life boolean NOT NULL
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
-- Name: galaxy_info galaxy_info_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_info ALTER COLUMN galaxy_info_id SET DEFAULT nextval('public.galaxy_info_galaxy_info_id_seq'::regclass);


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
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Droga Mleczna', 'Spiralna', 13600, false);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Spiralna', 10000, false);
INSERT INTO public.galaxy VALUES (3, 'Trójkąt', 'Spiralna', 12000, false);
INSERT INTO public.galaxy VALUES (4, 'Centaurus A', 'Eliptyczna', 13000, true);
INSERT INTO public.galaxy VALUES (5, 'Wielki Obłok Magellana', 'Nieregularna', 11000, false);
INSERT INTO public.galaxy VALUES (6, 'Mały Obłok Magellana', 'Nieregularna', 11000, false);


--
-- Data for Name: galaxy_info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_info VALUES (1, 'Info 1', 'Dane astronomiczne na rok 2026.');
INSERT INTO public.galaxy_info VALUES (2, 'Info 2', 'Katalog obiektów głębokiego nieba.');
INSERT INTO public.galaxy_info VALUES (3, 'Info 3', 'Odkrycia dokonane przez Teleskop Jamesa Webba.');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Księżyc', 1, 384400, 'Jedyny naturalny satelita Ziemi', false);
INSERT INTO public.moon VALUES (2, 'Phobos', 2, 9377, 'Księżyc Marsa', false);
INSERT INTO public.moon VALUES (3, 'Deimos', 2, 23460, 'Drugi księżyc Marsa', false);
INSERT INTO public.moon VALUES (4, 'Io', 3, 421700, 'Wulkaniczny księżyc Jowisza', false);
INSERT INTO public.moon VALUES (5, 'Europa', 3, 670900, 'Lodowy księżyc z oceanem podziemnym', false);
INSERT INTO public.moon VALUES (6, 'Ganimedes', 3, 1070400, 'Największy księżyc w Układzie Słonecznym', false);
INSERT INTO public.moon VALUES (7, 'Kallisto', 3, 1882700, 'Silnie pokraterowany', false);
INSERT INTO public.moon VALUES (8, 'Tytan', 4, 1221870, 'Posiada gęstą atmosferę', false);
INSERT INTO public.moon VALUES (9, 'Enceladus', 4, 238000, 'Gejzery wodne', false);
INSERT INTO public.moon VALUES (10, 'Mimas', 4, 185000, 'Wygląda jak Gwiazda Śmierci', false);
INSERT INTO public.moon VALUES (11, 'Dione', 4, 377000, 'Lodowy świat', false);
INSERT INTO public.moon VALUES (12, 'Tetyda', 4, 295000, 'Wielki krater Odyssa', false);
INSERT INTO public.moon VALUES (13, 'Rea', 4, 527000, 'Drugi co do wielkości księżyc Saturna', false);
INSERT INTO public.moon VALUES (14, 'Japetus', 4, 3561000, 'Dwa różne kolory powierzchni', false);
INSERT INTO public.moon VALUES (15, 'Ariel', 7, 191000, 'Księżyc Urana', false);
INSERT INTO public.moon VALUES (16, 'Umbriel', 7, 266000, 'Bardzo ciemna powierzchnia', false);
INSERT INTO public.moon VALUES (17, 'Tytania', 7, 436000, 'Największy księżyc Urana', false);
INSERT INTO public.moon VALUES (18, 'Oberon', 7, 584000, 'Najbardziej zewnętrzny z dużych', false);
INSERT INTO public.moon VALUES (19, 'Tryton', 8, 354759, 'Wulkanizm azotowy', false);
INSERT INTO public.moon VALUES (20, 'Nereida', 8, 5513400, 'Bardzo ekscentryczna orbita', false);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Ziemia', 1, 'Skalista', 4540, true);
INSERT INTO public.planet VALUES (2, 'Mars', 1, 'Skalista', 4600, true);
INSERT INTO public.planet VALUES (3, 'Jowisz', 1, 'Gazowy olbrzym', 4600, true);
INSERT INTO public.planet VALUES (4, 'Saturn', 1, 'Gazowy olbrzym', 4600, true);
INSERT INTO public.planet VALUES (5, 'Merkury', 1, 'Skalista', 4500, true);
INSERT INTO public.planet VALUES (6, 'Wenus', 1, 'Skalista', 4500, true);
INSERT INTO public.planet VALUES (7, 'Uran', 1, 'Lodowy olbrzym', 4500, true);
INSERT INTO public.planet VALUES (8, 'Neptun', 1, 'Lodowy olbrzym', 4500, true);
INSERT INTO public.planet VALUES (9, 'Syriusz Prime', 2, 'Egzoplaneta', 300, true);
INSERT INTO public.planet VALUES (10, 'Betelgeza B', 3, 'Egzoplaneta', 100, true);
INSERT INTO public.planet VALUES (11, 'Vega Minor', 4, 'Egzoplaneta', 400, true);
INSERT INTO public.planet VALUES (12, 'Rigel One', 5, 'Egzoplaneta', 200, true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Słońce', 1, 'Żółty karzeł', 0.00, true);
INSERT INTO public.star VALUES (2, 'Syriusz', 1, 'Biała gwiazda', 8.60, false);
INSERT INTO public.star VALUES (3, 'Betelgeza', 1, 'Czerwony nadolbrzym', 642.50, false);
INSERT INTO public.star VALUES (4, 'Vega', 2, 'Biała gwiazda', 25.00, false);
INSERT INTO public.star VALUES (5, 'Rigel', 2, 'Błękitny nadolbrzym', 860.00, false);
INSERT INTO public.star VALUES (6, 'Proxima Centauri', 1, 'Czerwony karzeł', 4.24, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: galaxy_info_galaxy_info_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_info_galaxy_info_id_seq', 3, true);


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
-- Name: galaxy_info galaxy_info_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_info
    ADD CONSTRAINT galaxy_info_name_key UNIQUE (name);


--
-- Name: galaxy_info galaxy_info_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_info
    ADD CONSTRAINT galaxy_info_pkey PRIMARY KEY (galaxy_info_id);


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

