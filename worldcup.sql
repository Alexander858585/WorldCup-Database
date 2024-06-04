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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    year integer NOT NULL,
    round character varying(50) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (17, 2018, 'Final', 181, 182, 4, 2);
INSERT INTO public.games VALUES (18, 2018, 'Third Place', 183, 184, 2, 0);
INSERT INTO public.games VALUES (19, 2018, 'Semi-Final', 182, 184, 2, 1);
INSERT INTO public.games VALUES (20, 2018, 'Semi-Final', 181, 183, 1, 0);
INSERT INTO public.games VALUES (21, 2018, 'Quarter-Final', 182, 190, 3, 2);
INSERT INTO public.games VALUES (22, 2018, 'Quarter-Final', 184, 192, 2, 0);
INSERT INTO public.games VALUES (23, 2018, 'Quarter-Final', 183, 194, 2, 1);
INSERT INTO public.games VALUES (24, 2018, 'Quarter-Final', 181, 196, 2, 0);
INSERT INTO public.games VALUES (25, 2018, 'Eighth-Final', 184, 198, 2, 1);
INSERT INTO public.games VALUES (26, 2018, 'Eighth-Final', 192, 200, 1, 0);
INSERT INTO public.games VALUES (27, 2018, 'Eighth-Final', 183, 202, 3, 2);
INSERT INTO public.games VALUES (28, 2018, 'Eighth-Final', 194, 204, 2, 0);
INSERT INTO public.games VALUES (29, 2018, 'Eighth-Final', 182, 206, 2, 1);
INSERT INTO public.games VALUES (30, 2018, 'Eighth-Final', 190, 208, 2, 1);
INSERT INTO public.games VALUES (31, 2018, 'Eighth-Final', 196, 210, 2, 1);
INSERT INTO public.games VALUES (32, 2018, 'Eighth-Final', 181, 212, 4, 3);
INSERT INTO public.games VALUES (33, 2014, 'Final', 213, 212, 1, 0);
INSERT INTO public.games VALUES (34, 2014, 'Third Place', 215, 194, 3, 0);
INSERT INTO public.games VALUES (35, 2014, 'Semi-Final', 212, 215, 1, 0);
INSERT INTO public.games VALUES (36, 2014, 'Semi-Final', 213, 194, 7, 1);
INSERT INTO public.games VALUES (37, 2014, 'Quarter-Final', 215, 222, 1, 0);
INSERT INTO public.games VALUES (38, 2014, 'Quarter-Final', 212, 183, 1, 0);
INSERT INTO public.games VALUES (39, 2014, 'Quarter-Final', 194, 198, 2, 1);
INSERT INTO public.games VALUES (40, 2014, 'Quarter-Final', 213, 181, 1, 0);
INSERT INTO public.games VALUES (41, 2014, 'Eighth-Final', 194, 230, 2, 1);
INSERT INTO public.games VALUES (42, 2014, 'Eighth-Final', 198, 196, 2, 0);
INSERT INTO public.games VALUES (43, 2014, 'Eighth-Final', 181, 234, 2, 0);
INSERT INTO public.games VALUES (44, 2014, 'Eighth-Final', 213, 236, 2, 1);
INSERT INTO public.games VALUES (45, 2014, 'Eighth-Final', 215, 204, 2, 1);
INSERT INTO public.games VALUES (46, 2014, 'Eighth-Final', 222, 240, 2, 1);
INSERT INTO public.games VALUES (47, 2014, 'Eighth-Final', 212, 200, 1, 0);
INSERT INTO public.games VALUES (48, 2014, 'Eighth-Final', 183, 244, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (181, 'France');
INSERT INTO public.teams VALUES (182, 'Croatia');
INSERT INTO public.teams VALUES (183, 'Belgium');
INSERT INTO public.teams VALUES (184, 'England');
INSERT INTO public.teams VALUES (190, 'Russia');
INSERT INTO public.teams VALUES (192, 'Sweden');
INSERT INTO public.teams VALUES (194, 'Brazil');
INSERT INTO public.teams VALUES (196, 'Uruguay');
INSERT INTO public.teams VALUES (198, 'Colombia');
INSERT INTO public.teams VALUES (200, 'Switzerland');
INSERT INTO public.teams VALUES (202, 'Japan');
INSERT INTO public.teams VALUES (204, 'Mexico');
INSERT INTO public.teams VALUES (206, 'Denmark');
INSERT INTO public.teams VALUES (208, 'Spain');
INSERT INTO public.teams VALUES (210, 'Portugal');
INSERT INTO public.teams VALUES (212, 'Argentina');
INSERT INTO public.teams VALUES (213, 'Germany');
INSERT INTO public.teams VALUES (215, 'Netherlands');
INSERT INTO public.teams VALUES (222, 'Costa Rica');
INSERT INTO public.teams VALUES (230, 'Chile');
INSERT INTO public.teams VALUES (234, 'Nigeria');
INSERT INTO public.teams VALUES (236, 'Algeria');
INSERT INTO public.teams VALUES (240, 'Greece');
INSERT INTO public.teams VALUES (244, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 48, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 244, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games fk_opponent; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_opponent FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games fk_winner; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_winner FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

