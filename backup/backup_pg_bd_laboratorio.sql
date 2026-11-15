--
-- PostgreSQL database dump
--

\restrict rjT0jB3ZnR5g8Gshw2sGmmPkhttVVEND2dNRQbECwcfosq1GO7fNksOekEEmmgJ

-- Dumped from database version 18.6
-- Dumped by pg_dump version 18.6

-- Started on 2026-11-15 13:47:13

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- TOC entry 224 (class 1259 OID 16607)
-- Name: certificados; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.certificados (
    id_certificado character varying(10) NOT NULL,
    id_lote character varying(10) NOT NULL,
    firma_director character varying(100),
    estado character varying(20)
);


--
-- TOC entry 225 (class 1259 OID 16619)
-- Name: ensayo; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ensayo (
    id_ensayo character varying(10) NOT NULL,
    codigo_muestra character varying(10) NOT NULL,
    id_tipo_ensayo character varying(10) NOT NULL,
    medida_obtenida numeric(10,3),
    cumple_norma character varying(2)
);


--
-- TOC entry 220 (class 1259 OID 16562)
-- Name: jefe_laboratorio; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.jefe_laboratorio (
    id_jefe_laboratorio character varying(10) NOT NULL,
    nombre character varying(100) NOT NULL
);


--
-- TOC entry 222 (class 1259 OID 16576)
-- Name: lotes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.lotes (
    id_lote character varying(10) NOT NULL,
    id_producto character varying(10) NOT NULL,
    fecha_fabricacion date NOT NULL,
    cantidad integer,
    observaciones character varying(100)
);


--
-- TOC entry 223 (class 1259 OID 16589)
-- Name: muestra; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.muestra (
    codigo_muestra character varying(10) NOT NULL,
    id_lote character varying(10) NOT NULL,
    jefe_laboratorio character varying(100),
    id_jefe_laboratorio character varying(10) NOT NULL
);


--
-- TOC entry 219 (class 1259 OID 16555)
-- Name: producto; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.producto (
    id_producto character varying(10) NOT NULL,
    nombre_producto character varying(100) NOT NULL,
    descripcion character varying(255)
);


--
-- TOC entry 221 (class 1259 OID 16569)
-- Name: tipo_ensayo; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tipo_ensayo (
    id_tipo_ensayo character varying(10) NOT NULL,
    nombre_normativa character varying(100) NOT NULL,
    condicion_minima character varying(100)
);


--
-- TOC entry 5004 (class 0 OID 16607)
-- Dependencies: 224
-- Data for Name: certificados; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.certificados (id_certificado, id_lote, firma_director, estado) FROM stdin;
\.


--
-- TOC entry 5005 (class 0 OID 16619)
-- Dependencies: 225
-- Data for Name: ensayo; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.ensayo (id_ensayo, codigo_muestra, id_tipo_ensayo, medida_obtenida, cumple_norma) FROM stdin;
\.


--
-- TOC entry 5000 (class 0 OID 16562)
-- Dependencies: 220
-- Data for Name: jefe_laboratorio; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.jefe_laboratorio (id_jefe_laboratorio, nombre) FROM stdin;
J-01	Carlos Pérez
J-02	Ana Gómez
J-03	Luis Martínez
\.


--
-- TOC entry 5002 (class 0 OID 16576)
-- Dependencies: 222
-- Data for Name: lotes; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.lotes (id_lote, id_producto, fecha_fabricacion, cantidad, observaciones) FROM stdin;
\.


--
-- TOC entry 5003 (class 0 OID 16589)
-- Dependencies: 223
-- Data for Name: muestra; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.muestra (codigo_muestra, id_lote, jefe_laboratorio, id_jefe_laboratorio) FROM stdin;
\.


--
-- TOC entry 4999 (class 0 OID 16555)
-- Dependencies: 219
-- Data for Name: producto; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.producto (id_producto, nombre_producto, descripcion) FROM stdin;
P-01	Cemento gris 50kg	Cemento Portland de uso general
P-02	Varilla corrugada 1/2	Acero de refuerzo
P-03	Bloque de concreto	Bloque estructural
P-04	Arena lavada	Arena para mezcla
P-05	Gravilla	Agregado grueso
\.


--
-- TOC entry 5001 (class 0 OID 16569)
-- Dependencies: 221
-- Data for Name: tipo_ensayo; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.tipo_ensayo (id_tipo_ensayo, nombre_normativa, condicion_minima) FROM stdin;
T-01	NTC 673	Resistencia a compresion minima 21 MPa
T-02	NTC 2289	Limite de fluencia minimo 420 MPa
T-03	NTC 4026	Absorcion maxima 13 por ciento
\.


--
-- TOC entry 4843 (class 2606 OID 16613)
-- Name: certificados certificados_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.certificados
    ADD CONSTRAINT certificados_pkey PRIMARY KEY (id_certificado);


--
-- TOC entry 4845 (class 2606 OID 16626)
-- Name: ensayo ensayo_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ensayo
    ADD CONSTRAINT ensayo_pkey PRIMARY KEY (id_ensayo);


--
-- TOC entry 4835 (class 2606 OID 16568)
-- Name: jefe_laboratorio jefe_laboratorio_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jefe_laboratorio
    ADD CONSTRAINT jefe_laboratorio_pkey PRIMARY KEY (id_jefe_laboratorio);


--
-- TOC entry 4839 (class 2606 OID 16583)
-- Name: lotes lotes_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lotes
    ADD CONSTRAINT lotes_pkey PRIMARY KEY (id_lote);


--
-- TOC entry 4841 (class 2606 OID 16596)
-- Name: muestra muestra_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.muestra
    ADD CONSTRAINT muestra_pkey PRIMARY KEY (codigo_muestra);


--
-- TOC entry 4833 (class 2606 OID 16561)
-- Name: producto producto_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.producto
    ADD CONSTRAINT producto_pkey PRIMARY KEY (id_producto);


--
-- TOC entry 4837 (class 2606 OID 16575)
-- Name: tipo_ensayo tipo_ensayo_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tipo_ensayo
    ADD CONSTRAINT tipo_ensayo_pkey PRIMARY KEY (id_tipo_ensayo);


--
-- TOC entry 4849 (class 2606 OID 16614)
-- Name: certificados fk_cert_lote; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.certificados
    ADD CONSTRAINT fk_cert_lote FOREIGN KEY (id_lote) REFERENCES public.lotes(id_lote);


--
-- TOC entry 4850 (class 2606 OID 16627)
-- Name: ensayo fk_ensayo_muestra; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ensayo
    ADD CONSTRAINT fk_ensayo_muestra FOREIGN KEY (codigo_muestra) REFERENCES public.muestra(codigo_muestra);


--
-- TOC entry 4851 (class 2606 OID 16632)
-- Name: ensayo fk_ensayo_tipo; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ensayo
    ADD CONSTRAINT fk_ensayo_tipo FOREIGN KEY (id_tipo_ensayo) REFERENCES public.tipo_ensayo(id_tipo_ensayo);


--
-- TOC entry 4846 (class 2606 OID 16584)
-- Name: lotes fk_lotes_producto; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lotes
    ADD CONSTRAINT fk_lotes_producto FOREIGN KEY (id_producto) REFERENCES public.producto(id_producto);


--
-- TOC entry 4847 (class 2606 OID 16602)
-- Name: muestra fk_muestra_jefe; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.muestra
    ADD CONSTRAINT fk_muestra_jefe FOREIGN KEY (id_jefe_laboratorio) REFERENCES public.jefe_laboratorio(id_jefe_laboratorio);


--
-- TOC entry 4848 (class 2606 OID 16597)
-- Name: muestra fk_muestra_lote; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.muestra
    ADD CONSTRAINT fk_muestra_lote FOREIGN KEY (id_lote) REFERENCES public.lotes(id_lote);


-- Completed on 2026-11-15 13:47:14

--
-- PostgreSQL database dump complete
--

\unrestrict rjT0jB3ZnR5g8Gshw2sGmmPkhttVVEND2dNRQbECwcfosq1GO7fNksOekEEmmgJ

