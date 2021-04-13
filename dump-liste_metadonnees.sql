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
INSERT INTO list_code_de_droits VALUES ('P', 'Propriétaire');
INSERT INTO list_code_de_droits VALUES ('U', 'Usufruitier (associé avec N)');
INSERT INTO list_code_de_droits VALUES ('N', 'Nu-propriétaire (associé avec U)');
INSERT INTO list_code_de_droits VALUES ('B', 'Bailleur à construction (associé avec R)');
INSERT INTO list_code_de_droits VALUES ('R', 'Preneur à construction (associé avec B)');
INSERT INTO list_code_de_droits VALUES ('F', 'Foncier (associé avec D ou T)');
INSERT INTO list_code_de_droits VALUES ('T', 'Tenuyer (associé avec F)');
INSERT INTO list_code_de_droits VALUES ('D', 'Domanier (associé avec F)');
INSERT INTO list_code_de_droits VALUES ('V', 'Bailleur d’un bail à réhabilitation (associé avec W)');
INSERT INTO list_code_de_droits VALUES ('W', 'Preneur d’un bail à réhabilitation (associé avec V)');
INSERT INTO list_code_de_droits VALUES ('A', 'Locataire-Attributaire (associé avec P)');
INSERT INTO list_code_de_droits VALUES ('E', 'Emphytéote (associé avec P)');
INSERT INTO list_code_de_droits VALUES ('K', 'Antichrésiste (associé avec P)');
INSERT INTO list_code_de_droits VALUES ('L', 'Fonctionnaire logé');
INSERT INTO list_code_de_droits VALUES ('G', 'Gérant, mandataire, gestionnaire');
INSERT INTO list_code_de_droits VALUES ('H', 'Associé dans une société en transparence fiscale (associé avec P)');
INSERT INTO list_code_de_droits VALUES ('O', 'Autorisation d’occupation temporaire (70 ans)');
INSERT INTO list_code_de_droits VALUES ('J', 'Jeune agriculteur');
INSERT INTO list_code_de_droits VALUES ('Q', 'Gestionnaire taxe sur les bureaux (Île-de-France)');
INSERT INTO list_code_de_droits VALUES ('X', 'La Poste Occupant et propriétaire');
INSERT INTO list_code_de_droits VALUES ('Y', 'La Poste Occupant et non propriétaire');
INSERT INTO list_code_de_droits VALUES ('C', 'Fiduciaire');
INSERT INTO list_code_de_droits VALUES ('M', 'Occupant d’une parcelle appartenant au département de Mayotte ou à l’État (associé à P)');
--
-- TOC entry 5695 (class 0 OID 2859833)
-- Dependencies: 512
-- Data for Name: list_code_et_abrev; Type: TABLE DATA; Schema:  Owner: -
--
INSERT INTO list_code_et_abrev VALUES ('AER', 'Aérodrome');
INSERT INTO list_code_et_abrev VALUES ('AERG', 'Aérogare');
INSERT INTO list_code_et_abrev VALUES ('AGL', 'Agglomération');
INSERT INTO list_code_et_abrev VALUES ('AIRE', 'Aire');
INSERT INTO list_code_et_abrev VALUES ('ALL', 'Allée');
INSERT INTO list_code_et_abrev VALUES ('ACH', 'Ancien chemin');
INSERT INTO list_code_et_abrev VALUES ('ART', 'Ancienne route');
INSERT INTO list_code_et_abrev VALUES ('ANGL', 'Angle');
INSERT INTO list_code_et_abrev VALUES ('ARC', 'Arcade');
INSERT INTO list_code_et_abrev VALUES ('AUT', 'Autoroute');
INSERT INTO list_code_et_abrev VALUES ('AV', 'Avenue');
INSERT INTO list_code_et_abrev VALUES ('BRE', 'Barrière');
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
INSERT INTO list_code_et_abrev VALUES ('CARE', 'Carrière');
INSERT INTO list_code_et_abrev VALUES ('CASR', 'Caserne');
INSERT INTO list_code_et_abrev VALUES ('CTRE', 'Centre');
INSERT INTO list_code_et_abrev VALUES ('CHL', 'Chalet');
INSERT INTO list_code_et_abrev VALUES ('CHP', 'Champ');
INSERT INTO list_code_et_abrev VALUES ('CHA', 'Chasse');
INSERT INTO list_code_et_abrev VALUES ('CHT', 'Château');
INSERT INTO list_code_et_abrev VALUES ('CHS', 'Chaussée');
INSERT INTO list_code_et_abrev VALUES ('CHE', 'Chemin');
INSERT INTO list_code_et_abrev VALUES ('CHEM', 'Cheminement');
INSERT INTO list_code_et_abrev VALUES ('CC', 'Chemin communal');
INSERT INTO list_code_et_abrev VALUES ('CD', 'Chemin départemental');
INSERT INTO list_code_et_abrev VALUES ('CR', 'Chemin rural');
INSERT INTO list_code_et_abrev VALUES ('CF', 'Chemin forestier');
INSERT INTO list_code_et_abrev VALUES ('CHV', 'Chemin vicinal');
INSERT INTO list_code_et_abrev VALUES ('CITE', 'Cité');
INSERT INTO list_code_et_abrev VALUES ('CLOS', 'Clos');
INSERT INTO list_code_et_abrev VALUES ('COIN', 'Coin');
INSERT INTO list_code_et_abrev VALUES ('COL', 'Col');
INSERT INTO list_code_et_abrev VALUES ('CTR', 'Contour');
INSERT INTO list_code_et_abrev VALUES ('COR', 'Corniche');
INSERT INTO list_code_et_abrev VALUES ('CORO', 'Coron');
INSERT INTO list_code_et_abrev VALUES ('COTE', 'Côte');
INSERT INTO list_code_et_abrev VALUES ('CLR', 'Couloir');
INSERT INTO list_code_et_abrev VALUES ('COUR', 'Cour');
INSERT INTO list_code_et_abrev VALUES ('CRS', 'Cours');
INSERT INTO list_code_et_abrev VALUES ('CIVE', 'Coursive');
INSERT INTO list_code_et_abrev VALUES ('CRX', 'Croix');
INSERT INTO list_code_et_abrev VALUES ('DARS', 'Darse, darce');
INSERT INTO list_code_et_abrev VALUES ('DSC', 'Descente');
INSERT INTO list_code_et_abrev VALUES ('DEVI', 'Déviation');
INSERT INTO list_code_et_abrev VALUES ('DIG', 'Digue');
INSERT INTO list_code_et_abrev VALUES ('DOM', 'Domaine');
INSERT INTO list_code_et_abrev VALUES ('DRA', 'Draille');
INSERT INTO list_code_et_abrev VALUES ('ECA', 'Écart');
INSERT INTO list_code_et_abrev VALUES ('ECL', 'Écluse');
INSERT INTO list_code_et_abrev VALUES ('EMBR', 'Embranchement');
INSERT INTO list_code_et_abrev VALUES ('EMP', 'Emplacement');
INSERT INTO list_code_et_abrev VALUES ('ENV', 'Enclave');
INSERT INTO list_code_et_abrev VALUES ('ENC', 'Enclos');
INSERT INTO list_code_et_abrev VALUES ('ESC', 'Escalier');
INSERT INTO list_code_et_abrev VALUES ('ESPA', 'Espace');
INSERT INTO list_code_et_abrev VALUES ('ESP', 'Esplanade');
INSERT INTO list_code_et_abrev VALUES ('ETNG', 'Étang');
INSERT INTO list_code_et_abrev VALUES ('FG', 'Faubourg');
INSERT INTO list_code_et_abrev VALUES ('FRM', 'Ferme');
INSERT INTO list_code_et_abrev VALUES ('FD', 'Fond');
INSERT INTO list_code_et_abrev VALUES ('FON', 'Fontaine');
INSERT INTO list_code_et_abrev VALUES ('FOR', 'Forêt');
INSERT INTO list_code_et_abrev VALUES ('FORT', 'Fort');
INSERT INTO list_code_et_abrev VALUES ('FOS', 'Fosse');
INSERT INTO list_code_et_abrev VALUES ('GAL', 'Galerie');
INSERT INTO list_code_et_abrev VALUES ('GARE', 'Gare');
INSERT INTO list_code_et_abrev VALUES ('GBD', 'Grand boulevard');
INSERT INTO list_code_et_abrev VALUES ('GPL', 'Grande place');
INSERT INTO list_code_et_abrev VALUES ('GR', 'Grande rue');
INSERT INTO list_code_et_abrev VALUES ('GREV', 'Grève');
INSERT INTO list_code_et_abrev VALUES ('HAB', 'Habitation');
INSERT INTO list_code_et_abrev VALUES ('HLG', 'Halage');
INSERT INTO list_code_et_abrev VALUES ('HLE', 'Halle');
INSERT INTO list_code_et_abrev VALUES ('HAM', 'Hameau');
INSERT INTO list_code_et_abrev VALUES ('HTR', 'Hauteur');
INSERT INTO list_code_et_abrev VALUES ('HIP', 'Hippodrome');
INSERT INTO list_code_et_abrev VALUES ('HLM', 'HLM');
INSERT INTO list_code_et_abrev VALUES ('ILE', 'Île');
INSERT INTO list_code_et_abrev VALUES ('ILOT', 'Îlot');
INSERT INTO list_code_et_abrev VALUES ('IMP', 'Impasse');
INSERT INTO list_code_et_abrev VALUES ('JARD', 'Jardin');
INSERT INTO list_code_et_abrev VALUES ('JTE', 'Jetée');
INSERT INTO list_code_et_abrev VALUES ('LAC', 'Lac');
INSERT INTO list_code_et_abrev VALUES ('LEVE', 'Levée');
INSERT INTO list_code_et_abrev VALUES ('LICE', 'Lices');
INSERT INTO list_code_et_abrev VALUES ('LIGN', 'Ligne');
INSERT INTO list_code_et_abrev VALUES ('LOT', 'Lotissement');
INSERT INTO list_code_et_abrev VALUES ('MAIL', 'Mail');
INSERT INTO list_code_et_abrev VALUES ('MAIS', 'Maison');
INSERT INTO list_code_et_abrev VALUES ('MAR', 'Marche');
INSERT INTO list_code_et_abrev VALUES ('MARE', 'Mare');
INSERT INTO list_code_et_abrev VALUES ('MRN', 'Marina');
INSERT INTO list_code_et_abrev VALUES ('MAS', 'Mas');
INSERT INTO list_code_et_abrev VALUES ('MTE', 'Montée');
INSERT INTO list_code_et_abrev VALUES ('MNE', 'Morne');
INSERT INTO list_code_et_abrev VALUES ('NTE', 'Nouvelle route');
INSERT INTO list_code_et_abrev VALUES ('PARC', 'Parc');
INSERT INTO list_code_et_abrev VALUES ('PKG', 'Parking');
INSERT INTO list_code_et_abrev VALUES ('PRV', 'Parvis');
INSERT INTO list_code_et_abrev VALUES ('PAS', 'Passage');
INSERT INTO list_code_et_abrev VALUES ('PASS', 'Passe');
INSERT INTO list_code_et_abrev VALUES ('PLE', 'Passerelle');
INSERT INTO list_code_et_abrev VALUES ('PCH', 'Petit chemin');
INSERT INTO list_code_et_abrev VALUES ('PTA', 'Petite allée');
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
INSERT INTO list_code_et_abrev VALUES ('RES', 'Résidence');
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
INSERT INTO list_code_et_abrev VALUES ('VALL', 'Vallon, vallée');
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
INSERT INTO list_code_et_abrev VALUES ('VOUT', 'Voûte');
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
INSERT INTO list_forme_juridique VALUES (3110, '', 'Représentation ou agence commerciale d’état ou organisme public étranger immatriculé au RCS');
INSERT INTO list_forme_juridique VALUES (3120, 'STE', 'Société commerciale étrangère immatriculée au RCS');
INSERT INTO list_forme_juridique VALUES (3205, '', 'Organisation internationale');
INSERT INTO list_forme_juridique VALUES (3210, '', 'État, collectivité ou établissement public étranger');
INSERT INTO list_forme_juridique VALUES (3220, 'STE', 'Société étrangère non immatriculée au RCS');
INSERT INTO list_forme_juridique VALUES (3290, '', 'Autre personne morale de droit étranger');
INSERT INTO list_forme_juridique VALUES (4110, 'EPIC', 'Établissement public national à caractère industriel ou commercial doté d’un comptable public');
INSERT INTO list_forme_juridique VALUES (4120, 'EPIC', 'Établissement public national à caractère industriel ou commercial non doté d’un comptable public');
INSERT INTO list_forme_juridique VALUES (4130, '', 'Exploitant public');
INSERT INTO list_forme_juridique VALUES (4140, 'EPIC', 'Établissement public local à caractère industriel ou commercial');
INSERT INTO list_forme_juridique VALUES (4150, 'REGI', 'Régie d’une collectivité locale à caractère industriel ou commercial');
INSERT INTO list_forme_juridique VALUES (4160, 'BDF', 'Institution Banque de France');
INSERT INTO list_forme_juridique VALUES (5191, 'SCCP', 'Société de caution mutuelle');
INSERT INTO list_forme_juridique VALUES (5192, 'SCCP', 'Société coopérative de banque populaire');
INSERT INTO list_forme_juridique VALUES (5193, 'SCCP', 'Caisse de crédit maritime mutuel');
INSERT INTO list_forme_juridique VALUES (5194, 'SCCP', 'Caisse (fédérale) de crédit mutuel');
INSERT INTO list_forme_juridique VALUES (5195, 'SCCP', 'Association coopérative inscrite (droit local Alsace Moselle)');
INSERT INTO list_forme_juridique VALUES (5196, 'SCCP', 'Caisse d’épargne et de prévoyance à forme coopérative');
INSERT INTO list_forme_juridique VALUES (5202, 'SNC', 'Société en nom collectif');
INSERT INTO list_forme_juridique VALUES (5203, 'SNC', 'Société en nom collectif coopérative');
INSERT INTO list_forme_juridique VALUES (5307, 'SCOM', 'Société en commandite simple coopérative');
INSERT INTO list_forme_juridique VALUES (5308, 'SCOM', 'Société en commandite par actions');
INSERT INTO list_forme_juridique VALUES (5309, 'SCOM', 'Société en commandite par actions coopérative');
INSERT INTO list_forme_juridique VALUES (5370, 'SCOM', 'Société de participations financières de profession libérale société en commandite par action');
INSERT INTO list_forme_juridique VALUES (5385, 'SCOM', 'Société d’exercice libéral en commandite par actions');
INSERT INTO list_forme_juridique VALUES (5410, 'SARL', 'SARL nationale');
INSERT INTO list_forme_juridique VALUES (5415, 'SARL', 'SARL d’économie mixte');
INSERT INTO list_forme_juridique VALUES (5422, 'SARL', 'SARL immobilière pour le commerce et l’industrie (SICOMI)');
INSERT INTO list_forme_juridique VALUES (5426, 'SARL', 'SARL immobilière de gestion');
INSERT INTO list_forme_juridique VALUES (5430, 'SARL', 'SARL d’aménagement foncier et d’équipement rural (SAFER)');
INSERT INTO list_forme_juridique VALUES (5431, 'SARL', 'SARL mixte d’intérêt agricole (SMIA)');
INSERT INTO list_forme_juridique VALUES (5432, 'SARL', 'SARL d’intérêt collectif agricole (SICA)');
INSERT INTO list_forme_juridique VALUES (5442, 'SARL', 'SARL d’attribution');
INSERT INTO list_forme_juridique VALUES (5443, 'SARL', 'SARL coopérative de construction');
INSERT INTO list_forme_juridique VALUES (5451, 'SARL', 'SARL coopérative de consommation');
INSERT INTO list_forme_juridique VALUES (5453, 'SARL', 'SARL coopérative artisanale');
INSERT INTO list_forme_juridique VALUES (5454, 'SARL', 'SARL coopérative d’intérêt maritime');
INSERT INTO list_forme_juridique VALUES (5455, 'SARL', 'SARL coopérative de transport');
INSERT INTO list_forme_juridique VALUES (5458, 'SARL', 'SARL coopérative ouvrière de production et de crédit (SCOP)');
INSERT INTO list_forme_juridique VALUES (5459, 'SARL', 'SARL union de sociétés coopératives');
INSERT INTO list_forme_juridique VALUES (5460, 'SARL', 'Autre SARL coopérative');
INSERT INTO list_forme_juridique VALUES (5470, 'SARL', 'Société de participations financières de profession libérale société à responsabilité limitée');
INSERT INTO list_forme_juridique VALUES (5485, 'SLRL', 'Société d’exercice libéral à responsabilité limitée');
INSERT INTO list_forme_juridique VALUES (5499, 'SARL', 'Société à responsabilité limitée (sans autre indication)');
INSERT INTO list_forme_juridique VALUES (5505, 'SA', 'SA à participation ouvrière à conseil d’administration');
INSERT INTO list_forme_juridique VALUES (5510, 'SA', 'SA nationale à conseil d’administration');
INSERT INTO list_forme_juridique VALUES (5515, 'SEM', 'SA d’économie mixte à conseil d’administration');
INSERT INTO list_forme_juridique VALUES (5520, 'STE', 'Fond à forme sociétale à conseil d’administration');
INSERT INTO list_forme_juridique VALUES (5522, 'STE', 'SA immobilière pour le commerce et l’industrie (SICOMI) à conseil d’administration');
INSERT INTO list_forme_juridique VALUES (5525, 'SA', 'SA immobilière d’investissement à conseil d’administration');
INSERT INTO list_forme_juridique VALUES (5530, '', 'SA d’aménagement foncier et d’équipement rural (SAFER) à conseil d’administration');
INSERT INTO list_forme_juridique VALUES (5531, 'SA', 'Société anonyme mixte d’intérêt agricole (SMIA) à conseil d’administration');
INSERT INTO list_forme_juridique VALUES (5532, 'SICA', 'SA d’intérêt collectif agricole (SICA) à conseil d’administration');
INSERT INTO list_forme_juridique VALUES (5542, 'SA', 'SA d’attribution à conseil d’administration');
INSERT INTO list_forme_juridique VALUES (5543, 'SA', 'SA coopérative de construction à conseil d’administration');
INSERT INTO list_forme_juridique VALUES (5546, 'SA', 'SA de HLM à conseil d’administration');
INSERT INTO list_forme_juridique VALUES (5548, 'SA', 'SA de crédit immobilier à conseil d’administration');
INSERT INTO list_forme_juridique VALUES (5551, 'SA', 'SA coopérative de consommation à conseil d’administration');
INSERT INTO list_forme_juridique VALUES (5552, 'SA', 'SA coopérative de commerçants-détaillants à conseil d’administration');
INSERT INTO list_forme_juridique VALUES (5553, 'SA', 'SA coopérative artisanale à conseil d’administration');
INSERT INTO list_forme_juridique VALUES (5554, 'SA', 'SA coopérative (d’intérêt) maritime à conseil d’administration');
INSERT INTO list_forme_juridique VALUES (5555, 'SA', 'SA coopérative de transport à conseil d’administration');
INSERT INTO list_forme_juridique VALUES (5558, 'SCOP', 'SA coopérative ouvrière de production et de crédit (SCOP) à conseil d’administration');
INSERT INTO list_forme_juridique VALUES (5559, 'SA', 'SA union de sociétés coopératives à conseil d’administration');
INSERT INTO list_forme_juridique VALUES (5560, 'SA', 'Autre SA coopérative à conseil d’administration');
INSERT INTO list_forme_juridique VALUES (5570, 'SA', 'Société de participations financières de profession libérale société anonyme à conseil d’administration');
INSERT INTO list_forme_juridique VALUES (5585, 'STE', 'Société d’exercice libéral à forme anonyme à conseil d’administration');
INSERT INTO list_forme_juridique VALUES (5599, 'SA', 'SA à conseil d’administration (s.a.i.)');
INSERT INTO list_forme_juridique VALUES (5605, 'SA', 'SA à participation ouvrière à directoire');
INSERT INTO list_forme_juridique VALUES (5610, 'SA', 'SA nationale à directoire');
INSERT INTO list_forme_juridique VALUES (5615, 'SA', 'SA d’économie mixte à directoire');
INSERT INTO list_forme_juridique VALUES (5620, 'STE', 'Fond à forme sociétale à directoire');
INSERT INTO list_forme_juridique VALUES (5622, 'STE', 'SA immobilière pour le commerce et l’industrie (SICOMI) à directoire');
INSERT INTO list_forme_juridique VALUES (5625, 'STE', 'SA immobilière d’investissement à directoire');
INSERT INTO list_forme_juridique VALUES (5630, '', 'SAFER anonyme à directoire');
INSERT INTO list_forme_juridique VALUES (5631, 'SA', 'SA mixte d’intérêt agricole (SMIA)');
INSERT INTO list_forme_juridique VALUES (5632, 'SA', 'SA d’intérêt collectif agricole (SICA)');
INSERT INTO list_forme_juridique VALUES (5642, 'SA', 'SA d’attribution à directoire');
INSERT INTO list_forme_juridique VALUES (5643, 'SA', 'SA coopérative de construction à directoire');
INSERT INTO list_forme_juridique VALUES (5646, 'SA', 'SA de HLM à directoire');
INSERT INTO list_forme_juridique VALUES (5647, 'STE', 'Société coopérative de production de HLM anonyme à directoire');
INSERT INTO list_forme_juridique VALUES (5648, 'SA', 'SA de crédit immobilier à directoire');
INSERT INTO list_forme_juridique VALUES (5651, 'SA', 'SA coopérative de consommation à directoire');
INSERT INTO list_forme_juridique VALUES (5652, 'SA', 'SA coopérative de commerçants-détaillants à directoire');
INSERT INTO list_forme_juridique VALUES (5653, 'SA', 'SA coopérative artisanale à directoire');
INSERT INTO list_forme_juridique VALUES (5654, 'SA', 'SA coopérative d’intérêt maritime à directoire');
INSERT INTO list_forme_juridique VALUES (5655, 'SA', 'SA coopérative de transport à directoire');
INSERT INTO list_forme_juridique VALUES (5658, 'SCOP', 'SA coopérative ouvrière de production et de crédit (SCOP) à directoire');
INSERT INTO list_forme_juridique VALUES (5659, 'SA', 'SA union de sociétés coopératives à directoire');
INSERT INTO list_forme_juridique VALUES (5660, 'SA', 'Autre SA coopérative à directoire');
INSERT INTO list_forme_juridique VALUES (5699, 'SA', 'SA à directoire (s.a.i.)');
INSERT INTO list_forme_juridique VALUES (5770, 'SAS', 'Société de participations financières de profession libérale société par actions simplifiée');
INSERT INTO list_forme_juridique VALUES (5800, 'SE', 'Société européenne');
INSERT INTO list_forme_juridique VALUES (6100, 'CEP', 'Caisse d’Épargne et de Prévoyance');
INSERT INTO list_forme_juridique VALUES (6210, 'GIE', 'Groupement européen d’intérêt économique (GEIE)');
INSERT INTO list_forme_juridique VALUES (6220, 'GIE', 'Groupement d’intérêt économique (GIE)');
INSERT INTO list_forme_juridique VALUES (6316, 'CUMA', 'Coopérative d’utilisation de matériel agricole en commun (CUMA)');
INSERT INTO list_forme_juridique VALUES (6317, 'SCA', 'Société coopérative agricole');
INSERT INTO list_forme_juridique VALUES (6318, 'SCA', 'Union de sociétés coopératives agricoles');
INSERT INTO list_forme_juridique VALUES (6411, 'SAM', 'Société d’assurance à forme mutuelle');
INSERT INTO list_forme_juridique VALUES (6412, 'SAM', 'Société mutuelle d’assurance');
INSERT INTO list_forme_juridique VALUES (6413, 'SAM', 'Union de sociétés mutuelles d’assurances');
INSERT INTO list_forme_juridique VALUES (6414, 'SAM', 'Autre société non commerciale d’assurance');
INSERT INTO list_forme_juridique VALUES (6511, 'STE', 'Société interprofessionnelle de soins ambulatoires');
INSERT INTO list_forme_juridique VALUES (6521, 'SCPI', 'Société civile de placement collectif immobilier (SCPI)');
INSERT INTO list_forme_juridique VALUES (6532, 'SICA', 'Société civile d’intérêt collectif agricole (SICA)');
INSERT INTO list_forme_juridique VALUES (6533, 'GAEC', 'Groupement agricole d’exploitation en commun (GAEC)');
INSERT INTO list_forme_juridique VALUES (6534, 'GFA', 'Groupement foncier agricole');
INSERT INTO list_forme_juridique VALUES (6535, 'GAF', 'Groupement agricole foncier');
INSERT INTO list_forme_juridique VALUES (6536, 'GFO', 'Groupement forestier');
INSERT INTO list_forme_juridique VALUES (6537, 'GPAS', 'Groupement pastoral');
INSERT INTO list_forme_juridique VALUES (6538, 'GFR', 'Groupement foncier et rural');
INSERT INTO list_forme_juridique VALUES (6539, 'STE', 'Société civile foncière');
INSERT INTO list_forme_juridique VALUES (6540, 'SCI', 'Société civile immobilière');
INSERT INTO list_forme_juridique VALUES (6541, 'SCI', 'Société civile immobilière de construction-vente');
INSERT INTO list_forme_juridique VALUES (6542, 'SC', 'Société civile d’attribution');
INSERT INTO list_forme_juridique VALUES (6543, 'SC', 'Société civile coopérative de construction');
INSERT INTO list_forme_juridique VALUES (6544, 'SCI', 'Société civile immobilière d’accession progressive à la propriété');
INSERT INTO list_forme_juridique VALUES (6551, 'SC', 'Société civile coopérative de consommation');
INSERT INTO list_forme_juridique VALUES (6554, 'SC', 'Société civile coopérative d’intérêt maritime');
INSERT INTO list_forme_juridique VALUES (6558, 'SC', 'Société civile coopérative entre médecins');
INSERT INTO list_forme_juridique VALUES (6560, 'SC', 'Autre société civile coopérative');
INSERT INTO list_forme_juridique VALUES (6588, 'SCM', 'Société civile laitière');
INSERT INTO list_forme_juridique VALUES (6589, 'CCM', 'Société civile de moyens');
INSERT INTO list_forme_juridique VALUES (6595, 'CCAM', 'Caisse locale de crédit mutuel');
INSERT INTO list_forme_juridique VALUES (6596, 'SCEA', 'Caisse de crédit agricole mutuel');
INSERT INTO list_forme_juridique VALUES (6597, 'EARL', 'Société civile d’exploitation agricole');
INSERT INTO list_forme_juridique VALUES (6599, '', 'Autre société civile');
INSERT INTO list_forme_juridique VALUES (6901, '', 'Autre personne de droit privé inscrite au registre du commerce et des sociétés');
INSERT INTO list_forme_juridique VALUES (7111, '', 'Autorité constitutionnelle');
INSERT INTO list_forme_juridique VALUES (7112, 'ETAT', 'Autorité administrative ou publique indépendante');
INSERT INTO list_forme_juridique VALUES (7113, 'ETAT', 'Ministère');
INSERT INTO list_forme_juridique VALUES (7120, 'ETAT', 'Service central d’un ministère');
INSERT INTO list_forme_juridique VALUES (7150, 'ETAT', 'Service du ministère de la Défense');
INSERT INTO list_forme_juridique VALUES (7160, 'ETAT', 'Service déconcentré à compétence nationale d’un ministère (hors Défense)');
INSERT INTO list_forme_juridique VALUES (7171, 'ETAT', 'Service déconcentré de l’État à compétence (inter) régionale');
INSERT INTO list_forme_juridique VALUES (7172, 'ETAT', 'Service déconcentré de l’État à compétence (inter) départementale');
INSERT INTO list_forme_juridique VALUES (7179, 'ETAT', '(Autre) Service déconcentré de l’État à compétence territoriale');
INSERT INTO list_forme_juridique VALUES (7190, '', 'École nationale non dotée de la personnalité morale');
INSERT INTO list_forme_juridique VALUES (7210, 'COM', 'Commune et commune nouvelle');
INSERT INTO list_forme_juridique VALUES (7220, 'DEPT', 'Département');
INSERT INTO list_forme_juridique VALUES (7225, 'CTOM', 'Territoire d’Outre-mer');
INSERT INTO list_forme_juridique VALUES (7229, 'COLL', '(Autre) Collectivité territoriale');
INSERT INTO list_forme_juridique VALUES (7230, 'COLL', 'Région');
INSERT INTO list_forme_juridique VALUES (7312, '', 'Commune associée et commune déléguée');
INSERT INTO list_forme_juridique VALUES (7313, '', 'Section de commune');
INSERT INTO list_forme_juridique VALUES (7314, '', 'Ensemble urbain');
INSERT INTO list_forme_juridique VALUES (7321, 'ASS', 'Association syndicale autorisée');
INSERT INTO list_forme_juridique VALUES (7322, 'AFU', 'Association foncière urbaine');
INSERT INTO list_forme_juridique VALUES (7323, 'AFR', 'Association foncière de remembrement');
INSERT INTO list_forme_juridique VALUES (7331, 'EP', 'Établissement public local d’enseignement');
INSERT INTO list_forme_juridique VALUES (7340, '', 'Pôle métropolitain');
INSERT INTO list_forme_juridique VALUES (7341, '', 'Secteur de commune');
INSERT INTO list_forme_juridique VALUES (7342, 'DISU', 'District urbain');
INSERT INTO list_forme_juridique VALUES (7343, 'COMU', 'Communauté urbaine');
INSERT INTO list_forme_juridique VALUES (7344, '', 'Métropole');
INSERT INTO list_forme_juridique VALUES (7345, 'SIVO', 'Syndicat intercommunal à vocation multiple (SIVOM)');
INSERT INTO list_forme_juridique VALUES (7346, 'CCOM', 'Communauté de communes');
INSERT INTO list_forme_juridique VALUES (7347, 'COVI', 'Communauté de villes');
INSERT INTO list_forme_juridique VALUES (7348, 'COAG', 'Communauté d’agglomération');
INSERT INTO list_forme_juridique VALUES (7349, '', 'Autre établissement public local de coopération non spécialisé ou entente');
INSERT INTO list_forme_juridique VALUES (7351, '', 'Institution interdépartementale ou entente');
INSERT INTO list_forme_juridique VALUES (7352, '', 'Institution interrégionale ou entente');
INSERT INTO list_forme_juridique VALUES (7354, 'SYMC', 'Syndicat mixte fermé');
INSERT INTO list_forme_juridique VALUES (7355, 'SYMI', 'Syndicat mixte ouvert');
INSERT INTO list_forme_juridique VALUES (7356, '', 'Commission syndicale pour la gestion des biens indivis des communes');
INSERT INTO list_forme_juridique VALUES (7357, 'PETR', 'Pôle d’équilibre territorial');
INSERT INTO list_forme_juridique VALUES (7361, 'CCAS', 'Centre communal d’action sociale');
INSERT INTO list_forme_juridique VALUES (7362, '', 'Caisse des écoles');
INSERT INTO list_forme_juridique VALUES (7363, 'CCMU', 'Caisse de crédit municipal');
INSERT INTO list_forme_juridique VALUES (7364, '', 'Établissement d’hospitalisation');
INSERT INTO list_forme_juridique VALUES (7365, '', 'Syndicat inter hospitalier');
INSERT INTO list_forme_juridique VALUES (7366, '', 'Établissement public local social et médico-social');
INSERT INTO list_forme_juridique VALUES (7367, 'CIAS', 'Centre intercommunal d’action social');
INSERT INTO list_forme_juridique VALUES (7371, 'OHLM', 'Office public d’habitation à loyer modéré (OPHLM)');
INSERT INTO list_forme_juridique VALUES (7372, 'SDIS', 'Service départemental d’incendie');
INSERT INTO list_forme_juridique VALUES (7373, 'EP', 'Établissement public local culturel et de secours');
INSERT INTO list_forme_juridique VALUES (7378, 'EPA', 'Régie d’une collectivité locale à caractère administratif');
INSERT INTO list_forme_juridique VALUES (7379, 'EPA', '(Autre) Établissement public administratif local');
INSERT INTO list_forme_juridique VALUES (7381, 'EPA', 'Organisme consulaire');
INSERT INTO list_forme_juridique VALUES (7382, 'EPA', 'Établissement public national ayant fonction d’administration centrale');
INSERT INTO list_forme_juridique VALUES (7383, 'EPA', 'Établissement public national à caractère scientifique culturel et professionnel');
INSERT INTO list_forme_juridique VALUES (7384, 'EPA', 'Autre établissement public national d’enseignement');
INSERT INTO list_forme_juridique VALUES (7385, 'EPA', 'Autre établissement public national administratif à compétence territoriale limitée');
INSERT INTO list_forme_juridique VALUES (7389, 'EPA', 'Établissement public national à caractère administratif');
INSERT INTO list_forme_juridique VALUES (7410, 'GIP', 'Groupement d’intérêt public (GIP)');
INSERT INTO list_forme_juridique VALUES (7430, 'EPA', 'Établissement public des cultes d’Alsace-Lorraine');
INSERT INTO list_forme_juridique VALUES (7450, 'EPA', 'Établissement public administratif, cercle et foyer dans les armées');
INSERT INTO list_forme_juridique VALUES (7470, 'GCS', 'Groupement de coopération sanitaire à gestion publique');
INSERT INTO list_forme_juridique VALUES (7490, '', 'Autre personne morale de droit administratif');
INSERT INTO list_forme_juridique VALUES (7510, '', 'Service d’une collectivité locale à comptabilité distincte');
INSERT INTO list_forme_juridique VALUES (7520, '', 'Régie d’une collectivité locale non dotée de la personnalité morale');
INSERT INTO list_forme_juridique VALUES (8110, 'SSRG', 'Régime général de la Sécurité Sociale');
INSERT INTO list_forme_juridique VALUES (8120, 'SSRS', 'Régime spécial de Sécurité Sociale');
INSERT INTO list_forme_juridique VALUES (8130, 'IRC', 'Institution de retraite complémentaire');
INSERT INTO list_forme_juridique VALUES (8140, 'MSA', 'Mutualité sociale agricole');
INSERT INTO list_forme_juridique VALUES (8150, '', 'Régime maladie des non-salariés non agricoles');
INSERT INTO list_forme_juridique VALUES (8160, '', 'Régime vieillesse ne dépendant pas du régime général de la Sécurité Sociale');
INSERT INTO list_forme_juridique VALUES (8170, '', 'Régime d’assurance chômage');
INSERT INTO list_forme_juridique VALUES (8210, 'MUT', 'Mutuelle');
INSERT INTO list_forme_juridique VALUES (8250, 'MUT', 'Assurance mutuelle agricole');
INSERT INTO list_forme_juridique VALUES (8290, 'MUT', 'Autre organisme mutualiste');
INSERT INTO list_forme_juridique VALUES (8310, 'COME', 'Comité central d’entreprise');
INSERT INTO list_forme_juridique VALUES (8311, 'COME', 'Comité d’établissement');
INSERT INTO list_forme_juridique VALUES (8410, 'OPRO', 'Syndicat de salariés');
INSERT INTO list_forme_juridique VALUES (8420, 'OPRO', 'Syndicat patronal');
INSERT INTO list_forme_juridique VALUES (8450, 'OPRO', 'Ordre professionnel ou assimilé');
INSERT INTO list_forme_juridique VALUES (8470, 'OPRO', 'Centre technique industriel ou comité professionnel du développement économique');
INSERT INTO list_forme_juridique VALUES (8490, 'OPRO', 'Autre organisme professionnel');
INSERT INTO list_forme_juridique VALUES (8510, 'IP', 'Institution de prévoyance');
INSERT INTO list_forme_juridique VALUES (8520, 'IRS', 'Institution de retraite supplémentaire');
INSERT INTO list_forme_juridique VALUES (9110, 'SYCO', 'Syndicat de copropriété');
INSERT INTO list_forme_juridique VALUES (9150, 'ASS', 'Association syndicale libre');
INSERT INTO list_forme_juridique VALUES (9210, 'ASS', 'Association non déclarée');
INSERT INTO list_forme_juridique VALUES (9220, 'ASS', 'Association déclarée');
INSERT INTO list_forme_juridique VALUES (9221, 'ASS', 'Association déclarée d’insertion par l’économique');
INSERT INTO list_forme_juridique VALUES (9222, 'ASS', 'Association intermédiaire');
INSERT INTO list_forme_juridique VALUES (9223, 'ASS', 'Groupement d’employeurs');
INSERT INTO list_forme_juridique VALUES (9230, 'ASS', 'Association déclarée, reconnue d’utilité publique');
INSERT INTO list_forme_juridique VALUES (9240, 'ASS', 'Congrégation');
INSERT INTO list_forme_juridique VALUES (9260, 'ASS', 'Association de droit local (Bas-Rhin, Haut-Rhin et Moselle)');
INSERT INTO list_forme_juridique VALUES (9300, 'FON', 'Fondation');
INSERT INTO list_forme_juridique VALUES (9900, '', 'Autre personne morale de droit privé');
INSERT INTO list_forme_juridique VALUES (9970, 'GCS', 'Groupement de coopération sanitaire à gestion privée');
--
-- TOC entry 5697 (class 0 OID 2860305)
-- Dependencies: 514
-- Data for Name: list_grp_pers_morale; Type: TABLE DATA; Schema:  Owner: -
--
INSERT INTO list_grp_pers_morale VALUES (0, 'personnes morales non remarquables');
INSERT INTO list_grp_pers_morale VALUES (1, 'État');
INSERT INTO list_grp_pers_morale VALUES (2, 'région');
INSERT INTO list_grp_pers_morale VALUES (3, 'département');
INSERT INTO list_grp_pers_morale VALUES (4, 'commune');
INSERT INTO list_grp_pers_morale VALUES (5, 'office HLM');
INSERT INTO list_grp_pers_morale VALUES (6, 'personnes morales représentant des sociétés d’économie mixte');
INSERT INTO list_grp_pers_morale VALUES (7, 'copropriétaires');
INSERT INTO list_grp_pers_morale VALUES (8, 'associés');
INSERT INTO list_grp_pers_morale VALUES (9, 'établissements publics ou organismes associés');
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
