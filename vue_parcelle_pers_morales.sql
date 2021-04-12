CREATE OR REPLACE
VIEW vue_proprio_parcelles AS
SELECT
	concat(ppm."Departement", ppm."Code_Direction", to_char(ppm."Code_Commune"::double PRECISION, 'FM099'::TEXT), REPLACE(ppm."Prefixe"::TEXT, ' '::TEXT, '0'::TEXT), lpad(ppm."Section"::TEXT, 2, '0'::TEXT), to_char(ppm."Num_plan"::double PRECISION, 'FM0999'::TEXT)) AS idu_pm,
	btrim(concat(ppm."Num_Voirie", ' ', ppm."Nature_voie", ' ', ppm."Nom_voie")) AS adresse_terrain,
	ppm."Nom_Commune" AS commune,
	cod.signification AS droit,
	ppm."Forme_juridique_abregee",
	ppm."Denomination",
	grp.signification AS groupe,
	ppm."Num_SIREN"
FROM
	parcelles_pers_morales ppm,
	list_code_de_droits cod,
	list_grp_pers_morale grp
WHERE
	ppm."Nom_Commune"::TEXT = 'LOC-EGUINER'::TEXT
	AND ppm."Code_droit"::TEXT = cod.code::TEXT
	AND ppm."Groupe_personne" = grp.groupe;
