CREATE OR REPLACE VIEW parcelle_personne_morale.vue_parcelles_pm2
AS SELECT concat(ppm."Departement", ppm."Code_Direction", to_char(ppm."Code_Commune"::double precision, 'FM099'::text), replace(ppm."Prefixe"::text, ' '::text, '0'::text), lpad(ppm."Section"::text, 2, '0'::text), to_char(ppm."Num_plan"::double precision, 'FM0999'::text)) AS idu_pm,
    btrim(concat(ppm."Num_Voirie", ' ', ppm."Nature_voie", ' ', ppm."Nom_voie")) AS adresse_terrain,
    ppm."Nom_Commune" AS "Commune",
    cod.signification AS droit,
    ppm."Forme_juridique_abregee",
    ppm."Denomination",
    grp.signification AS groupe,
    ppm."Num_SIREN"
   FROM parcelles_pers_morales ppm,
    list_code_de_droits cod,
    list_grp_pers_morale grp
  WHERE ppm."Code_droit"::text = cod.code::text AND ppm."Groupe_personne" = grp.groupe;
