--
-- PostgreSQL database dump
--

-- Dumped from database version 9.3.25
-- Dumped by pg_dump version 9.3.25
-- Started on 2022-10-25 11:37:43

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- TOC entry 2056 (class 1262 OID 16394)
-- Name: sistema; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE sistema WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Portuguese_Brazil.1252' LC_CTYPE = 'Portuguese_Brazil.1252';


ALTER DATABASE sistema OWNER TO postgres;

\connect sistema

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- TOC entry 2 (class 3079 OID 11750)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2059 (class 0 OID 0)
-- Dependencies: 2
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


--
-- TOC entry 1 (class 3079 OID 16384)
-- Name: adminpack; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;


--
-- TOC entry 2060 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION adminpack; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 177 (class 1259 OID 16418)
-- Name: bairro; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public.bairro (
    id_bairro integer NOT NULL,
    nome_bairro character varying(50),
    id_cidade integer
);


ALTER TABLE public.bairro OWNER TO postgres;

--
-- TOC entry 176 (class 1259 OID 16416)
-- Name: bairro_id_bairro_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.bairro_id_bairro_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.bairro_id_bairro_seq OWNER TO postgres;

--
-- TOC entry 2061 (class 0 OID 0)
-- Dependencies: 176
-- Name: bairro_id_bairro_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.bairro_id_bairro_seq OWNED BY public.bairro.id_bairro;


--
-- TOC entry 175 (class 1259 OID 16405)
-- Name: cidades; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public.cidades (
    id_cidade integer NOT NULL,
    nome_cidade character varying(50),
    id_estado integer
);


ALTER TABLE public.cidades OWNER TO postgres;

--
-- TOC entry 174 (class 1259 OID 16403)
-- Name: cidades_id_cidade_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cidades_id_cidade_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cidades_id_cidade_seq OWNER TO postgres;

--
-- TOC entry 2062 (class 0 OID 0)
-- Dependencies: 174
-- Name: cidades_id_cidade_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cidades_id_cidade_seq OWNED BY public.cidades.id_cidade;


--
-- TOC entry 181 (class 1259 OID 16439)
-- Name: clientes; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public.clientes (
    id_cliente integer NOT NULL,
    nome_cliente character varying(50),
    endereco_cliente character varying(50),
    rg_cliente character varying(12),
    cpf_cliente character varying(15),
    id_bairro integer,
    id_cidade integer
);


ALTER TABLE public.clientes OWNER TO postgres;

--
-- TOC entry 180 (class 1259 OID 16437)
-- Name: clientes_id_cliente_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.clientes_id_cliente_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.clientes_id_cliente_seq OWNER TO postgres;

--
-- TOC entry 2063 (class 0 OID 0)
-- Dependencies: 180
-- Name: clientes_id_cliente_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.clientes_id_cliente_seq OWNED BY public.clientes.id_cliente;


--
-- TOC entry 173 (class 1259 OID 16397)
-- Name: estados; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public.estados (
    id_estado integer NOT NULL,
    nome_estado character varying(50),
    sigla_estado character varying(2)
);


ALTER TABLE public.estados OWNER TO postgres;

--
-- TOC entry 172 (class 1259 OID 16395)
-- Name: estados_id_estado_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.estados_id_estado_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.estados_id_estado_seq OWNER TO postgres;

--
-- TOC entry 2064 (class 0 OID 0)
-- Dependencies: 172
-- Name: estados_id_estado_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.estados_id_estado_seq OWNED BY public.estados.id_estado;


--
-- TOC entry 183 (class 1259 OID 16457)
-- Name: fornecedores; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public.fornecedores (
    id_fornecedor integer NOT NULL,
    nome_fornecedor character varying(50),
    endereco_fornecedor character varying(50),
    cnpj_fornecedor character varying(50),
    id_cidade integer,
    id_bairro integer
);


ALTER TABLE public.fornecedores OWNER TO postgres;

--
-- TOC entry 182 (class 1259 OID 16455)
-- Name: fornecedores_id_fornecedor_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.fornecedores_id_fornecedor_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.fornecedores_id_fornecedor_seq OWNER TO postgres;

--
-- TOC entry 2065 (class 0 OID 0)
-- Dependencies: 182
-- Name: fornecedores_id_fornecedor_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.fornecedores_id_fornecedor_seq OWNED BY public.fornecedores.id_fornecedor;


--
-- TOC entry 189 (class 1259 OID 16522)
-- Name: itens_clie_tel; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public.itens_clie_tel (
    id_cliente integer NOT NULL,
    id_tele integer NOT NULL
);


ALTER TABLE public.itens_clie_tel OWNER TO postgres;

--
-- TOC entry 188 (class 1259 OID 16507)
-- Name: itens_tel_forn; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public.itens_tel_forn (
    id_tel integer NOT NULL,
    id_forn integer NOT NULL
);


ALTER TABLE public.itens_tel_forn OWNER TO postgres;

--
-- TOC entry 190 (class 1259 OID 16547)
-- Name: itens_venda_produto; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public.itens_venda_produto (
    id_venda integer NOT NULL,
    id_quantidade_produto integer,
    id_produto integer NOT NULL
);


ALTER TABLE public.itens_venda_produto OWNER TO postgres;

--
-- TOC entry 185 (class 1259 OID 16477)
-- Name: produtos; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public.produtos (
    id_produto integer NOT NULL,
    nome_produto character varying(50),
    preco_venda numeric,
    quantidade_produto integer,
    id_fornecedor integer
);


ALTER TABLE public.produtos OWNER TO postgres;

--
-- TOC entry 184 (class 1259 OID 16475)
-- Name: produtos_id_produto_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.produtos_id_produto_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.produtos_id_produto_seq OWNER TO postgres;

--
-- TOC entry 2066 (class 0 OID 0)
-- Dependencies: 184
-- Name: produtos_id_produto_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.produtos_id_produto_seq OWNED BY public.produtos.id_produto;


--
-- TOC entry 179 (class 1259 OID 16431)
-- Name: telefones; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public.telefones (
    id_telefone integer NOT NULL,
    numero_tel character varying(20)
);


ALTER TABLE public.telefones OWNER TO postgres;

--
-- TOC entry 178 (class 1259 OID 16429)
-- Name: telefones_id_telefone_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.telefones_id_telefone_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.telefones_id_telefone_seq OWNER TO postgres;

--
-- TOC entry 2067 (class 0 OID 0)
-- Dependencies: 178
-- Name: telefones_id_telefone_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.telefones_id_telefone_seq OWNED BY public.telefones.id_telefone;


--
-- TOC entry 187 (class 1259 OID 16493)
-- Name: venda; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public.venda (
    id_venda integer NOT NULL,
    data_venda character varying(10),
    valor_venda numeric,
    id_cliente integer
);


ALTER TABLE public.venda OWNER TO postgres;

--
-- TOC entry 186 (class 1259 OID 16491)
-- Name: venda_id_venda_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.venda_id_venda_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.venda_id_venda_seq OWNER TO postgres;

--
-- TOC entry 2068 (class 0 OID 0)
-- Dependencies: 186
-- Name: venda_id_venda_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.venda_id_venda_seq OWNED BY public.venda.id_venda;


--
-- TOC entry 1883 (class 2604 OID 16421)
-- Name: id_bairro; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bairro ALTER COLUMN id_bairro SET DEFAULT nextval('public.bairro_id_bairro_seq'::regclass);


--
-- TOC entry 1882 (class 2604 OID 16408)
-- Name: id_cidade; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cidades ALTER COLUMN id_cidade SET DEFAULT nextval('public.cidades_id_cidade_seq'::regclass);


--
-- TOC entry 1885 (class 2604 OID 16442)
-- Name: id_cliente; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clientes ALTER COLUMN id_cliente SET DEFAULT nextval('public.clientes_id_cliente_seq'::regclass);


--
-- TOC entry 1881 (class 2604 OID 16400)
-- Name: id_estado; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estados ALTER COLUMN id_estado SET DEFAULT nextval('public.estados_id_estado_seq'::regclass);


--
-- TOC entry 1886 (class 2604 OID 16460)
-- Name: id_fornecedor; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fornecedores ALTER COLUMN id_fornecedor SET DEFAULT nextval('public.fornecedores_id_fornecedor_seq'::regclass);


--
-- TOC entry 1887 (class 2604 OID 16480)
-- Name: id_produto; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produtos ALTER COLUMN id_produto SET DEFAULT nextval('public.produtos_id_produto_seq'::regclass);


--
-- TOC entry 1884 (class 2604 OID 16434)
-- Name: id_telefone; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.telefones ALTER COLUMN id_telefone SET DEFAULT nextval('public.telefones_id_telefone_seq'::regclass);


--
-- TOC entry 1888 (class 2604 OID 16496)
-- Name: id_venda; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.venda ALTER COLUMN id_venda SET DEFAULT nextval('public.venda_id_venda_seq'::regclass);


--
-- TOC entry 2037 (class 0 OID 16418)
-- Dependencies: 177
-- Data for Name: bairro; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.bairro (id_bairro, nome_bairro, id_cidade) VALUES (1, 'centro', 13);
INSERT INTO public.bairro (id_bairro, nome_bairro, id_cidade) VALUES (2, 'centro', 14);
INSERT INTO public.bairro (id_bairro, nome_bairro, id_cidade) VALUES (3, 'centro', 7);


--
-- TOC entry 2069 (class 0 OID 0)
-- Dependencies: 176
-- Name: bairro_id_bairro_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.bairro_id_bairro_seq', 3, true);


--
-- TOC entry 2035 (class 0 OID 16405)
-- Dependencies: 175
-- Data for Name: cidades; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.cidades (id_cidade, nome_cidade, id_estado) VALUES (7, 'paranagua', 8);
INSERT INTO public.cidades (id_cidade, nome_cidade, id_estado) VALUES (9, 'sao paulo', 8);
INSERT INTO public.cidades (id_cidade, nome_cidade, id_estado) VALUES (12, 'pindamanhangaba', 9);
INSERT INTO public.cidades (id_cidade, nome_cidade, id_estado) VALUES (13, 'Belem', 15);
INSERT INTO public.cidades (id_cidade, nome_cidade, id_estado) VALUES (14, 'jatai', 8);


--
-- TOC entry 2070 (class 0 OID 0)
-- Dependencies: 174
-- Name: cidades_id_cidade_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cidades_id_cidade_seq', 14, true);


--
-- TOC entry 2041 (class 0 OID 16439)
-- Dependencies: 181
-- Data for Name: clientes; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2071 (class 0 OID 0)
-- Dependencies: 180
-- Name: clientes_id_cliente_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.clientes_id_cliente_seq', 1, false);


--
-- TOC entry 2033 (class 0 OID 16397)
-- Dependencies: 173
-- Data for Name: estados; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.estados (id_estado, nome_estado, sigla_estado) VALUES (8, 'Parana', 'PR');
INSERT INTO public.estados (id_estado, nome_estado, sigla_estado) VALUES (9, 'SAO PAULO', 'SP');
INSERT INTO public.estados (id_estado, nome_estado, sigla_estado) VALUES (10, 'SANTA CATARINA', 'SC');
INSERT INTO public.estados (id_estado, nome_estado, sigla_estado) VALUES (15, 'Para', 'PA');
INSERT INTO public.estados (id_estado, nome_estado, sigla_estado) VALUES (16, 'amapa', 'ap');


--
-- TOC entry 2072 (class 0 OID 0)
-- Dependencies: 172
-- Name: estados_id_estado_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.estados_id_estado_seq', 16, true);


--
-- TOC entry 2043 (class 0 OID 16457)
-- Dependencies: 183
-- Data for Name: fornecedores; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2073 (class 0 OID 0)
-- Dependencies: 182
-- Name: fornecedores_id_fornecedor_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.fornecedores_id_fornecedor_seq', 1, false);


--
-- TOC entry 2049 (class 0 OID 16522)
-- Dependencies: 189
-- Data for Name: itens_clie_tel; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2048 (class 0 OID 16507)
-- Dependencies: 188
-- Data for Name: itens_tel_forn; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2050 (class 0 OID 16547)
-- Dependencies: 190
-- Data for Name: itens_venda_produto; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2045 (class 0 OID 16477)
-- Dependencies: 185
-- Data for Name: produtos; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2074 (class 0 OID 0)
-- Dependencies: 184
-- Name: produtos_id_produto_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.produtos_id_produto_seq', 1, false);


--
-- TOC entry 2039 (class 0 OID 16431)
-- Dependencies: 179
-- Data for Name: telefones; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.telefones (id_telefone, numero_tel) VALUES (2, '(45) 9984-4258');
INSERT INTO public.telefones (id_telefone, numero_tel) VALUES (3, '(45) 99844-2581');
INSERT INTO public.telefones (id_telefone, numero_tel) VALUES (4, '(45) 99844-2581');
INSERT INTO public.telefones (id_telefone, numero_tel) VALUES (5, '(  )      -    ');
INSERT INTO public.telefones (id_telefone, numero_tel) VALUES (6, '(  )      -    ');


--
-- TOC entry 2075 (class 0 OID 0)
-- Dependencies: 178
-- Name: telefones_id_telefone_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.telefones_id_telefone_seq', 6, true);


--
-- TOC entry 2047 (class 0 OID 16493)
-- Dependencies: 187
-- Data for Name: venda; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2076 (class 0 OID 0)
-- Dependencies: 186
-- Name: venda_id_venda_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.venda_id_venda_seq', 1, false);


--
-- TOC entry 1894 (class 2606 OID 16423)
-- Name: pk_bairro; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY public.bairro
    ADD CONSTRAINT pk_bairro PRIMARY KEY (id_bairro);


--
-- TOC entry 1892 (class 2606 OID 16410)
-- Name: pk_cidade; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY public.cidades
    ADD CONSTRAINT pk_cidade PRIMARY KEY (id_cidade);


--
-- TOC entry 1898 (class 2606 OID 16444)
-- Name: pk_cliente; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT pk_cliente PRIMARY KEY (id_cliente);


--
-- TOC entry 1890 (class 2606 OID 16402)
-- Name: pk_estado; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY public.estados
    ADD CONSTRAINT pk_estado PRIMARY KEY (id_estado);


--
-- TOC entry 1906 (class 2606 OID 16511)
-- Name: pk_forn_tel; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY public.itens_tel_forn
    ADD CONSTRAINT pk_forn_tel PRIMARY KEY (id_tel, id_forn);


--
-- TOC entry 1900 (class 2606 OID 16462)
-- Name: pk_fornecedor; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY public.fornecedores
    ADD CONSTRAINT pk_fornecedor PRIMARY KEY (id_fornecedor);


--
-- TOC entry 1902 (class 2606 OID 16485)
-- Name: pk_produto; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY public.produtos
    ADD CONSTRAINT pk_produto PRIMARY KEY (id_produto);


--
-- TOC entry 1910 (class 2606 OID 16551)
-- Name: pk_produto_venda; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY public.itens_venda_produto
    ADD CONSTRAINT pk_produto_venda PRIMARY KEY (id_venda, id_produto);


--
-- TOC entry 1908 (class 2606 OID 16526)
-- Name: pk_tel_clie; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY public.itens_clie_tel
    ADD CONSTRAINT pk_tel_clie PRIMARY KEY (id_cliente, id_tele);


--
-- TOC entry 1896 (class 2606 OID 16436)
-- Name: pk_telefone; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY public.telefones
    ADD CONSTRAINT pk_telefone PRIMARY KEY (id_telefone);


--
-- TOC entry 1904 (class 2606 OID 16501)
-- Name: pk_venda; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY public.venda
    ADD CONSTRAINT pk_venda PRIMARY KEY (id_venda);


--
-- TOC entry 1913 (class 2606 OID 16445)
-- Name: fk_bairro; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT fk_bairro FOREIGN KEY (id_bairro) REFERENCES public.bairro(id_bairro);


--
-- TOC entry 1916 (class 2606 OID 16468)
-- Name: fk_bairro; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fornecedores
    ADD CONSTRAINT fk_bairro FOREIGN KEY (id_bairro) REFERENCES public.bairro(id_bairro);


--
-- TOC entry 1912 (class 2606 OID 16424)
-- Name: fk_cidade; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bairro
    ADD CONSTRAINT fk_cidade FOREIGN KEY (id_cidade) REFERENCES public.cidades(id_cidade);


--
-- TOC entry 1914 (class 2606 OID 16450)
-- Name: fk_cidade; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT fk_cidade FOREIGN KEY (id_cidade) REFERENCES public.cidades(id_cidade);


--
-- TOC entry 1915 (class 2606 OID 16463)
-- Name: fk_cidade; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fornecedores
    ADD CONSTRAINT fk_cidade FOREIGN KEY (id_cidade) REFERENCES public.cidades(id_cidade);


--
-- TOC entry 1922 (class 2606 OID 16532)
-- Name: fk_client; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.itens_clie_tel
    ADD CONSTRAINT fk_client FOREIGN KEY (id_cliente) REFERENCES public.clientes(id_cliente);


--
-- TOC entry 1918 (class 2606 OID 16502)
-- Name: fk_cliente; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.venda
    ADD CONSTRAINT fk_cliente FOREIGN KEY (id_cliente) REFERENCES public.clientes(id_cliente);


--
-- TOC entry 1911 (class 2606 OID 16411)
-- Name: fk_estado; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cidades
    ADD CONSTRAINT fk_estado FOREIGN KEY (id_estado) REFERENCES public.estados(id_estado);


--
-- TOC entry 1920 (class 2606 OID 16517)
-- Name: fk_forn; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.itens_tel_forn
    ADD CONSTRAINT fk_forn FOREIGN KEY (id_forn) REFERENCES public.fornecedores(id_fornecedor);


--
-- TOC entry 1917 (class 2606 OID 16486)
-- Name: fk_fornecedor; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produtos
    ADD CONSTRAINT fk_fornecedor FOREIGN KEY (id_fornecedor) REFERENCES public.fornecedores(id_fornecedor);


--
-- TOC entry 1924 (class 2606 OID 16557)
-- Name: fk_produto; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.itens_venda_produto
    ADD CONSTRAINT fk_produto FOREIGN KEY (id_produto) REFERENCES public.produtos(id_produto);


--
-- TOC entry 1919 (class 2606 OID 16512)
-- Name: fk_tel; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.itens_tel_forn
    ADD CONSTRAINT fk_tel FOREIGN KEY (id_tel) REFERENCES public.telefones(id_telefone);


--
-- TOC entry 1921 (class 2606 OID 16527)
-- Name: fk_tel; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.itens_clie_tel
    ADD CONSTRAINT fk_tel FOREIGN KEY (id_tele) REFERENCES public.telefones(id_telefone);


--
-- TOC entry 1923 (class 2606 OID 16552)
-- Name: fk_venda; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.itens_venda_produto
    ADD CONSTRAINT fk_venda FOREIGN KEY (id_venda) REFERENCES public.venda(id_venda);


--
-- TOC entry 2058 (class 0 OID 0)
-- Dependencies: 7
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2022-10-25 11:37:43

--
-- PostgreSQL database dump complete
--

