--
-- PostgreSQL database dump
--

-- Dumped from database version 16.4 (Debian 16.4-1.pgdg110+2)
-- Dumped by pg_dump version 16.4 (Debian 16.4-1.pgdg110+2)

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

--
-- Name: postgis; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS postgis WITH SCHEMA public;


--
-- Name: EXTENSION postgis; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION postgis IS 'PostGIS geometry and geography spatial types and functions';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: buildings; Type: TABLE; Schema: public; Owner: gisuser
--

CREATE TABLE public.buildings (
    ogc_fid integer,
    "timestamp" timestamp with time zone,
    version character varying,
    changeset character varying,
    "user" character varying,
    uid character varying,
    "addr:city" character varying,
    "addr:district" character varying,
    "addr:housenumber" character varying,
    "addr:place" character varying,
    "addr:street" character varying,
    "addr:subdistrict" character varying,
    building character varying,
    "building:levels" character varying,
    highway character varying,
    landuse character varying,
    name character varying,
    "natural" character varying,
    surface character varying,
    id character varying NOT NULL,
    geom public.geometry(Geometry,4326)
);


ALTER TABLE public.buildings OWNER TO gisuser;

--
-- Name: pois; Type: TABLE; Schema: public; Owner: gisuser
--

CREATE TABLE public.pois (
    ogc_fid integer,
    "timestamp" timestamp with time zone,
    version character varying,
    changeset character varying,
    "user" character varying,
    uid character varying,
    "addr:city" character varying,
    "addr:district" character varying,
    "addr:housenumber" character varying,
    "addr:place" character varying,
    "addr:street" character varying,
    "addr:subdistrict" character varying,
    building character varying,
    "building:levels" character varying,
    highway character varying,
    landuse character varying,
    name character varying,
    "natural" character varying,
    surface character varying,
    id character varying NOT NULL,
    geom public.geometry(Geometry,4326)
);


ALTER TABLE public.pois OWNER TO gisuser;

--
-- Name: roads; Type: TABLE; Schema: public; Owner: gisuser
--

CREATE TABLE public.roads (
    ogc_fid integer,
    "timestamp" timestamp with time zone,
    version character varying,
    changeset character varying,
    "user" character varying,
    uid character varying,
    "addr:city" character varying,
    "addr:district" character varying,
    "addr:housenumber" character varying,
    "addr:place" character varying,
    "addr:street" character varying,
    "addr:subdistrict" character varying,
    building character varying,
    "building:levels" character varying,
    highway character varying,
    landuse character varying,
    name character varying,
    "natural" character varying,
    surface character varying,
    id character varying NOT NULL,
    geom public.geometry(Geometry,4326)
);


ALTER TABLE public.roads OWNER TO gisuser;

--
-- Data for Name: buildings; Type: TABLE DATA; Schema: public; Owner: gisuser
--

COPY public.buildings (ogc_fid, "timestamp", version, changeset, "user", uid, "addr:city", "addr:district", "addr:housenumber", "addr:place", "addr:street", "addr:subdistrict", building, "building:levels", highway, landuse, name, "natural", surface, id, geom) FROM stdin;
3	2026-04-05 13:32:42+00	4	180897936	Сковородка	24007137	Стройкерамика	Волжсксий район	81	ТСН СТ Дубовый Гай	4-я линия	городское поселение Смышляевка	house	1	\N	\N	\N	\N	\N	way/1450612814	0106000020E6100000010000000103000000010000000500000039C5F4CEB22A4940E215D22BAFA54A406857C62BB52A49409A4F6738AFA54A405C1FD61BB52A4940E185634CB0A54A402D8D04BFB22A4940BE0BA540B0A54A4039C5F4CEB22A4940E215D22BAFA54A40
4	2026-04-05 13:32:42+00	4	180897936	Сковородка	24007137	Стройкерамика	Волжсксий район	91	ТСН СТ Дубовый Гай	4-я линия	городское поселение Смышляевка	house	1	\N	\N	\N	\N	\N	way/1450670491	0106000020E610000001000000010300000001000000050000006F675F79902A4940BF73396FADA54A40F2E95674902A49406734A8ECAAA54A404424F900932A49403DB5FAEAAAA54A40C1A10106932A494095F48B6DADA54A406F675F79902A4940BF73396FADA54A40
5	2025-11-19 05:19:22+00	1	174843146	Ozon OSM16	23056305	\N	\N	\N	\N	\N	\N	yes	\N	\N	\N	\N	\N	\N	way/1451888014	0106000020E610000001000000010300000001000000050000002C616D8C9D2A4940CBBF9657AEA54A40F7A9CF7A9D2A49400D5938A4ACA54A4036CF6CB2A12A494001214894ACA54A406C860AC4A12A4940BF87A647AEA54A402C616D8C9D2A4940CBBF9657AEA54A40
6	2026-04-05 13:32:42+00	3	180897936	Сковородка	24007137	Стройкерамика	Волжсксий район	61	ТСН СТ Дубовый Гай	3-я линия	городское поселение Смышляевка	house	1	\N	\N	\N	\N	\N	way/1495696248	0106000020E610000001000000010300000001000000070000000A8E812B8F2A49406D59BE2EC3A54A40BD94151E8F2A4940F6B8CA6EC1A54A406FAF16E98F2A4940387A466CC1A54A40F2310EE48F2A4940808868CFC0A54A4032152C1F932A49401A4D2EC6C0A54A4067CCC930932A4940DE9ED623C3A54A400A8E812B8F2A49406D59BE2EC3A54A40
7	2026-04-05 13:32:42+00	3	180897936	Сковородка	24007137	Стройкерамика	Волжсксий район	58	ТСН СТ Дубовый Гай	3-я линия	городское поселение Смышляевка	house	1	\N	\N	\N	\N	\N	way/1495696249	0106000020E6100000010000000103000000010000000500000055979D8F7C2A4940A58DD948C8A54A40EA5674907C2A49400CA77114C5A54A404E582C8F7F2A49400CA77114C5A54A404E582C8F7F2A4940A58DD948C8A54A4055979D8F7C2A4940A58DD948C8A54A40
8	2026-04-05 13:32:42+00	3	180897936	Сковородка	24007137	Стройкерамика	Волжсксий район	65	ТСН СТ Дубовый Гай	3-я линия	городское поселение Смышляевка	house	1	\N	\N	\N	\N	\N	way/1495696250	0106000020E610000001000000010300000001000000090000005775FB51792A4940ECE86E8DBEA54A40ECD8AD0A792A4940A029858ABBA54A40182BC5E97F2A4940EEC6CC4FBBA54A4083C71231802A4940BC08AE4DBEA54A40617369577C2A49406938656EBEA54A40026B30687C2A49403F9F1221BFA54A40E5FB98C57A2A49402158552FBFA54A40D9C3A8B57A2A4940C86EB081BEA54A405775FB51792A4940ECE86E8DBEA54A40
9	2026-04-05 13:32:42+00	3	180897936	Сковородка	24007137	Стройкерамика	Волжсксий район	88	ТСН СТ Дубовый Гай	4-я линия	городское поселение Смышляевка	house	1	\N	\N	\N	\N	\N	way/1495696251	0106000020E61000000100000001030000000100000007000000EE91729C802A494080999427B5A54A40B279C14C802A4940F893E7B0B1A54A400A43893B832A49401CE09398B1A54A406FACD568832A494033A6608DB3A54A4064EAAEEC822A4940B0517BB6B3A54A407B5A8F0C832A49408CA37213B5A54A40EE91729C802A494080999427B5A54A40
10	2026-04-05 13:32:42+00	3	180897936	Сковородка	24007137	Стройкерамика	Волжсксий район	86	ТСН СТ Дубовый Гай	4-я линия	городское поселение Смышляевка	house	1	\N	\N	\N	\N	\N	way/1495696252	0106000020E61000000100000001030000000100000005000000ADDFA7058A2A4940F81D1E1DB2A54A40885979138D2A4940EC134031B2A54A4070E998F38C2A49408C33E1F2B3A54A40966FC7E5892A4940983DBFDEB3A54A40ADDFA7058A2A4940F81D1E1DB2A54A40
11	2026-04-05 13:32:42+00	3	180897936	Сковородка	24007137	Стройкерамика	Волжсксий район	83	ТСН СТ Дубовый Гай	4-я линия	городское поселение Смышляевка	house	1	\N	\N	\N	\N	\N	way/1495696253	0106000020E61000000100000001030000000100000005000000044D9539A72A4940CFA4A88EB0A54A40CE95F727A72A49401EA44C0FAFA54A405B728170AA2A4940D0AAE001AFA54A40FC694881AA2A494082AB3C81B0A54A40044D9539A72A4940CFA4A88EB0A54A40
12	2026-04-05 13:32:42+00	3	180897936	Сковородка	24007137	Стройкерамика	Волжсксий район	80	ТСН СТ Дубовый Гай	4-я линия	городское поселение Смышляевка	house	1	\N	\N	\N	\N	\N	way/1495696254	0106000020E6100000010000000103000000010000000700000058CA32C4B12A494015FD46E0B4A54A40B129A105B22A4940EC415255B2A54A401980FC5BB82A49409FA40A90B2A54A40F5D72B2CB82A49401B78FF69B4A54A40FD5E549CB42A49406E484849B4A54A40C7A7B68AB42A4940867071F9B4A54A4058CA32C4B12A494015FD46E0B4A54A40
13	2026-04-05 13:32:42+00	3	180897936	Сковородка	24007137	Стройкерамика	Волжсксий район	78	ТСН СТ Дубовый Гай	4-я линия	городское поселение Смышляевка	house	1	\N	\N	\N	\N	\N	way/1495696255	0106000020E6100000010000000103000000010000000500000011418B5BBB2A4940263A26E6B4A54A40767CC564BB2A49404B30E6F8B2A54A407570557EBE2A49405D6DC5FEB2A54A4010351B75BE2A4940A3B72EEBB4A54A4011418B5BBB2A4940263A26E6B4A54A40
14	2026-04-05 13:32:42+00	3	180897936	Сковородка	24007137	Стройкерамика	Волжсксий район	75	ТСН СТ Дубовый Гай	4-я линия	городское поселение Смышляевка	house	1	\N	\N	\N	\N	\N	way/1495696256	0106000020E61000000100000001030000000100000005000000160445E2D42A494017235C12B1A54A40160445E2D42A4940B8681206AFA54A40214A6A57D72A4940B8681206AFA54A40214A6A57D72A494017235C12B1A54A40160445E2D42A494017235C12B1A54A40
15	2026-04-05 13:32:42+00	3	180897936	Сковородка	24007137	Стройкерамика	Волжсксий район	73	ТСН СТ Дубовый Гай	4-я линия	городское поселение Смышляевка	house	1	\N	\N	\N	\N	\N	way/1495696257	0106000020E61000000100000001030000000100000007000000AFA2F5A6D82A4940343C07E0B0A54A4020E80D9CD82A49407C92E0B2AFA54A40845F8F2EDB2A4940DC9A19A2AFA54A407E5AA038DB2A4940297AE063B0A54A401FC830DDDA2A49403BB7BF69B0A54A4072C68BE0DA2A4940290417D0B0A54A40AFA2F5A6D82A4940343C07E0B0A54A40
16	2026-04-05 13:32:42+00	3	180897936	Сковородка	24007137	Стройкерамика	Волжсксий район	71	ТСН СТ Дубовый Гай	4-я линия	городское поселение Смышляевка	house	1	\N	\N	\N	\N	\N	way/1495696258	0106000020E610000001000000010300000001000000070000005FB4C70BE92A49403A5563AEB1A54A40953D53F9E82A494005ECB47FAFA54A4017BA1281EA2A4940886EAC7AAFA54A4029F7F186EA2A4940418E9C3BB0A54A409AF4520CEB2A4940170FEF39B0A54A40522EE818EB2A49409358ADA7B1A54A405FB4C70BE92A49403A5563AEB1A54A40
17	2026-04-05 13:32:42+00	3	180897936	Сковородка	24007137	Стройкерамика	Волжсксий район	72	ТСН СТ Дубовый Гай	4-я линия	городское поселение Смышляевка	house	1	\N	\N	\N	\N	\N	way/1495696259	0106000020E610000001000000010300000001000000050000005BD5ED47E52A49404A10093AB5A54A40AED3484BE52A4940FD4AE7C3B3A54A40E99D0AB8E72A494027CA94C5B3A54A40959FAFB4E72A4940748FB63BB5A54A405BD5ED47E52A49404A10093AB5A54A40
18	2026-04-05 13:32:42+00	3	180897936	Сковородка	24007137	Стройкерамика	Волжсксий район	96	ТСН СТ Дубовый Гай	5-я линия	городское поселение Смышляевка	house	1	\N	\N	\N	\N	\N	way/1495696260	0106000020E6100000010000000103000000010000000500000009939856F92A4940E589D640A9A54A4051CFCCDDF82A4940B711AA2FA6A54A40A2A1DA3BFE2A494064B72AE4A5A54A40EF247DB5FE2A4940FD6F80F4A8A54A4009939856F92A4940E589D640A9A54A40
19	2026-04-05 13:32:42+00	3	180897936	Сковородка	24007137	Стройкерамика	Волжсксий район	35	ТСН СТ Дубовый Гай	4-я линия	городское поселение Смышляевка	house	1	\N	\N	\N	\N	\N	way/1495696261	0106000020E61000000100000001030000000100000007000000CF02A3810E2B4940C9BC9F64BCA54A400B35F91C0E2B494066BBE765B9A54A405E8F78680E2B49407ECFA33DB9A54A40461F98480E2B4940D18B7F44B8A54A40C1BE428B112B4940131FE91DB8A54A401A7AD514122B49402392D739BCA54A40CF02A3810E2B4940C9BC9F64BCA54A40
\.


--
-- Data for Name: pois; Type: TABLE DATA; Schema: public; Owner: gisuser
--

COPY public.pois (ogc_fid, "timestamp", version, changeset, "user", uid, "addr:city", "addr:district", "addr:housenumber", "addr:place", "addr:street", "addr:subdistrict", building, "building:levels", highway, landuse, name, "natural", surface, id, geom) FROM stdin;
\.


--
-- Data for Name: roads; Type: TABLE DATA; Schema: public; Owner: gisuser
--

COPY public.roads (ogc_fid, "timestamp", version, changeset, "user", uid, "addr:city", "addr:district", "addr:housenumber", "addr:place", "addr:street", "addr:subdistrict", building, "building:levels", highway, landuse, name, "natural", surface, id, geom) FROM stdin;
20	2026-04-05 13:23:30+00	5	180897527	Сковородка	24007137	\N	\N	\N	\N	\N	\N	\N	\N	service	\N	4-я линия	\N	compacted	way/93668046	0105000020E6100000010000000102000000080000005D64A7C41A2B4940892C2D7EAEA54A4087FDF9111A2B494005B86AE8B0A54A405F9E29CF172B4940E66A7583B2A54A40EA793716142B49408CD7BCAAB3A54A402E4D5B6D0F2B49408057152BB4A54A40248914B9962A4940B790ECB6B0A54A40D86C40DF712A49404DC68C4BB0A54A403944DC9C4A2A494059A89086AEA54A40
21	2026-04-02 19:22:22+00	3	180784089	Сковородка	24007137	\N	\N	\N	\N	\N	\N	\N	\N	service	\N	\N	\N	\N	way/93668051	0105000020E61000000100000001020000000D00000024EAAAE5732A494013FA4FEDC2A54A404898B388722A494009FF2268CCA54A40C6771849712A494016EA9F96D5A54A4002D88008712A494013341C85DAA54A40984AE4277A2A4940B8CB7EDDE9A54A40DF307667922A4940882D3D9AEAA54A408F5F2E98AE2A49401025B5ABEBA54A4058D6EC37C92A49409331E312ECA54A400557D4BBD32A49409331E312ECA54A40C9F9AC7CE02A4940E27E7676E8A54A40204DABD7E32A494079D4F3C9E5A54A405303CDE7DC2A4940ADC497E4DBA54A404ADD8431D82A4940F78205E6D7A54A40
22	2026-04-02 19:23:35+00	3	180784122	Сковородка	24007137	\N	\N	\N	\N	\N	\N	\N	\N	service	\N	3-я линия	\N	compacted	way/1418767597	0105000020E610000001000000010200000012000000D86C40DF712A49404DC68C4BB0A54A4079B2F6D26F2A494063EBBE08BFA54A4024EAAAE5732A494013FA4FEDC2A54A4059B3846BA42A4940BAAE4E84C3A54A40ADBB1EF1D02A4940D1741B79C5A54A40F73B1405FA2A4940AC9800B2C6A54A40B5ED6AA8072B4940C464051AC7A54A4086922463102B4940F3A0EAA1C7A54A40067646A5222B4940354EF9C6C6A54A408896E1E4232B4940A7ADB607C6A54A40F2DE07D6272B4940A29A92ACC3A54A408DF1BCAF252B4940D684FE53BBA54A405AD6FD63212B494033784E69B3A54A405D64A7C41A2B4940892C2D7EAEA54A402FA4C343182B49406F17F5A4A7A54A40CBE48A41162B49408324FD07A2A54A40BAADE3AE142B49403F00A94D9CA54A4024720BA7162B494030A75F7D97A54A40
\.


--
-- Data for Name: spatial_ref_sys; Type: TABLE DATA; Schema: public; Owner: gisuser
--

COPY public.spatial_ref_sys (srid, auth_name, auth_srid, srtext, proj4text) FROM stdin;
\.


--
-- Name: buildings buildings_pkey; Type: CONSTRAINT; Schema: public; Owner: gisuser
--

ALTER TABLE ONLY public.buildings
    ADD CONSTRAINT buildings_pkey PRIMARY KEY (id);


--
-- Name: pois pois_pkey; Type: CONSTRAINT; Schema: public; Owner: gisuser
--

ALTER TABLE ONLY public.pois
    ADD CONSTRAINT pois_pkey PRIMARY KEY (id);


--
-- Name: roads roads_pkey; Type: CONSTRAINT; Schema: public; Owner: gisuser
--

ALTER TABLE ONLY public.roads
    ADD CONSTRAINT roads_pkey PRIMARY KEY (id);


--
-- Name: idx_buildings_geom; Type: INDEX; Schema: public; Owner: gisuser
--

CREATE INDEX idx_buildings_geom ON public.buildings USING gist (geom);


--
-- Name: idx_pois_geom; Type: INDEX; Schema: public; Owner: gisuser
--

CREATE INDEX idx_pois_geom ON public.pois USING gist (geom);


--
-- Name: idx_roads_geom; Type: INDEX; Schema: public; Owner: gisuser
--

CREATE INDEX idx_roads_geom ON public.roads USING gist (geom);


--
-- PostgreSQL database dump complete
--

