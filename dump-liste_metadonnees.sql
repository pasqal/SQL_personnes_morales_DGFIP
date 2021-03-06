--
-- PostgreSQL database dump
--
-- Dumped from database version 11.11 (Debian 11.11-0+deb10u1)
-- Dumped by pg_dump version 11.5 (Debian 11.5-1+deb10u1)
-- Started on 2021-04-12 21:31:31 CEST
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
SET default_with_oids = true;
--
-- TOC entry 511 (class 1259 OID 2859807)
-- Name: list_code_de_droits; Type: TABLE; Schema:  Owner: -
--
CREATE TABLE list_code_de_droits (
    code character varying(1) NOT NULL,
    signification character varying(125) NOT NULL
);
--
-- TOC entry 5703 (class 0 OID 0)
-- Dependencies: 511
-- Name: TABLE list_code_de_droits; Type: COMMENT; Schema:  Owner: -
--
COMMENT ON TABLE list_code_de_droits IS 'source DGFIP - avril 2021';
--
-- TOC entry 512 (class 1259 OID 2859833)
-- Name: list_code_et_abrev; Type: TABLE; Schema:  Owner: -
--
CREATE TABLE list_code_et_abrev (
    cnavoi character varying(4) NOT NULL,
    signification character varying(125)
);
--
-- TOC entry 5704 (class 0 OID 0)
-- Dependencies: 512
-- Name: TABLE list_code_et_abrev; Type: COMMENT; Schema:  Owner: -
--
COMMENT ON TABLE list_code_et_abrev IS 'source DGFIP - avril 2021';
--
-- TOC entry 513 (class 1259 OID 2860069)
-- Name: list_forme_juridique; Type: TABLE; Schema:  Owner: -
--
CREATE TABLE list_forme_juridique (
    code smallint NOT NULL,
    abrev_forme character varying(4) NOT NULL,
    forme_juridique character varying(125)
);
--
-- TOC entry 5705 (class 0 OID 0)
-- Dependencies: 513
-- Name: TABLE list_forme_juridique; Type: COMMENT; Schema:  Owner: -
--
COMMENT ON TABLE list_forme_juridique IS 'source DGFIP - avril 2021';
--
-- TOC entry 514 (class 1259 OID 2860305)
-- Name: list_grp_pers_morale; Type: TABLE; Schema:  Owner: -
--
CREATE TABLE list_grp_pers_morale (
    groupe smallint NOT NULL,
    signification character varying(125)
);
--
-- TOC entry 5706 (class 0 OID 0)
-- Dependencies: 514
-- Name: TABLE list_grp_pers_morale; Type: COMMENT; Schema:  Owner: -
--
COMMENT ON TABLE list_grp_pers_morale IS 'source DGFIP - avril 2021';
--
-- TOC entry 5694 (class 0 OID 2859807)
-- Dependencies: 511
-- Data for Name: list_code_de_droits; Type: TABLE DATA; Schema:  Owner: -
--
INSERT INTO list_code_de_droits VALUES ('P', 'Propri??taire');
INSERT INTO list_code_de_droits VALUES ('U', 'Usufruitier (associ?? avec N)');
INSERT INTO list_code_de_droits VALUES ('N', 'Nu-propri??taire (associ?? avec U)');
INSERT INTO list_code_de_droits VALUES ('B', 'Bailleur ?? construction (associ?? avec R)');
INSERT INTO list_code_de_droits VALUES ('R', 'Preneur ?? construction (associ?? avec B)');
INSERT INTO list_code_de_droits VALUES ('F', 'Foncier (associ?? avec D ou T)');
INSERT INTO list_code_de_droits VALUES ('T', 'Tenuyer (associ?? avec F)');
INSERT INTO list_code_de_droits VALUES ('D', 'Domanier (associ?? avec F)');
INSERT INTO list_code_de_droits VALUES ('V', 'Bailleur d???un bail ?? r??habilitation (associ?? avec W)');
INSERT INTO list_code_de_droits VALUES ('W', 'Preneur d???un bail ?? r??habilitation (associ?? avec V)');
INSERT INTO list_code_de_droits VALUES ('A', 'Locataire-Attributaire (associ?? avec P)');
INSERT INTO list_code_de_droits VALUES ('E', 'Emphyt??ote (associ?? avec P)');
INSERT INTO list_code_de_droits VALUES ('K', 'Antichr??siste (associ?? avec P)');
INSERT INTO list_code_de_droits VALUES ('L', 'Fonctionnaire log??');
INSERT INTO list_code_de_droits VALUES ('G', 'G??rant, mandataire, gestionnaire');
INSERT INTO list_code_de_droits VALUES ('H', 'Associ?? dans une soci??t?? en transparence fiscale (associ?? avec P)');
INSERT INTO list_code_de_droits VALUES ('O', 'Autorisation d???occupation temporaire (70 ans)');
INSERT INTO list_code_de_droits VALUES ('J', 'Jeune agriculteur');
INSERT INTO list_code_de_droits VALUES ('Q', 'Gestionnaire taxe sur les bureaux (??le-de-France)');
INSERT INTO list_code_de_droits VALUES ('X', 'La Poste Occupant et propri??taire');
INSERT INTO list_code_de_droits VALUES ('Y', 'La Poste Occupant et non propri??taire');
INSERT INTO list_code_de_droits VALUES ('C', 'Fiduciaire');
INSERT INTO list_code_de_droits VALUES ('M', 'Occupant d???une parcelle appartenant au d??partement de Mayotte ou ?? l?????tat (associ?? ?? P)');
--
-- TOC entry 5695 (class 0 OID 2859833)
-- Dependencies: 512
-- Data for Name: list_code_et_abrev; Type: TABLE DATA; Schema:  Owner: -
--
INSERT INTO list_code_et_abrev VALUES ('AER', 'A??rodrome');
INSERT INTO list_code_et_abrev VALUES ('AERG', 'A??rogare');
INSERT INTO list_code_et_abrev VALUES ('AGL', 'Agglom??ration');
INSERT INTO list_code_et_abrev VALUES ('AIRE', 'Aire');
INSERT INTO list_code_et_abrev VALUES ('ALL', 'All??e');
INSERT INTO list_code_et_abrev VALUES ('ACH', 'Ancien chemin');
INSERT INTO list_code_et_abrev VALUES ('ART', 'Ancienne route');
INSERT INTO list_code_et_abrev VALUES ('ANGL', 'Angle');
INSERT INTO list_code_et_abrev VALUES ('ARC', 'Arcade');
INSERT INTO list_code_et_abrev VALUES ('AUT', 'Autoroute');
INSERT INTO list_code_et_abrev VALUES ('AV', 'Avenue');
INSERT INTO list_code_et_abrev VALUES ('BRE', 'Barri??re');
INSERT INTO list_code_et_abrev VALUES ('BASE', 'Base');
INSERT INTO list_code_et_abrev VALUES ('BSN', 'Bassin');
INSERT INTO list_code_et_abrev VALUES ('BER', 'Berge');
INSERT INTO list_code_et_abrev VALUES ('BORD', 'Bord');
INSERT INTO list_code_et_abrev VALUES ('BD', 'Boulevard');
INSERT INTO list_code_et_abrev VALUES ('BRG', 'Bourg');
INSERT INTO list_code_et_abrev VALUES ('BRTL', 'Bretelle');
INSERT INTO list_code_et_abrev VALUES ('CALL', 'Calle, callada');
INSERT INTO list_code_et_abrev VALUES ('CAMI', 'Camin');
INSERT INTO list_code_et_abrev VALUES ('CAMP', 'Camp');
INSERT INTO list_code_et_abrev VALUES ('CPG', 'Camping');
INSERT INTO list_code_et_abrev VALUES ('CAN', 'Canal');
INSERT INTO list_code_et_abrev VALUES ('CAR', 'Carrefour');
INSERT INTO list_code_et_abrev VALUES ('CAE', 'Carriera');
INSERT INTO list_code_et_abrev VALUES ('CARE', 'Carri??re');
INSERT INTO list_code_et_abrev VALUES ('CASR', 'Caserne');
INSERT INTO list_code_et_abrev VALUES ('CTRE', 'Centre');
INSERT INTO list_code_et_abrev VALUES ('CHL', 'Chalet');
INSERT INTO list_code_et_abrev VALUES ('CHP', 'Champ');
INSERT INTO list_code_et_abrev VALUES ('CHA', 'Chasse');
INSERT INTO list_code_et_abrev VALUES ('CHT', 'Ch??teau');
INSERT INTO list_code_et_abrev VALUES ('CHS', 'Chauss??e');
INSERT INTO list_code_et_abrev VALUES ('CHE', 'Chemin');
INSERT INTO list_code_et_abrev VALUES ('CHEM', 'Cheminement');
INSERT INTO list_code_et_abrev VALUES ('CC', 'Chemin communal');
INSERT INTO list_code_et_abrev VALUES ('CD', 'Chemin d??partemental');
INSERT INTO list_code_et_abrev VALUES ('CR', 'Chemin rural');
INSERT INTO list_code_et_abrev VALUES ('CF', 'Chemin forestier');
INSERT INTO list_code_et_abrev VALUES ('CHV', 'Chemin vicinal');
INSERT INTO list_code_et_abrev VALUES ('CITE', 'Cit??');
INSERT INTO list_code_et_abrev VALUES ('CLOS', 'Clos');
INSERT INTO list_code_et_abrev VALUES ('COIN', 'Coin');
INSERT INTO list_code_et_abrev VALUES ('COL', 'Col');
INSERT INTO list_code_et_abrev VALUES ('CTR', 'Contour');
INSERT INTO list_code_et_abrev VALUES ('COR', 'Corniche');
INSERT INTO list_code_et_abrev VALUES ('CORO', 'Coron');
INSERT INTO list_code_et_abrev VALUES ('COTE', 'C??te');
INSERT INTO list_code_et_abrev VALUES ('CLR', 'Couloir');
INSERT INTO list_code_et_abrev VALUES ('COUR', 'Cour');
INSERT INTO list_code_et_abrev VALUES ('CRS', 'Cours');
INSERT INTO list_code_et_abrev VALUES ('CIVE', 'Coursive');
INSERT INTO list_code_et_abrev VALUES ('CRX', 'Croix');
INSERT INTO list_code_et_abrev VALUES ('DARS', 'Darse, darce');
INSERT INTO list_code_et_abrev VALUES ('DSC', 'Descente');
INSERT INTO list_code_et_abrev VALUES ('DEVI', 'D??viation');
INSERT INTO list_code_et_abrev VALUES ('DIG', 'Digue');
INSERT INTO list_code_et_abrev VALUES ('DOM', 'Domaine');
INSERT INTO list_code_et_abrev VALUES ('DRA', 'Draille');
INSERT INTO list_code_et_abrev VALUES ('ECA', '??cart');
INSERT INTO list_code_et_abrev VALUES ('ECL', '??cluse');
INSERT INTO list_code_et_abrev VALUES ('EMBR', 'Embranchement');
INSERT INTO list_code_et_abrev VALUES ('EMP', 'Emplacement');
INSERT INTO list_code_et_abrev VALUES ('ENV', 'Enclave');
INSERT INTO list_code_et_abrev VALUES ('ENC', 'Enclos');
INSERT INTO list_code_et_abrev VALUES ('ESC', 'Escalier');
INSERT INTO list_code_et_abrev VALUES ('ESPA', 'Espace');
INSERT INTO list_code_et_abrev VALUES ('ESP', 'Esplanade');
INSERT INTO list_code_et_abrev VALUES ('ETNG', '??tang');
INSERT INTO list_code_et_abrev VALUES ('FG', 'Faubourg');
INSERT INTO list_code_et_abrev VALUES ('FRM', 'Ferme');
INSERT INTO list_code_et_abrev VALUES ('FD', 'Fond');
INSERT INTO list_code_et_abrev VALUES ('FON', 'Fontaine');
INSERT INTO list_code_et_abrev VALUES ('FOR', 'For??t');
INSERT INTO list_code_et_abrev VALUES ('FORT', 'Fort');
INSERT INTO list_code_et_abrev VALUES ('FOS', 'Fosse');
INSERT INTO list_code_et_abrev VALUES ('GAL', 'Galerie');
INSERT INTO list_code_et_abrev VALUES ('GARE', 'Gare');
INSERT INTO list_code_et_abrev VALUES ('GBD', 'Grand boulevard');
INSERT INTO list_code_et_abrev VALUES ('GPL', 'Grande place');
INSERT INTO list_code_et_abrev VALUES ('GR', 'Grande rue');
INSERT INTO list_code_et_abrev VALUES ('GREV', 'Gr??ve');
INSERT INTO list_code_et_abrev VALUES ('HAB', 'Habitation');
INSERT INTO list_code_et_abrev VALUES ('HLG', 'Halage');
INSERT INTO list_code_et_abrev VALUES ('HLE', 'Halle');
INSERT INTO list_code_et_abrev VALUES ('HAM', 'Hameau');
INSERT INTO list_code_et_abrev VALUES ('HTR', 'Hauteur');
INSERT INTO list_code_et_abrev VALUES ('HIP', 'Hippodrome');
INSERT INTO list_code_et_abrev VALUES ('HLM', 'HLM');
INSERT INTO list_code_et_abrev VALUES ('ILE', '??le');
INSERT INTO list_code_et_abrev VALUES ('ILOT', '??lot');
INSERT INTO list_code_et_abrev VALUES ('IMP', 'Impasse');
INSERT INTO list_code_et_abrev VALUES ('JARD', 'Jardin');
INSERT INTO list_code_et_abrev VALUES ('JTE', 'Jet??e');
INSERT INTO list_code_et_abrev VALUES ('LAC', 'Lac');
INSERT INTO list_code_et_abrev VALUES ('LEVE', 'Lev??e');
INSERT INTO list_code_et_abrev VALUES ('LICE', 'Lices');
INSERT INTO list_code_et_abrev VALUES ('LIGN', 'Ligne');
INSERT INTO list_code_et_abrev VALUES ('LOT', 'Lotissement');
INSERT INTO list_code_et_abrev VALUES ('MAIL', 'Mail');
INSERT INTO list_code_et_abrev VALUES ('MAIS', 'Maison');
INSERT INTO list_code_et_abrev VALUES ('MAR', 'Marche');
INSERT INTO list_code_et_abrev VALUES ('MARE', 'Mare');
INSERT INTO list_code_et_abrev VALUES ('MRN', 'Marina');
INSERT INTO list_code_et_abrev VALUES ('MAS', 'Mas');
INSERT INTO list_code_et_abrev VALUES ('MTE', 'Mont??e');
INSERT INTO list_code_et_abrev VALUES ('MNE', 'Morne');
INSERT INTO list_code_et_abrev VALUES ('NTE', 'Nouvelle route');
INSERT INTO list_code_et_abrev VALUES ('PARC', 'Parc');
INSERT INTO list_code_et_abrev VALUES ('PKG', 'Parking');
INSERT INTO list_code_et_abrev VALUES ('PRV', 'Parvis');
INSERT INTO list_code_et_abrev VALUES ('PAS', 'Passage');
INSERT INTO list_code_et_abrev VALUES ('PASS', 'Passe');
INSERT INTO list_code_et_abrev VALUES ('PLE', 'Passerelle');
INSERT INTO list_code_et_abrev VALUES ('PCH', 'Petit chemin');
INSERT INTO list_code_et_abrev VALUES ('PTA', 'Petite all??e');
INSERT INTO list_code_et_abrev VALUES ('PAE', 'Petite avenue');
INSERT INTO list_code_et_abrev VALUES ('PRT', 'Petite route');
INSERT INTO list_code_et_abrev VALUES ('PTR', 'Petite rue');
INSERT INTO list_code_et_abrev VALUES ('PHAR', 'Phare');
INSERT INTO list_code_et_abrev VALUES ('PIST', 'Piste');
INSERT INTO list_code_et_abrev VALUES ('PLA', 'Placa');
INSERT INTO list_code_et_abrev VALUES ('PL', 'Place');
INSERT INTO list_code_et_abrev VALUES ('PTTE', 'Placette');
INSERT INTO list_code_et_abrev VALUES ('PLCI', 'Placis');
INSERT INTO list_code_et_abrev VALUES ('PLAG', 'Plage');
INSERT INTO list_code_et_abrev VALUES ('PLN', 'Plaine');
INSERT INTO list_code_et_abrev VALUES ('PLAN', 'Plan');
INSERT INTO list_code_et_abrev VALUES ('PLT', 'Plateau');
INSERT INTO list_code_et_abrev VALUES ('PNT', 'Pointe');
INSERT INTO list_code_et_abrev VALUES ('PONT', 'Pont');
INSERT INTO list_code_et_abrev VALUES ('PCHE', 'Porche');
INSERT INTO list_code_et_abrev VALUES ('PORT', 'Port');
INSERT INTO list_code_et_abrev VALUES ('PTE', 'Porte');
INSERT INTO list_code_et_abrev VALUES ('PORQ', 'Portique');
INSERT INTO list_code_et_abrev VALUES ('POST', 'Poste');
INSERT INTO list_code_et_abrev VALUES ('POT', 'Poterne');
INSERT INTO list_code_et_abrev VALUES ('PROM', 'Promenade');
INSERT INTO list_code_et_abrev VALUES ('QUAI', 'Quai');
INSERT INTO list_code_et_abrev VALUES ('QUA', 'Quartier');
INSERT INTO list_code_et_abrev VALUES ('RAC', 'Raccourci');
INSERT INTO list_code_et_abrev VALUES ('RPE', 'Rampe');
INSERT INTO list_code_et_abrev VALUES ('RVE', 'Ravine');
INSERT INTO list_code_et_abrev VALUES ('REM', 'Rempart');
INSERT INTO list_code_et_abrev VALUES ('RES', 'R??sidence');
INSERT INTO list_code_et_abrev VALUES ('RIVE', 'Rive');
INSERT INTO list_code_et_abrev VALUES ('ROC', 'Rocade');
INSERT INTO list_code_et_abrev VALUES ('RPT', 'Rond-point');
INSERT INTO list_code_et_abrev VALUES ('RTD', 'Rotonde');
INSERT INTO list_code_et_abrev VALUES ('RTE', 'Route');
INSERT INTO list_code_et_abrev VALUES ('RUE', 'Rue');
INSERT INTO list_code_et_abrev VALUES ('RLE', 'Ruelle');
INSERT INTO list_code_et_abrev VALUES ('RULT', 'Ruellette');
INSERT INTO list_code_et_abrev VALUES ('RUET', 'Ruette');
INSERT INTO list_code_et_abrev VALUES ('RUIS', 'Ruisseau');
INSERT INTO list_code_et_abrev VALUES ('SAS', 'Sas');
INSERT INTO list_code_et_abrev VALUES ('SEN', 'Sentier, sente');
INSERT INTO list_code_et_abrev VALUES ('SQ', 'Square');
INSERT INTO list_code_et_abrev VALUES ('STDE', 'Stade');
INSERT INTO list_code_et_abrev VALUES ('TRN', 'Terrain');
INSERT INTO list_code_et_abrev VALUES ('TSSE', 'Terrasse');
INSERT INTO list_code_et_abrev VALUES ('TER', 'Terre');
INSERT INTO list_code_et_abrev VALUES ('TPL', 'Terre-plein');
INSERT INTO list_code_et_abrev VALUES ('TRT', 'Tertre');
INSERT INTO list_code_et_abrev VALUES ('TOUR', 'Tour');
INSERT INTO list_code_et_abrev VALUES ('TRAB', 'Traboule');
INSERT INTO list_code_et_abrev VALUES ('TRA', 'Traverse');
INSERT INTO list_code_et_abrev VALUES ('TUN', 'Tunnel');
INSERT INTO list_code_et_abrev VALUES ('VAL', 'Val');
INSERT INTO list_code_et_abrev VALUES ('VALL', 'Vallon, vall??e');
INSERT INTO list_code_et_abrev VALUES ('VEN', 'Venelle');
INSERT INTO list_code_et_abrev VALUES ('VIA', 'Via');
INSERT INTO list_code_et_abrev VALUES ('VIAD', 'Viaduc');
INSERT INTO list_code_et_abrev VALUES ('VTE', 'Vieille route');
INSERT INTO list_code_et_abrev VALUES ('VCHE', 'Vieux chemin');
INSERT INTO list_code_et_abrev VALUES ('VLA', 'Villa');
INSERT INTO list_code_et_abrev VALUES ('VGE', 'Village');
INSERT INTO list_code_et_abrev VALUES ('VIL', 'Ville');
INSERT INTO list_code_et_abrev VALUES ('VOIE', 'Voie');
INSERT INTO list_code_et_abrev VALUES ('VC', 'Voie communale');
INSERT INTO list_code_et_abrev VALUES ('VOIR', 'Voirie');
INSERT INTO list_code_et_abrev VALUES ('VOUT', 'Vo??te');
INSERT INTO list_code_et_abrev VALUES ('VOY', 'Voyeul');
INSERT INTO list_code_et_abrev VALUES ('ZA', 'ZA');
INSERT INTO list_code_et_abrev VALUES ('ZAC', 'ZAC');
INSERT INTO list_code_et_abrev VALUES ('ZAD', 'ZAD');
INSERT INTO list_code_et_abrev VALUES ('ZI', 'ZI');
INSERT INTO list_code_et_abrev VALUES ('ZONE', 'Zone');
INSERT INTO list_code_et_abrev VALUES ('ZUP', 'ZUP');
--
-- TOC entry 5696 (class 0 OID 2860069)
-- Dependencies: 513
-- Data for Name: list_forme_juridique; Type: TABLE DATA; Schema:  Owner: -
--
INSERT INTO list_forme_juridique VALUES (3110, '', 'Repr??sentation ou agence commerciale d?????tat ou organisme public ??tranger immatricul?? au RCS');
INSERT INTO list_forme_juridique VALUES (3120, 'STE', 'Soci??t?? commerciale ??trang??re immatricul??e au RCS');
INSERT INTO list_forme_juridique VALUES (3205, '', 'Organisation internationale');
INSERT INTO list_forme_juridique VALUES (3210, '', '??tat, collectivit?? ou ??tablissement public ??tranger');
INSERT INTO list_forme_juridique VALUES (3220, 'STE', 'Soci??t?? ??trang??re non immatricul??e au RCS');
INSERT INTO list_forme_juridique VALUES (3290, '', 'Autre personne morale de droit ??tranger');
INSERT INTO list_forme_juridique VALUES (4110, 'EPIC', '??tablissement public national ?? caract??re industriel ou commercial dot?? d???un comptable public');
INSERT INTO list_forme_juridique VALUES (4120, 'EPIC', '??tablissement public national ?? caract??re industriel ou commercial non dot?? d???un comptable public');
INSERT INTO list_forme_juridique VALUES (4130, '', 'Exploitant public');
INSERT INTO list_forme_juridique VALUES (4140, 'EPIC', '??tablissement public local ?? caract??re industriel ou commercial');
INSERT INTO list_forme_juridique VALUES (4150, 'REGI', 'R??gie d???une collectivit?? locale ?? caract??re industriel ou commercial');
INSERT INTO list_forme_juridique VALUES (4160, 'BDF', 'Institution Banque de France');
INSERT INTO list_forme_juridique VALUES (5191, 'SCCP', 'Soci??t?? de caution mutuelle');
INSERT INTO list_forme_juridique VALUES (5192, 'SCCP', 'Soci??t?? coop??rative de banque populaire');
INSERT INTO list_forme_juridique VALUES (5193, 'SCCP', 'Caisse de cr??dit maritime mutuel');
INSERT INTO list_forme_juridique VALUES (5194, 'SCCP', 'Caisse (f??d??rale) de cr??dit mutuel');
INSERT INTO list_forme_juridique VALUES (5195, 'SCCP', 'Association coop??rative inscrite (droit local Alsace Moselle)');
INSERT INTO list_forme_juridique VALUES (5196, 'SCCP', 'Caisse d?????pargne et de pr??voyance ?? forme coop??rative');
INSERT INTO list_forme_juridique VALUES (5202, 'SNC', 'Soci??t?? en nom collectif');
INSERT INTO list_forme_juridique VALUES (5203, 'SNC', 'Soci??t?? en nom collectif coop??rative');
INSERT INTO list_forme_juridique VALUES (5307, 'SCOM', 'Soci??t?? en commandite simple coop??rative');
INSERT INTO list_forme_juridique VALUES (5308, 'SCOM', 'Soci??t?? en commandite par actions');
INSERT INTO list_forme_juridique VALUES (5309, 'SCOM', 'Soci??t?? en commandite par actions coop??rative');
INSERT INTO list_forme_juridique VALUES (5370, 'SCOM', 'Soci??t?? de participations financi??res de profession lib??rale soci??t?? en commandite par action');
INSERT INTO list_forme_juridique VALUES (5385, 'SCOM', 'Soci??t?? d???exercice lib??ral en commandite par actions');
INSERT INTO list_forme_juridique VALUES (5410, 'SARL', 'SARL nationale');
INSERT INTO list_forme_juridique VALUES (5415, 'SARL', 'SARL d?????conomie mixte');
INSERT INTO list_forme_juridique VALUES (5422, 'SARL', 'SARL immobili??re pour le commerce et l???industrie (SICOMI)');
INSERT INTO list_forme_juridique VALUES (5426, 'SARL', 'SARL immobili??re de gestion');
INSERT INTO list_forme_juridique VALUES (5430, 'SARL', 'SARL d???am??nagement foncier et d?????quipement rural (SAFER)');
INSERT INTO list_forme_juridique VALUES (5431, 'SARL', 'SARL mixte d???int??r??t agricole (SMIA)');
INSERT INTO list_forme_juridique VALUES (5432, 'SARL', 'SARL d???int??r??t collectif agricole (SICA)');
INSERT INTO list_forme_juridique VALUES (5442, 'SARL', 'SARL d???attribution');
INSERT INTO list_forme_juridique VALUES (5443, 'SARL', 'SARL coop??rative de construction');
INSERT INTO list_forme_juridique VALUES (5451, 'SARL', 'SARL coop??rative de consommation');
INSERT INTO list_forme_juridique VALUES (5453, 'SARL', 'SARL coop??rative artisanale');
INSERT INTO list_forme_juridique VALUES (5454, 'SARL', 'SARL coop??rative d???int??r??t maritime');
INSERT INTO list_forme_juridique VALUES (5455, 'SARL', 'SARL coop??rative de transport');
INSERT INTO list_forme_juridique VALUES (5458, 'SARL', 'SARL coop??rative ouvri??re de production et de cr??dit (SCOP)');
INSERT INTO list_forme_juridique VALUES (5459, 'SARL', 'SARL union de soci??t??s coop??ratives');
INSERT INTO list_forme_juridique VALUES (5460, 'SARL', 'Autre SARL coop??rative');
INSERT INTO list_forme_juridique VALUES (5470, 'SARL', 'Soci??t?? de participations financi??res de profession lib??rale soci??t?? ?? responsabilit?? limit??e');
INSERT INTO list_forme_juridique VALUES (5485, 'SLRL', 'Soci??t?? d???exercice lib??ral ?? responsabilit?? limit??e');
INSERT INTO list_forme_juridique VALUES (5499, 'SARL', 'Soci??t?? ?? responsabilit?? limit??e (sans autre indication)');
INSERT INTO list_forme_juridique VALUES (5505, 'SA', 'SA ?? participation ouvri??re ?? conseil d???administration');
INSERT INTO list_forme_juridique VALUES (5510, 'SA', 'SA nationale ?? conseil d???administration');
INSERT INTO list_forme_juridique VALUES (5515, 'SEM', 'SA d?????conomie mixte ?? conseil d???administration');
INSERT INTO list_forme_juridique VALUES (5520, 'STE', 'Fond ?? forme soci??tale ?? conseil d???administration');
INSERT INTO list_forme_juridique VALUES (5522, 'STE', 'SA immobili??re pour le commerce et l???industrie (SICOMI) ?? conseil d???administration');
INSERT INTO list_forme_juridique VALUES (5525, 'SA', 'SA immobili??re d???investissement ?? conseil d???administration');
INSERT INTO list_forme_juridique VALUES (5530, '', 'SA d???am??nagement foncier et d?????quipement rural (SAFER) ?? conseil d???administration');
INSERT INTO list_forme_juridique VALUES (5531, 'SA', 'Soci??t?? anonyme mixte d???int??r??t agricole (SMIA) ?? conseil d???administration');
INSERT INTO list_forme_juridique VALUES (5532, 'SICA', 'SA d???int??r??t collectif agricole (SICA) ?? conseil d???administration');
INSERT INTO list_forme_juridique VALUES (5542, 'SA', 'SA d???attribution ?? conseil d???administration');
INSERT INTO list_forme_juridique VALUES (5543, 'SA', 'SA coop??rative de construction ?? conseil d???administration');
INSERT INTO list_forme_juridique VALUES (5546, 'SA', 'SA de HLM ?? conseil d???administration');
INSERT INTO list_forme_juridique VALUES (5548, 'SA', 'SA de cr??dit immobilier ?? conseil d???administration');
INSERT INTO list_forme_juridique VALUES (5551, 'SA', 'SA coop??rative de consommation ?? conseil d???administration');
INSERT INTO list_forme_juridique VALUES (5552, 'SA', 'SA coop??rative de commer??ants-d??taillants ?? conseil d???administration');
INSERT INTO list_forme_juridique VALUES (5553, 'SA', 'SA coop??rative artisanale ?? conseil d???administration');
INSERT INTO list_forme_juridique VALUES (5554, 'SA', 'SA coop??rative (d???int??r??t) maritime ?? conseil d???administration');
INSERT INTO list_forme_juridique VALUES (5555, 'SA', 'SA coop??rative de transport ?? conseil d???administration');
INSERT INTO list_forme_juridique VALUES (5558, 'SCOP', 'SA coop??rative ouvri??re de production et de cr??dit (SCOP) ?? conseil d???administration');
INSERT INTO list_forme_juridique VALUES (5559, 'SA', 'SA union de soci??t??s coop??ratives ?? conseil d???administration');
INSERT INTO list_forme_juridique VALUES (5560, 'SA', 'Autre SA coop??rative ?? conseil d???administration');
INSERT INTO list_forme_juridique VALUES (5570, 'SA', 'Soci??t?? de participations financi??res de profession lib??rale soci??t?? anonyme ?? conseil d???administration');
INSERT INTO list_forme_juridique VALUES (5585, 'STE', 'Soci??t?? d???exercice lib??ral ?? forme anonyme ?? conseil d???administration');
INSERT INTO list_forme_juridique VALUES (5599, 'SA', 'SA ?? conseil d???administration (s.a.i.)');
INSERT INTO list_forme_juridique VALUES (5605, 'SA', 'SA ?? participation ouvri??re ?? directoire');
INSERT INTO list_forme_juridique VALUES (5610, 'SA', 'SA nationale ?? directoire');
INSERT INTO list_forme_juridique VALUES (5615, 'SA', 'SA d?????conomie mixte ?? directoire');
INSERT INTO list_forme_juridique VALUES (5620, 'STE', 'Fond ?? forme soci??tale ?? directoire');
INSERT INTO list_forme_juridique VALUES (5622, 'STE', 'SA immobili??re pour le commerce et l???industrie (SICOMI) ?? directoire');
INSERT INTO list_forme_juridique VALUES (5625, 'STE', 'SA immobili??re d???investissement ?? directoire');
INSERT INTO list_forme_juridique VALUES (5630, '', 'SAFER anonyme ?? directoire');
INSERT INTO list_forme_juridique VALUES (5631, 'SA', 'SA mixte d???int??r??t agricole (SMIA)');
INSERT INTO list_forme_juridique VALUES (5632, 'SA', 'SA d???int??r??t collectif agricole (SICA)');
INSERT INTO list_forme_juridique VALUES (5642, 'SA', 'SA d???attribution ?? directoire');
INSERT INTO list_forme_juridique VALUES (5643, 'SA', 'SA coop??rative de construction ?? directoire');
INSERT INTO list_forme_juridique VALUES (5646, 'SA', 'SA de HLM ?? directoire');
INSERT INTO list_forme_juridique VALUES (5647, 'STE', 'Soci??t?? coop??rative de production de HLM anonyme ?? directoire');
INSERT INTO list_forme_juridique VALUES (5648, 'SA', 'SA de cr??dit immobilier ?? directoire');
INSERT INTO list_forme_juridique VALUES (5651, 'SA', 'SA coop??rative de consommation ?? directoire');
INSERT INTO list_forme_juridique VALUES (5652, 'SA', 'SA coop??rative de commer??ants-d??taillants ?? directoire');
INSERT INTO list_forme_juridique VALUES (5653, 'SA', 'SA coop??rative artisanale ?? directoire');
INSERT INTO list_forme_juridique VALUES (5654, 'SA', 'SA coop??rative d???int??r??t maritime ?? directoire');
INSERT INTO list_forme_juridique VALUES (5655, 'SA', 'SA coop??rative de transport ?? directoire');
INSERT INTO list_forme_juridique VALUES (5658, 'SCOP', 'SA coop??rative ouvri??re de production et de cr??dit (SCOP) ?? directoire');
INSERT INTO list_forme_juridique VALUES (5659, 'SA', 'SA union de soci??t??s coop??ratives ?? directoire');
INSERT INTO list_forme_juridique VALUES (5660, 'SA', 'Autre SA coop??rative ?? directoire');
INSERT INTO list_forme_juridique VALUES (5699, 'SA', 'SA ?? directoire (s.a.i.)');
INSERT INTO list_forme_juridique VALUES (5770, 'SAS', 'Soci??t?? de participations financi??res de profession lib??rale soci??t?? par actions simplifi??e');
INSERT INTO list_forme_juridique VALUES (5800, 'SE', 'Soci??t?? europ??enne');
INSERT INTO list_forme_juridique VALUES (6100, 'CEP', 'Caisse d?????pargne et de Pr??voyance');
INSERT INTO list_forme_juridique VALUES (6210, 'GIE', 'Groupement europ??en d???int??r??t ??conomique (GEIE)');
INSERT INTO list_forme_juridique VALUES (6220, 'GIE', 'Groupement d???int??r??t ??conomique (GIE)');
INSERT INTO list_forme_juridique VALUES (6316, 'CUMA', 'Coop??rative d???utilisation de mat??riel agricole en commun (CUMA)');
INSERT INTO list_forme_juridique VALUES (6317, 'SCA', 'Soci??t?? coop??rative agricole');
INSERT INTO list_forme_juridique VALUES (6318, 'SCA', 'Union de soci??t??s coop??ratives agricoles');
INSERT INTO list_forme_juridique VALUES (6411, 'SAM', 'Soci??t?? d???assurance ?? forme mutuelle');
INSERT INTO list_forme_juridique VALUES (6412, 'SAM', 'Soci??t?? mutuelle d???assurance');
INSERT INTO list_forme_juridique VALUES (6413, 'SAM', 'Union de soci??t??s mutuelles d???assurances');
INSERT INTO list_forme_juridique VALUES (6414, 'SAM', 'Autre soci??t?? non commerciale d???assurance');
INSERT INTO list_forme_juridique VALUES (6511, 'STE', 'Soci??t?? interprofessionnelle de soins ambulatoires');
INSERT INTO list_forme_juridique VALUES (6521, 'SCPI', 'Soci??t?? civile de placement collectif immobilier (SCPI)');
INSERT INTO list_forme_juridique VALUES (6532, 'SICA', 'Soci??t?? civile d???int??r??t collectif agricole (SICA)');
INSERT INTO list_forme_juridique VALUES (6533, 'GAEC', 'Groupement agricole d???exploitation en commun (GAEC)');
INSERT INTO list_forme_juridique VALUES (6534, 'GFA', 'Groupement foncier agricole');
INSERT INTO list_forme_juridique VALUES (6535, 'GAF', 'Groupement agricole foncier');
INSERT INTO list_forme_juridique VALUES (6536, 'GFO', 'Groupement forestier');
INSERT INTO list_forme_juridique VALUES (6537, 'GPAS', 'Groupement pastoral');
INSERT INTO list_forme_juridique VALUES (6538, 'GFR', 'Groupement foncier et rural');
INSERT INTO list_forme_juridique VALUES (6539, 'STE', 'Soci??t?? civile fonci??re');
INSERT INTO list_forme_juridique VALUES (6540, 'SCI', 'Soci??t?? civile immobili??re');
INSERT INTO list_forme_juridique VALUES (6541, 'SCI', 'Soci??t?? civile immobili??re de construction-vente');
INSERT INTO list_forme_juridique VALUES (6542, 'SC', 'Soci??t?? civile d???attribution');
INSERT INTO list_forme_juridique VALUES (6543, 'SC', 'Soci??t?? civile coop??rative de construction');
INSERT INTO list_forme_juridique VALUES (6544, 'SCI', 'Soci??t?? civile immobili??re d???accession progressive ?? la propri??t??');
INSERT INTO list_forme_juridique VALUES (6551, 'SC', 'Soci??t?? civile coop??rative de consommation');
INSERT INTO list_forme_juridique VALUES (6554, 'SC', 'Soci??t?? civile coop??rative d???int??r??t maritime');
INSERT INTO list_forme_juridique VALUES (6558, 'SC', 'Soci??t?? civile coop??rative entre m??decins');
INSERT INTO list_forme_juridique VALUES (6560, 'SC', 'Autre soci??t?? civile coop??rative');
INSERT INTO list_forme_juridique VALUES (6588, 'SCM', 'Soci??t?? civile laiti??re');
INSERT INTO list_forme_juridique VALUES (6589, 'CCM', 'Soci??t?? civile de moyens');
INSERT INTO list_forme_juridique VALUES (6595, 'CCAM', 'Caisse locale de cr??dit mutuel');
INSERT INTO list_forme_juridique VALUES (6596, 'SCEA', 'Caisse de cr??dit agricole mutuel');
INSERT INTO list_forme_juridique VALUES (6597, 'EARL', 'Soci??t?? civile d???exploitation agricole');
INSERT INTO list_forme_juridique VALUES (6599, '', 'Autre soci??t?? civile');
INSERT INTO list_forme_juridique VALUES (6901, '', 'Autre personne de droit priv?? inscrite au registre du commerce et des soci??t??s');
INSERT INTO list_forme_juridique VALUES (7111, '', 'Autorit?? constitutionnelle');
INSERT INTO list_forme_juridique VALUES (7112, 'ETAT', 'Autorit?? administrative ou publique ind??pendante');
INSERT INTO list_forme_juridique VALUES (7113, 'ETAT', 'Minist??re');
INSERT INTO list_forme_juridique VALUES (7120, 'ETAT', 'Service central d???un minist??re');
INSERT INTO list_forme_juridique VALUES (7150, 'ETAT', 'Service du minist??re de la D??fense');
INSERT INTO list_forme_juridique VALUES (7160, 'ETAT', 'Service d??concentr?? ?? comp??tence nationale d???un minist??re (hors D??fense)');
INSERT INTO list_forme_juridique VALUES (7171, 'ETAT', 'Service d??concentr?? de l?????tat ?? comp??tence (inter) r??gionale');
INSERT INTO list_forme_juridique VALUES (7172, 'ETAT', 'Service d??concentr?? de l?????tat ?? comp??tence (inter) d??partementale');
INSERT INTO list_forme_juridique VALUES (7179, 'ETAT', '(Autre) Service d??concentr?? de l?????tat ?? comp??tence territoriale');
INSERT INTO list_forme_juridique VALUES (7190, '', '??cole nationale non dot??e de la personnalit?? morale');
INSERT INTO list_forme_juridique VALUES (7210, 'COM', 'Commune et commune nouvelle');
INSERT INTO list_forme_juridique VALUES (7220, 'DEPT', 'D??partement');
INSERT INTO list_forme_juridique VALUES (7225, 'CTOM', 'Territoire d???Outre-mer');
INSERT INTO list_forme_juridique VALUES (7229, 'COLL', '(Autre) Collectivit?? territoriale');
INSERT INTO list_forme_juridique VALUES (7230, 'COLL', 'R??gion');
INSERT INTO list_forme_juridique VALUES (7312, '', 'Commune associ??e et commune d??l??gu??e');
INSERT INTO list_forme_juridique VALUES (7313, '', 'Section de commune');
INSERT INTO list_forme_juridique VALUES (7314, '', 'Ensemble urbain');
INSERT INTO list_forme_juridique VALUES (7321, 'ASS', 'Association syndicale autoris??e');
INSERT INTO list_forme_juridique VALUES (7322, 'AFU', 'Association fonci??re urbaine');
INSERT INTO list_forme_juridique VALUES (7323, 'AFR', 'Association fonci??re de remembrement');
INSERT INTO list_forme_juridique VALUES (7331, 'EP', '??tablissement public local d???enseignement');
INSERT INTO list_forme_juridique VALUES (7340, '', 'P??le m??tropolitain');
INSERT INTO list_forme_juridique VALUES (7341, '', 'Secteur de commune');
INSERT INTO list_forme_juridique VALUES (7342, 'DISU', 'District urbain');
INSERT INTO list_forme_juridique VALUES (7343, 'COMU', 'Communaut?? urbaine');
INSERT INTO list_forme_juridique VALUES (7344, '', 'M??tropole');
INSERT INTO list_forme_juridique VALUES (7345, 'SIVO', 'Syndicat intercommunal ?? vocation multiple (SIVOM)');
INSERT INTO list_forme_juridique VALUES (7346, 'CCOM', 'Communaut?? de communes');
INSERT INTO list_forme_juridique VALUES (7347, 'COVI', 'Communaut?? de villes');
INSERT INTO list_forme_juridique VALUES (7348, 'COAG', 'Communaut?? d???agglom??ration');
INSERT INTO list_forme_juridique VALUES (7349, '', 'Autre ??tablissement public local de coop??ration non sp??cialis?? ou entente');
INSERT INTO list_forme_juridique VALUES (7351, '', 'Institution interd??partementale ou entente');
INSERT INTO list_forme_juridique VALUES (7352, '', 'Institution interr??gionale ou entente');
INSERT INTO list_forme_juridique VALUES (7354, 'SYMC', 'Syndicat mixte ferm??');
INSERT INTO list_forme_juridique VALUES (7355, 'SYMI', 'Syndicat mixte ouvert');
INSERT INTO list_forme_juridique VALUES (7356, '', 'Commission syndicale pour la gestion des biens indivis des communes');
INSERT INTO list_forme_juridique VALUES (7357, 'PETR', 'P??le d?????quilibre territorial');
INSERT INTO list_forme_juridique VALUES (7361, 'CCAS', 'Centre communal d???action sociale');
INSERT INTO list_forme_juridique VALUES (7362, '', 'Caisse des ??coles');
INSERT INTO list_forme_juridique VALUES (7363, 'CCMU', 'Caisse de cr??dit municipal');
INSERT INTO list_forme_juridique VALUES (7364, '', '??tablissement d???hospitalisation');
INSERT INTO list_forme_juridique VALUES (7365, '', 'Syndicat inter hospitalier');
INSERT INTO list_forme_juridique VALUES (7366, '', '??tablissement public local social et m??dico-social');
INSERT INTO list_forme_juridique VALUES (7367, 'CIAS', 'Centre intercommunal d???action social');
INSERT INTO list_forme_juridique VALUES (7371, 'OHLM', 'Office public d???habitation ?? loyer mod??r?? (OPHLM)');
INSERT INTO list_forme_juridique VALUES (7372, 'SDIS', 'Service d??partemental d???incendie');
INSERT INTO list_forme_juridique VALUES (7373, 'EP', '??tablissement public local culturel et de secours');
INSERT INTO list_forme_juridique VALUES (7378, 'EPA', 'R??gie d???une collectivit?? locale ?? caract??re administratif');
INSERT INTO list_forme_juridique VALUES (7379, 'EPA', '(Autre) ??tablissement public administratif local');
INSERT INTO list_forme_juridique VALUES (7381, 'EPA', 'Organisme consulaire');
INSERT INTO list_forme_juridique VALUES (7382, 'EPA', '??tablissement public national ayant fonction d???administration centrale');
INSERT INTO list_forme_juridique VALUES (7383, 'EPA', '??tablissement public national ?? caract??re scientifique culturel et professionnel');
INSERT INTO list_forme_juridique VALUES (7384, 'EPA', 'Autre ??tablissement public national d???enseignement');
INSERT INTO list_forme_juridique VALUES (7385, 'EPA', 'Autre ??tablissement public national administratif ?? comp??tence territoriale limit??e');
INSERT INTO list_forme_juridique VALUES (7389, 'EPA', '??tablissement public national ?? caract??re administratif');
INSERT INTO list_forme_juridique VALUES (7410, 'GIP', 'Groupement d???int??r??t public (GIP)');
INSERT INTO list_forme_juridique VALUES (7430, 'EPA', '??tablissement public des cultes d???Alsace-Lorraine');
INSERT INTO list_forme_juridique VALUES (7450, 'EPA', '??tablissement public administratif, cercle et foyer dans les arm??es');
INSERT INTO list_forme_juridique VALUES (7470, 'GCS', 'Groupement de coop??ration sanitaire ?? gestion publique');
INSERT INTO list_forme_juridique VALUES (7490, '', 'Autre personne morale de droit administratif');
INSERT INTO list_forme_juridique VALUES (7510, '', 'Service d???une collectivit?? locale ?? comptabilit?? distincte');
INSERT INTO list_forme_juridique VALUES (7520, '', 'R??gie d???une collectivit?? locale non dot??e de la personnalit?? morale');
INSERT INTO list_forme_juridique VALUES (8110, 'SSRG', 'R??gime g??n??ral de la S??curit?? Sociale');
INSERT INTO list_forme_juridique VALUES (8120, 'SSRS', 'R??gime sp??cial de S??curit?? Sociale');
INSERT INTO list_forme_juridique VALUES (8130, 'IRC', 'Institution de retraite compl??mentaire');
INSERT INTO list_forme_juridique VALUES (8140, 'MSA', 'Mutualit?? sociale agricole');
INSERT INTO list_forme_juridique VALUES (8150, '', 'R??gime maladie des non-salari??s non agricoles');
INSERT INTO list_forme_juridique VALUES (8160, '', 'R??gime vieillesse ne d??pendant pas du r??gime g??n??ral de la S??curit?? Sociale');
INSERT INTO list_forme_juridique VALUES (8170, '', 'R??gime d???assurance ch??mage');
INSERT INTO list_forme_juridique VALUES (8210, 'MUT', 'Mutuelle');
INSERT INTO list_forme_juridique VALUES (8250, 'MUT', 'Assurance mutuelle agricole');
INSERT INTO list_forme_juridique VALUES (8290, 'MUT', 'Autre organisme mutualiste');
INSERT INTO list_forme_juridique VALUES (8310, 'COME', 'Comit?? central d???entreprise');
INSERT INTO list_forme_juridique VALUES (8311, 'COME', 'Comit?? d?????tablissement');
INSERT INTO list_forme_juridique VALUES (8410, 'OPRO', 'Syndicat de salari??s');
INSERT INTO list_forme_juridique VALUES (8420, 'OPRO', 'Syndicat patronal');
INSERT INTO list_forme_juridique VALUES (8450, 'OPRO', 'Ordre professionnel ou assimil??');
INSERT INTO list_forme_juridique VALUES (8470, 'OPRO', 'Centre technique industriel ou comit?? professionnel du d??veloppement ??conomique');
INSERT INTO list_forme_juridique VALUES (8490, 'OPRO', 'Autre organisme professionnel');
INSERT INTO list_forme_juridique VALUES (8510, 'IP', 'Institution de pr??voyance');
INSERT INTO list_forme_juridique VALUES (8520, 'IRS', 'Institution de retraite suppl??mentaire');
INSERT INTO list_forme_juridique VALUES (9110, 'SYCO', 'Syndicat de copropri??t??');
INSERT INTO list_forme_juridique VALUES (9150, 'ASS', 'Association syndicale libre');
INSERT INTO list_forme_juridique VALUES (9210, 'ASS', 'Association non d??clar??e');
INSERT INTO list_forme_juridique VALUES (9220, 'ASS', 'Association d??clar??e');
INSERT INTO list_forme_juridique VALUES (9221, 'ASS', 'Association d??clar??e d???insertion par l?????conomique');
INSERT INTO list_forme_juridique VALUES (9222, 'ASS', 'Association interm??diaire');
INSERT INTO list_forme_juridique VALUES (9223, 'ASS', 'Groupement d???employeurs');
INSERT INTO list_forme_juridique VALUES (9230, 'ASS', 'Association d??clar??e, reconnue d???utilit?? publique');
INSERT INTO list_forme_juridique VALUES (9240, 'ASS', 'Congr??gation');
INSERT INTO list_forme_juridique VALUES (9260, 'ASS', 'Association de droit local (Bas-Rhin, Haut-Rhin et Moselle)');
INSERT INTO list_forme_juridique VALUES (9300, 'FON', 'Fondation');
INSERT INTO list_forme_juridique VALUES (9900, '', 'Autre personne morale de droit priv??');
INSERT INTO list_forme_juridique VALUES (9970, 'GCS', 'Groupement de coop??ration sanitaire ?? gestion priv??e');
--
-- TOC entry 5697 (class 0 OID 2860305)
-- Dependencies: 514
-- Data for Name: list_grp_pers_morale; Type: TABLE DATA; Schema:  Owner: -
--
INSERT INTO list_grp_pers_morale VALUES (0, 'personnes morales non remarquables');
INSERT INTO list_grp_pers_morale VALUES (1, '??tat');
INSERT INTO list_grp_pers_morale VALUES (2, 'r??gion');
INSERT INTO list_grp_pers_morale VALUES (3, 'd??partement');
INSERT INTO list_grp_pers_morale VALUES (4, 'commune');
INSERT INTO list_grp_pers_morale VALUES (5, 'office HLM');
INSERT INTO list_grp_pers_morale VALUES (6, 'personnes morales repr??sentant des soci??t??s d?????conomie mixte');
INSERT INTO list_grp_pers_morale VALUES (7, 'copropri??taires');
INSERT INTO list_grp_pers_morale VALUES (8, 'associ??s');
INSERT INTO list_grp_pers_morale VALUES (9, '??tablissements publics ou organismes associ??s');
--
-- TOC entry 5538 (class 2606 OID 2860077)
-- Name: list_code_de_droits list_code_de_droits_pk; Type: CONSTRAINT; Schema:  Owner: -
--
ALTER TABLE ONLY list_code_de_droits
    ADD CONSTRAINT list_code_de_droits_pk PRIMARY KEY (code);
--
-- TOC entry 5540 (class 2606 OID 2860075)
-- Name: list_code_et_abrev list_code_et_abrev_pk; Type: CONSTRAINT; Schema:  Owner: -
--
ALTER TABLE ONLY list_code_et_abrev
    ADD CONSTRAINT list_code_et_abrev_pk PRIMARY KEY (cnavoi);
--
-- TOC entry 5542 (class 2606 OID 2860079)
-- Name: list_forme_juridique list_forme_juridique_pk; Type: CONSTRAINT; Schema:  Owner: -
--
ALTER TABLE ONLY list_forme_juridique
    ADD CONSTRAINT list_forme_juridique_pk PRIMARY KEY (code);
--
-- TOC entry 5544 (class 2606 OID 2860309)
-- Name: list_grp_pers_morale list_grp_pers_morale_pk; Type: CONSTRAINT; Schema:  Owner: -
--
ALTER TABLE ONLY list_grp_pers_morale
    ADD CONSTRAINT list_grp_pers_morale_pk PRIMARY KEY (groupe);
-- Completed on 2021-04-12 21:31:32 CEST
--
-- PostgreSQL database dump complete
--
