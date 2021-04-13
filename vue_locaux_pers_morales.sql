CREATE OR REPLACE
VIEW parcelle_personne_morale.vue_proprio_locaux AS
SELECT
	concat(lpm."Departement", lpm."Code_Direction", to_char(lpm."Code_Commune"::double PRECISION, 'FM099'::TEXT), REPLACE(lpm."Prefixe"::TEXT, ' '::TEXT, '0'::TEXT), lpad(lpm."Section"::TEXT, 2, '0'::TEXT), to_char(lpm."Num_plan"::double PRECISION, 'FM0999'::TEXT)) AS idu_pm,
	btrim(concat(lpm."Num_Voirie", ' ', lpm."Nature_voie", ' ', lpm."Nom_voie")) AS adresse_terrain,
	lpm."Nom_Commune" AS commune,
	cod.signification AS droit,
	lpm."Denomination",
	lfj.forme_juridique,
	grp.signification AS groupe,
	lpm."Num_SIREN"
FROM
	locaux_pers_morales lpm,
	list_code_de_droits cod,
	list_grp_pers_morale grp,
	list_forme_juridique lfj
WHERE
	--lpm."Nom_Commune"::TEXT = 'LOC-EGUINER'::TEXT
	AND lpm."Forme_juridique" = lfj.code
	AND lpm."Code_droit"::TEXT = cod.code::TEXT
	AND lpm."Groupe_personne" = grp.groupe;
