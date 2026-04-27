--
-- PostgreSQL database dump
--

\restrict 4tOjYecMi0MSccoy6kszp4yyEKzV5IxlK0JLreTWNuJbOCYPlf2O1Iab9Ve0Pa3

-- Dumped from database version 18.3
-- Dumped by pg_dump version 18.3

-- Started on 2026-04-27 06:48:36

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
-- TOC entry 228 (class 1259 OID 16568)
-- Name: detalle_venta; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.detalle_venta (
    id integer NOT NULL,
    cantidad integer NOT NULL,
    precio_unitario integer NOT NULL,
    id_venta integer NOT NULL,
    id_producto integer NOT NULL
);


ALTER TABLE public.detalle_venta OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 16594)
-- Name: detalle_venta_impuesto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.detalle_venta_impuesto (
    id integer NOT NULL,
    id_impuesto integer NOT NULL,
    id_detalle_venta integer NOT NULL
);


ALTER TABLE public.detalle_venta_impuesto OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16417)
-- Name: empresa; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.empresa (
    rut character varying(12) NOT NULL,
    razon_social character varying(42) NOT NULL,
    descripcion text NOT NULL
);


ALTER TABLE public.empresa OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 16463)
-- Name: estado_pago; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.estado_pago (
    id integer NOT NULL,
    nombre character varying(42) NOT NULL,
    descripcion text
);


ALTER TABLE public.estado_pago OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16427)
-- Name: impuesto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.impuesto (
    id integer NOT NULL,
    nombre character varying(42) NOT NULL,
    porcentaje numeric(5,2) NOT NULL
);


ALTER TABLE public.impuesto OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 16536)
-- Name: producto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.producto (
    id integer NOT NULL,
    nombre character varying(42) NOT NULL,
    descripcion text NOT NULL,
    id_tipo_precio integer NOT NULL
);


ALTER TABLE public.producto OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 16552)
-- Name: stock; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.stock (
    id integer NOT NULL,
    cantidad_disponible integer NOT NULL,
    ubicacion_bodega text NOT NULL,
    id_producto integer NOT NULL
);


ALTER TABLE public.stock OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16407)
-- Name: tipo_cliente; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tipo_cliente (
    id integer NOT NULL,
    nombre character varying(42) NOT NULL,
    descripcion text NOT NULL
);


ALTER TABLE public.tipo_cliente OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 16435)
-- Name: tipo_precio; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tipo_precio (
    id integer NOT NULL,
    nombre character varying(42) NOT NULL,
    porcentaje_utilidad integer NOT NULL
);


ALTER TABLE public.tipo_precio OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 16492)
-- Name: usuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuario (
    id integer NOT NULL,
    nombre character varying(42) NOT NULL,
    rut character varying(12) NOT NULL,
    email text NOT NULL,
    direccion text NOT NULL,
    id_tipo_cliente integer NOT NULL,
    id_empresa character varying(12) NOT NULL
);


ALTER TABLE public.usuario OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 16516)
-- Name: venta; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.venta (
    id integer NOT NULL,
    fecha_venta date NOT NULL,
    total_venta integer NOT NULL,
    id_estado_pago integer NOT NULL,
    id_usuario integer NOT NULL
);


ALTER TABLE public.venta OWNER TO postgres;

--
-- TOC entry 5083 (class 0 OID 16568)
-- Dependencies: 228
-- Data for Name: detalle_venta; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.detalle_venta (id, cantidad, precio_unitario, id_venta, id_producto) FROM stdin;
\.


--
-- TOC entry 5084 (class 0 OID 16594)
-- Dependencies: 229
-- Data for Name: detalle_venta_impuesto; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.detalle_venta_impuesto (id, id_impuesto, id_detalle_venta) FROM stdin;
\.


--
-- TOC entry 5075 (class 0 OID 16417)
-- Dependencies: 220
-- Data for Name: empresa; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.empresa (rut, razon_social, descripcion) FROM stdin;
\.


--
-- TOC entry 5078 (class 0 OID 16463)
-- Dependencies: 223
-- Data for Name: estado_pago; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.estado_pago (id, nombre, descripcion) FROM stdin;
\.


--
-- TOC entry 5076 (class 0 OID 16427)
-- Dependencies: 221
-- Data for Name: impuesto; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.impuesto (id, nombre, porcentaje) FROM stdin;
\.


--
-- TOC entry 5081 (class 0 OID 16536)
-- Dependencies: 226
-- Data for Name: producto; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.producto (id, nombre, descripcion, id_tipo_precio) FROM stdin;
\.


--
-- TOC entry 5082 (class 0 OID 16552)
-- Dependencies: 227
-- Data for Name: stock; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.stock (id, cantidad_disponible, ubicacion_bodega, id_producto) FROM stdin;
\.


--
-- TOC entry 5074 (class 0 OID 16407)
-- Dependencies: 219
-- Data for Name: tipo_cliente; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tipo_cliente (id, nombre, descripcion) FROM stdin;
\.


--
-- TOC entry 5077 (class 0 OID 16435)
-- Dependencies: 222
-- Data for Name: tipo_precio; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tipo_precio (id, nombre, porcentaje_utilidad) FROM stdin;
\.


--
-- TOC entry 5079 (class 0 OID 16492)
-- Dependencies: 224
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usuario (id, nombre, rut, email, direccion, id_tipo_cliente, id_empresa) FROM stdin;
\.


--
-- TOC entry 5080 (class 0 OID 16516)
-- Dependencies: 225
-- Data for Name: venta; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.venta (id, fecha_venta, total_venta, id_estado_pago, id_usuario) FROM stdin;
\.


--
-- TOC entry 4914 (class 2606 OID 16608)
-- Name: detalle_venta detalle_venta_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.detalle_venta
    ADD CONSTRAINT detalle_venta_pkey PRIMARY KEY (id);


--
-- TOC entry 4898 (class 2606 OID 16426)
-- Name: empresa empresa_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.empresa
    ADD CONSTRAINT empresa_pkey PRIMARY KEY (rut);


--
-- TOC entry 4904 (class 2606 OID 16471)
-- Name: estado_pago estado_pago_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estado_pago
    ADD CONSTRAINT estado_pago_pkey PRIMARY KEY (id);


--
-- TOC entry 4908 (class 2606 OID 16525)
-- Name: venta id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.venta
    ADD CONSTRAINT id PRIMARY KEY (id);


--
-- TOC entry 4900 (class 2606 OID 16434)
-- Name: impuesto impuesto_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.impuesto
    ADD CONSTRAINT impuesto_pkey PRIMARY KEY (id);


--
-- TOC entry 4916 (class 2606 OID 16601)
-- Name: detalle_venta_impuesto pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.detalle_venta_impuesto
    ADD CONSTRAINT pk PRIMARY KEY (id);


--
-- TOC entry 4910 (class 2606 OID 16546)
-- Name: producto producto_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.producto
    ADD CONSTRAINT producto_pkey PRIMARY KEY (id);


--
-- TOC entry 4912 (class 2606 OID 16562)
-- Name: stock stock_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stock
    ADD CONSTRAINT stock_pkey PRIMARY KEY (id);


--
-- TOC entry 4896 (class 2606 OID 16416)
-- Name: tipo_cliente tipo_cliente_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipo_cliente
    ADD CONSTRAINT tipo_cliente_pkey PRIMARY KEY (id);


--
-- TOC entry 4902 (class 2606 OID 16442)
-- Name: tipo_precio tipo_precio_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipo_precio
    ADD CONSTRAINT tipo_precio_pkey PRIMARY KEY (id);


--
-- TOC entry 4906 (class 2606 OID 16505)
-- Name: usuario usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id);


--
-- TOC entry 4925 (class 2606 OID 16610)
-- Name: detalle_venta_impuesto id_detalle_venta; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.detalle_venta_impuesto
    ADD CONSTRAINT id_detalle_venta FOREIGN KEY (id_detalle_venta) REFERENCES public.detalle_venta(id) NOT VALID;


--
-- TOC entry 4917 (class 2606 OID 16511)
-- Name: usuario id_empresa; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT id_empresa FOREIGN KEY (id_empresa) REFERENCES public.empresa(rut);


--
-- TOC entry 4919 (class 2606 OID 16531)
-- Name: venta id_estado_pago; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.venta
    ADD CONSTRAINT id_estado_pago FOREIGN KEY (id_estado_pago) REFERENCES public.estado_pago(id) NOT VALID;


--
-- TOC entry 4926 (class 2606 OID 16602)
-- Name: detalle_venta_impuesto id_impuesto; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.detalle_venta_impuesto
    ADD CONSTRAINT id_impuesto FOREIGN KEY (id_impuesto) REFERENCES public.impuesto(id) NOT VALID;


--
-- TOC entry 4923 (class 2606 OID 16584)
-- Name: detalle_venta id_producto; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.detalle_venta
    ADD CONSTRAINT id_producto FOREIGN KEY (id_producto) REFERENCES public.producto(id);


--
-- TOC entry 4922 (class 2606 OID 16563)
-- Name: stock id_producto; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stock
    ADD CONSTRAINT id_producto FOREIGN KEY (id_producto) REFERENCES public.producto(id);


--
-- TOC entry 4918 (class 2606 OID 16506)
-- Name: usuario id_tipo_cliente; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT id_tipo_cliente FOREIGN KEY (id_tipo_cliente) REFERENCES public.tipo_cliente(id);


--
-- TOC entry 4921 (class 2606 OID 16547)
-- Name: producto id_tipo_precio; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.producto
    ADD CONSTRAINT id_tipo_precio FOREIGN KEY (id_tipo_precio) REFERENCES public.tipo_precio(id);


--
-- TOC entry 4920 (class 2606 OID 16526)
-- Name: venta id_usuario; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.venta
    ADD CONSTRAINT id_usuario FOREIGN KEY (id_usuario) REFERENCES public.usuario(id) NOT VALID;


--
-- TOC entry 4924 (class 2606 OID 16579)
-- Name: detalle_venta id_venta; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.detalle_venta
    ADD CONSTRAINT id_venta FOREIGN KEY (id_venta) REFERENCES public.venta(id);


-- Completed on 2026-04-27 06:48:36

--
-- PostgreSQL database dump complete
--

\unrestrict 4tOjYecMi0MSccoy6kszp4yyEKzV5IxlK0JLreTWNuJbOCYPlf2O1Iab9Ve0Pa3

