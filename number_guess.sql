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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
    guesses integer DEFAULT 0 NOT NULL
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
    username character varying(22) NOT NULL
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

INSERT INTO public.games VALUES (1, 5, 948);
INSERT INTO public.games VALUES (2, 5, 802);
INSERT INTO public.games VALUES (3, 6, 277);
INSERT INTO public.games VALUES (4, 6, 876);
INSERT INTO public.games VALUES (5, 5, 490);
INSERT INTO public.games VALUES (6, 5, 405);
INSERT INTO public.games VALUES (7, 5, 717);
INSERT INTO public.games VALUES (8, 1, 1);
INSERT INTO public.games VALUES (9, 7, 447);
INSERT INTO public.games VALUES (10, 7, 524);
INSERT INTO public.games VALUES (11, 8, 527);
INSERT INTO public.games VALUES (12, 8, 873);
INSERT INTO public.games VALUES (13, 7, 515);
INSERT INTO public.games VALUES (14, 7, 18);
INSERT INTO public.games VALUES (15, 7, 537);
INSERT INTO public.games VALUES (16, 9, 1);
INSERT INTO public.games VALUES (17, 9, 1);
INSERT INTO public.games VALUES (18, 10, 1);
INSERT INTO public.games VALUES (19, 10, 1);
INSERT INTO public.games VALUES (20, 9, 1);
INSERT INTO public.games VALUES (21, 9, 1);
INSERT INTO public.games VALUES (22, 9, 1);
INSERT INTO public.games VALUES (23, 13, 1);
INSERT INTO public.games VALUES (24, 13, 1);
INSERT INTO public.games VALUES (25, 14, 1);
INSERT INTO public.games VALUES (26, 14, 1);
INSERT INTO public.games VALUES (27, 13, 1);
INSERT INTO public.games VALUES (28, 13, 1);
INSERT INTO public.games VALUES (29, 13, 1);
INSERT INTO public.games VALUES (30, 15, 1);
INSERT INTO public.games VALUES (31, 15, 1);
INSERT INTO public.games VALUES (32, 16, 1);
INSERT INTO public.games VALUES (33, 16, 1);
INSERT INTO public.games VALUES (34, 15, 1);
INSERT INTO public.games VALUES (35, 15, 1);
INSERT INTO public.games VALUES (36, 15, 1);
INSERT INTO public.games VALUES (37, 17, 1);
INSERT INTO public.games VALUES (38, 17, 1);
INSERT INTO public.games VALUES (39, 18, 1);
INSERT INTO public.games VALUES (40, 18, 1);
INSERT INTO public.games VALUES (41, 17, 1);
INSERT INTO public.games VALUES (42, 17, 1);
INSERT INTO public.games VALUES (43, 17, 1);
INSERT INTO public.games VALUES (44, 19, 1);
INSERT INTO public.games VALUES (45, 19, 1);
INSERT INTO public.games VALUES (46, 20, 1);
INSERT INTO public.games VALUES (47, 20, 1);
INSERT INTO public.games VALUES (48, 19, 1);
INSERT INTO public.games VALUES (49, 19, 1);
INSERT INTO public.games VALUES (50, 19, 1);
INSERT INTO public.games VALUES (51, 21, 1);
INSERT INTO public.games VALUES (52, 21, 1);
INSERT INTO public.games VALUES (53, 22, 1);
INSERT INTO public.games VALUES (54, 22, 1);
INSERT INTO public.games VALUES (55, 21, 1);
INSERT INTO public.games VALUES (56, 21, 1);
INSERT INTO public.games VALUES (57, 21, 1);
INSERT INTO public.games VALUES (58, 23, 1);
INSERT INTO public.games VALUES (59, 23, 1);
INSERT INTO public.games VALUES (60, 24, 1);
INSERT INTO public.games VALUES (61, 24, 1);
INSERT INTO public.games VALUES (62, 23, 1);
INSERT INTO public.games VALUES (63, 23, 1);
INSERT INTO public.games VALUES (64, 23, 1);
INSERT INTO public.games VALUES (65, 2, 1);
INSERT INTO public.games VALUES (66, 25, 1);
INSERT INTO public.games VALUES (67, 26, 1);
INSERT INTO public.games VALUES (68, 26, 1);
INSERT INTO public.games VALUES (69, 26, 1);
INSERT INTO public.games VALUES (70, 1, 17);
INSERT INTO public.games VALUES (71, 28, 717);
INSERT INTO public.games VALUES (72, 28, 280);
INSERT INTO public.games VALUES (73, 29, 766);
INSERT INTO public.games VALUES (74, 29, 477);
INSERT INTO public.games VALUES (75, 28, 243);
INSERT INTO public.games VALUES (76, 28, 308);
INSERT INTO public.games VALUES (77, 28, 150);
INSERT INTO public.games VALUES (78, 30, 814);
INSERT INTO public.games VALUES (79, 30, 994);
INSERT INTO public.games VALUES (80, 31, 834);
INSERT INTO public.games VALUES (81, 31, 985);
INSERT INTO public.games VALUES (82, 30, 224);
INSERT INTO public.games VALUES (83, 30, 901);
INSERT INTO public.games VALUES (84, 30, 686);
INSERT INTO public.games VALUES (85, 32, 183);
INSERT INTO public.games VALUES (86, 32, 561);
INSERT INTO public.games VALUES (87, 33, 15);
INSERT INTO public.games VALUES (88, 33, 536);
INSERT INTO public.games VALUES (89, 32, 833);
INSERT INTO public.games VALUES (90, 32, 17);
INSERT INTO public.games VALUES (91, 32, 805);
INSERT INTO public.games VALUES (92, 1, 12);
INSERT INTO public.games VALUES (93, 38, 657);
INSERT INTO public.games VALUES (94, 38, 122);
INSERT INTO public.games VALUES (95, 39, 220);
INSERT INTO public.games VALUES (96, 39, 612);
INSERT INTO public.games VALUES (97, 38, 244);
INSERT INTO public.games VALUES (98, 38, 783);
INSERT INTO public.games VALUES (99, 38, 181);
INSERT INTO public.games VALUES (100, 40, 903);
INSERT INTO public.games VALUES (101, 40, 957);
INSERT INTO public.games VALUES (102, 41, 99);
INSERT INTO public.games VALUES (103, 41, 1001);
INSERT INTO public.games VALUES (104, 40, 308);
INSERT INTO public.games VALUES (105, 40, 675);
INSERT INTO public.games VALUES (106, 40, 878);
INSERT INTO public.games VALUES (107, 78, 130);
INSERT INTO public.games VALUES (108, 78, 988);
INSERT INTO public.games VALUES (109, 79, 647);
INSERT INTO public.games VALUES (110, 79, 820);
INSERT INTO public.games VALUES (111, 78, 854);
INSERT INTO public.games VALUES (112, 78, 993);
INSERT INTO public.games VALUES (113, 78, 979);
INSERT INTO public.games VALUES (114, 80, 476);
INSERT INTO public.games VALUES (115, 80, 607);
INSERT INTO public.games VALUES (116, 81, 431);
INSERT INTO public.games VALUES (117, 81, 856);
INSERT INTO public.games VALUES (118, 80, 225);
INSERT INTO public.games VALUES (119, 80, 544);
INSERT INTO public.games VALUES (120, 80, 131);
INSERT INTO public.games VALUES (121, 82, 155);
INSERT INTO public.games VALUES (122, 82, 44);
INSERT INTO public.games VALUES (123, 84, 906);
INSERT INTO public.games VALUES (124, 84, 614);
INSERT INTO public.games VALUES (125, 82, 44);
INSERT INTO public.games VALUES (126, 82, 105);
INSERT INTO public.games VALUES (127, 82, 232);
INSERT INTO public.games VALUES (128, 89, 375);
INSERT INTO public.games VALUES (129, 89, 362);
INSERT INTO public.games VALUES (130, 91, 594);
INSERT INTO public.games VALUES (131, 91, 405);
INSERT INTO public.games VALUES (132, 89, 95);
INSERT INTO public.games VALUES (133, 89, 626);
INSERT INTO public.games VALUES (134, 89, 657);
INSERT INTO public.games VALUES (135, 96, 211);
INSERT INTO public.games VALUES (136, 96, 83);
INSERT INTO public.games VALUES (137, 98, 850);
INSERT INTO public.games VALUES (138, 98, 200);
INSERT INTO public.games VALUES (139, 96, 93);
INSERT INTO public.games VALUES (140, 96, 193);
INSERT INTO public.games VALUES (141, 96, 56);
INSERT INTO public.games VALUES (142, 122, 505);
INSERT INTO public.games VALUES (143, 122, 49);
INSERT INTO public.games VALUES (144, 123, 696);
INSERT INTO public.games VALUES (145, 123, 118);
INSERT INTO public.games VALUES (146, 122, 161);
INSERT INTO public.games VALUES (147, 122, 625);
INSERT INTO public.games VALUES (148, 122, 349);
INSERT INTO public.games VALUES (149, 131, 462);
INSERT INTO public.games VALUES (150, 131, 630);
INSERT INTO public.games VALUES (151, 132, 603);
INSERT INTO public.games VALUES (152, 132, 450);
INSERT INTO public.games VALUES (153, 131, 557);
INSERT INTO public.games VALUES (154, 131, 95);
INSERT INTO public.games VALUES (155, 131, 170);
INSERT INTO public.games VALUES (156, 133, 456);
INSERT INTO public.games VALUES (157, 133, 598);
INSERT INTO public.games VALUES (158, 134, 327);
INSERT INTO public.games VALUES (159, 134, 608);
INSERT INTO public.games VALUES (160, 133, 778);
INSERT INTO public.games VALUES (161, 133, 503);
INSERT INTO public.games VALUES (162, 133, 69);
INSERT INTO public.games VALUES (163, 135, 502);
INSERT INTO public.games VALUES (164, 135, 746);
INSERT INTO public.games VALUES (165, 136, 276);
INSERT INTO public.games VALUES (166, 136, 572);
INSERT INTO public.games VALUES (167, 137, 367);
INSERT INTO public.games VALUES (168, 135, 613);
INSERT INTO public.games VALUES (169, 137, 492);
INSERT INTO public.games VALUES (170, 135, 529);
INSERT INTO public.games VALUES (171, 138, 987);
INSERT INTO public.games VALUES (172, 138, 41);
INSERT INTO public.games VALUES (173, 135, 742);
INSERT INTO public.games VALUES (174, 137, 676);
INSERT INTO public.games VALUES (175, 137, 182);
INSERT INTO public.games VALUES (176, 137, 575);
INSERT INTO public.games VALUES (177, 139, 632);
INSERT INTO public.games VALUES (178, 139, 367);
INSERT INTO public.games VALUES (179, 140, 849);
INSERT INTO public.games VALUES (180, 140, 217);
INSERT INTO public.games VALUES (181, 139, 888);
INSERT INTO public.games VALUES (182, 139, 501);
INSERT INTO public.games VALUES (183, 139, 978);
INSERT INTO public.games VALUES (184, 141, 271);
INSERT INTO public.games VALUES (185, 141, 566);
INSERT INTO public.games VALUES (186, 142, 185);
INSERT INTO public.games VALUES (187, 142, 904);
INSERT INTO public.games VALUES (188, 141, 399);
INSERT INTO public.games VALUES (189, 141, 875);
INSERT INTO public.games VALUES (190, 141, 853);
INSERT INTO public.games VALUES (191, 143, 990);
INSERT INTO public.games VALUES (192, 143, 275);
INSERT INTO public.games VALUES (193, 144, 489);
INSERT INTO public.games VALUES (194, 144, 256);
INSERT INTO public.games VALUES (195, 143, 245);
INSERT INTO public.games VALUES (196, 143, 595);
INSERT INTO public.games VALUES (197, 143, 659);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'Ash');
INSERT INTO public.users VALUES (2, 'ash');
INSERT INTO public.users VALUES (3, 'Landon');
INSERT INTO public.users VALUES (4, 'landon');
INSERT INTO public.users VALUES (5, 'user_1711994182497');
INSERT INTO public.users VALUES (6, 'user_1711994182496');
INSERT INTO public.users VALUES (7, 'user_1711994659148');
INSERT INTO public.users VALUES (8, 'user_1711994659147');
INSERT INTO public.users VALUES (9, 'user_1711994758578');
INSERT INTO public.users VALUES (10, 'user_1711994758577');
INSERT INTO public.users VALUES (11, 'user_1711994822131');
INSERT INTO public.users VALUES (12, 'user_1711994822130');
INSERT INTO public.users VALUES (13, 'user_1711994885903');
INSERT INTO public.users VALUES (14, 'user_1711994885902');
INSERT INTO public.users VALUES (15, 'user_1711994989299');
INSERT INTO public.users VALUES (16, 'user_1711994989298');
INSERT INTO public.users VALUES (17, 'user_1711995081504');
INSERT INTO public.users VALUES (18, 'user_1711995081503');
INSERT INTO public.users VALUES (19, 'user_1711995105305');
INSERT INTO public.users VALUES (20, 'user_1711995105304');
INSERT INTO public.users VALUES (21, 'user_1711995170820');
INSERT INTO public.users VALUES (22, 'user_1711995170819');
INSERT INTO public.users VALUES (23, 'user_1711995211985');
INSERT INTO public.users VALUES (24, 'user_1711995211984');
INSERT INTO public.users VALUES (25, 'ashu');
INSERT INTO public.users VALUES (26, 'user_1711995374633');
INSERT INTO public.users VALUES (27, 'user_1711995374632');
INSERT INTO public.users VALUES (28, 'user_1711995942179');
INSERT INTO public.users VALUES (29, 'user_1711995942178');
INSERT INTO public.users VALUES (30, 'user_1711996184271');
INSERT INTO public.users VALUES (31, 'user_1711996184270');
INSERT INTO public.users VALUES (32, 'user_1711996336446');
INSERT INTO public.users VALUES (33, 'user_1711996336445');
INSERT INTO public.users VALUES (34, 'user_1711996465936');
INSERT INTO public.users VALUES (35, 'user_1711996465935');
INSERT INTO public.users VALUES (36, 'user_1711996483658');
INSERT INTO public.users VALUES (37, 'user_1711996483657');
INSERT INTO public.users VALUES (38, 'user_1711996541800');
INSERT INTO public.users VALUES (39, 'user_1711996541799');
INSERT INTO public.users VALUES (40, 'user_1711996867274');
INSERT INTO public.users VALUES (41, 'user_1711996867273');
INSERT INTO public.users VALUES (42, 'user_1711997175546');
INSERT INTO public.users VALUES (43, 'user_1711997175545');
INSERT INTO public.users VALUES (44, 'user_1711997228830');
INSERT INTO public.users VALUES (45, 'user_1711997228829');
INSERT INTO public.users VALUES (46, 'user_1711997278137');
INSERT INTO public.users VALUES (47, 'user_1711997278136');
INSERT INTO public.users VALUES (48, 'user_1711997311635');
INSERT INTO public.users VALUES (49, 'user_1711997311634');
INSERT INTO public.users VALUES (50, 'user_1711997364729');
INSERT INTO public.users VALUES (51, 'user_1711997364728');
INSERT INTO public.users VALUES (52, 'user_1711997381831');
INSERT INTO public.users VALUES (53, 'user_1711997381830');
INSERT INTO public.users VALUES (54, 'user_1711997425899');
INSERT INTO public.users VALUES (55, 'user_1711997425898');
INSERT INTO public.users VALUES (56, 'user_1711997444239');
INSERT INTO public.users VALUES (57, 'user_1711997444238');
INSERT INTO public.users VALUES (58, 'user_1711997455705');
INSERT INTO public.users VALUES (59, 'user_1711997455704');
INSERT INTO public.users VALUES (60, 'user_1711997666469');
INSERT INTO public.users VALUES (61, 'user_1711997666468');
INSERT INTO public.users VALUES (62, 'user_1711997679846');
INSERT INTO public.users VALUES (63, 'user_1711997679845');
INSERT INTO public.users VALUES (64, 'Dev');
INSERT INTO public.users VALUES (65, 'user_1711997826349');
INSERT INTO public.users VALUES (66, 'user_1711997826348');
INSERT INTO public.users VALUES (67, 'user_1711997975223');
INSERT INTO public.users VALUES (68, 'user_1711997975222');
INSERT INTO public.users VALUES (69, 'user_1711998030341');
INSERT INTO public.users VALUES (70, 'user_1711998030340');
INSERT INTO public.users VALUES (71, 'user_1711998263457');
INSERT INTO public.users VALUES (73, 'user_1711998263456');
INSERT INTO public.users VALUES (78, 'user_1711998295874');
INSERT INTO public.users VALUES (79, 'user_1711998295873');
INSERT INTO public.users VALUES (80, 'user_1711998372438');
INSERT INTO public.users VALUES (81, 'user_1711998372437');
INSERT INTO public.users VALUES (82, 'user_1711998445193');
INSERT INTO public.users VALUES (84, 'user_1711998445192');
INSERT INTO public.users VALUES (89, 'user_1711998485878');
INSERT INTO public.users VALUES (91, 'user_1711998485877');
INSERT INTO public.users VALUES (96, 'user_1711998506257');
INSERT INTO public.users VALUES (98, 'user_1711998506256');
INSERT INTO public.users VALUES (103, 'user_1711998514982');
INSERT INTO public.users VALUES (105, 'user_1711998514981');
INSERT INTO public.users VALUES (110, 'user_1711998550387');
INSERT INTO public.users VALUES (111, 'user_1711998550386');
INSERT INTO public.users VALUES (112, 'user_1711998588121');
INSERT INTO public.users VALUES (113, 'user_1711998588120');
INSERT INTO public.users VALUES (114, 'user_1711998591805');
INSERT INTO public.users VALUES (115, 'user_1711998591804');
INSERT INTO public.users VALUES (116, 'user_1711998592271');
INSERT INTO public.users VALUES (117, 'user_1711998592270');
INSERT INTO public.users VALUES (118, 'user_1711998662728');
INSERT INTO public.users VALUES (119, 'user_1711998662727');
INSERT INTO public.users VALUES (120, 'user_1711998822637');
INSERT INTO public.users VALUES (121, 'user_1711998822636');
INSERT INTO public.users VALUES (122, 'user_1711998907563');
INSERT INTO public.users VALUES (123, 'user_1711998907562');
INSERT INTO public.users VALUES (124, 'user_1711999022505');
INSERT INTO public.users VALUES (125, 'user_1711999022504');
INSERT INTO public.users VALUES (126, 'user_1711999046896');
INSERT INTO public.users VALUES (127, 'user_1711999046895');
INSERT INTO public.users VALUES (128, 'user_1711999055197');
INSERT INTO public.users VALUES (129, 'user_1711999055196');
INSERT INTO public.users VALUES (130, 'ritu');
INSERT INTO public.users VALUES (131, 'user_1711999141160');
INSERT INTO public.users VALUES (132, 'user_1711999141159');
INSERT INTO public.users VALUES (133, 'user_1711999178506');
INSERT INTO public.users VALUES (134, 'user_1711999178505');
INSERT INTO public.users VALUES (135, 'user_1711999200283');
INSERT INTO public.users VALUES (136, 'user_1711999200282');
INSERT INTO public.users VALUES (137, 'user_1711999200818');
INSERT INTO public.users VALUES (138, 'user_1711999200817');
INSERT INTO public.users VALUES (139, 'user_1711999404837');
INSERT INTO public.users VALUES (140, 'user_1711999404836');
INSERT INTO public.users VALUES (141, 'user_1711999565607');
INSERT INTO public.users VALUES (142, 'user_1711999565606');
INSERT INTO public.users VALUES (143, 'user_1711999813663');
INSERT INTO public.users VALUES (144, 'user_1711999813662');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 197, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 144, true);


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
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

