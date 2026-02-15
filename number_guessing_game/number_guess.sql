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

DROP DATABASE users;
--
-- Name: users; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE users WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE users OWNER TO freecodecamp;

\connect users

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    score integer DEFAULT 0
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    name character varying(22) NOT NULL,
    games_played integer DEFAULT 0,
    best_game integer DEFAULT 0
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (66, 29, 758);
INSERT INTO public.games VALUES (67, 29, 362);
INSERT INTO public.games VALUES (68, 30, 754);
INSERT INTO public.games VALUES (69, 30, 456);
INSERT INTO public.games VALUES (70, 29, 670);
INSERT INTO public.games VALUES (71, 29, 703);
INSERT INTO public.games VALUES (72, 29, 332);
INSERT INTO public.games VALUES (73, 31, 450);
INSERT INTO public.games VALUES (74, 31, 299);
INSERT INTO public.games VALUES (75, 32, 142);
INSERT INTO public.games VALUES (76, 32, 531);
INSERT INTO public.games VALUES (77, 31, 929);
INSERT INTO public.games VALUES (78, 31, 764);
INSERT INTO public.games VALUES (79, 31, 885);
INSERT INTO public.games VALUES (80, 34, 695);
INSERT INTO public.games VALUES (81, 34, 763);
INSERT INTO public.games VALUES (82, 34, 132);
INSERT INTO public.games VALUES (83, 34, 31);
INSERT INTO public.games VALUES (84, 34, 368);
INSERT INTO public.games VALUES (85, 34, 291);
INSERT INTO public.games VALUES (86, 34, 691);
INSERT INTO public.games VALUES (87, 35, 18);
INSERT INTO public.games VALUES (88, 36, 85);
INSERT INTO public.games VALUES (89, 36, 702);
INSERT INTO public.games VALUES (90, 37, 913);
INSERT INTO public.games VALUES (91, 37, 847);
INSERT INTO public.games VALUES (92, 36, 567);
INSERT INTO public.games VALUES (93, 36, 784);
INSERT INTO public.games VALUES (94, 36, 99);
INSERT INTO public.games VALUES (95, 38, 531);
INSERT INTO public.games VALUES (96, 38, 139);
INSERT INTO public.games VALUES (97, 39, 249);
INSERT INTO public.games VALUES (98, 39, 287);
INSERT INTO public.games VALUES (99, 38, 911);
INSERT INTO public.games VALUES (100, 38, 354);
INSERT INTO public.games VALUES (101, 38, 736);
INSERT INTO public.games VALUES (102, 40, 910);
INSERT INTO public.games VALUES (103, 40, 742);
INSERT INTO public.games VALUES (104, 41, 80);
INSERT INTO public.games VALUES (105, 41, 655);
INSERT INTO public.games VALUES (106, 40, 1000);
INSERT INTO public.games VALUES (107, 40, 40);
INSERT INTO public.games VALUES (108, 40, 27);
INSERT INTO public.games VALUES (109, 42, 734);
INSERT INTO public.games VALUES (110, 42, 732);
INSERT INTO public.games VALUES (111, 43, 41);
INSERT INTO public.games VALUES (112, 43, 433);
INSERT INTO public.games VALUES (113, 42, 40);
INSERT INTO public.games VALUES (114, 42, 919);
INSERT INTO public.games VALUES (115, 42, 14);
INSERT INTO public.games VALUES (116, 44, 576);
INSERT INTO public.games VALUES (117, 44, 375);
INSERT INTO public.games VALUES (118, 45, 676);
INSERT INTO public.games VALUES (119, 45, 354);
INSERT INTO public.games VALUES (120, 44, 530);
INSERT INTO public.games VALUES (121, 44, 729);
INSERT INTO public.games VALUES (122, 44, 635);
INSERT INTO public.games VALUES (123, 46, 401);
INSERT INTO public.games VALUES (124, 46, 631);
INSERT INTO public.games VALUES (125, 47, 268);
INSERT INTO public.games VALUES (126, 47, 768);
INSERT INTO public.games VALUES (127, 46, 164);
INSERT INTO public.games VALUES (128, 46, 204);
INSERT INTO public.games VALUES (129, 46, 333);
INSERT INTO public.games VALUES (130, 48, 405);
INSERT INTO public.games VALUES (131, 48, 889);
INSERT INTO public.games VALUES (132, 49, 430);
INSERT INTO public.games VALUES (133, 49, 832);
INSERT INTO public.games VALUES (134, 48, 670);
INSERT INTO public.games VALUES (135, 48, 268);
INSERT INTO public.games VALUES (136, 48, 704);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (30, 'user_1771151006786', 2, 456);
INSERT INTO public.users VALUES (29, 'user_1771151006787', 5, 332);
INSERT INTO public.users VALUES (47, 'user_1771152455421', 2, 268);
INSERT INTO public.users VALUES (32, 'user_1771151106236', 2, 142);
INSERT INTO public.users VALUES (46, 'user_1771152455422', 5, 164);
INSERT INTO public.users VALUES (31, 'user_1771151106237', 5, 299);
INSERT INTO public.users VALUES (33, 'Joe', 0, 0);
INSERT INTO public.users VALUES (49, 'user_1771152501836', 2, 430);
INSERT INTO public.users VALUES (34, '', 7, 31);
INSERT INTO public.users VALUES (35, 'Kai', 1, 18);
INSERT INTO public.users VALUES (48, 'user_1771152501837', 5, 268);
INSERT INTO public.users VALUES (37, 'user_1771151698827', 2, 847);
INSERT INTO public.users VALUES (36, 'user_1771151698828', 5, 85);
INSERT INTO public.users VALUES (39, 'user_1771151796188', 2, 249);
INSERT INTO public.users VALUES (38, 'user_1771151796189', 5, 139);
INSERT INTO public.users VALUES (41, 'user_1771152030860', 2, 80);
INSERT INTO public.users VALUES (40, 'user_1771152030861', 5, 27);
INSERT INTO public.users VALUES (43, 'user_1771152145668', 2, 41);
INSERT INTO public.users VALUES (42, 'user_1771152145669', 5, 14);
INSERT INTO public.users VALUES (45, 'user_1771152317457', 2, 354);
INSERT INTO public.users VALUES (44, 'user_1771152317458', 5, 375);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 136, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 49, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: games fk_user_id_games; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_user_id_games FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--


