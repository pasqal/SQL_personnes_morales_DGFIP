-- Drop table

-- DROP TABLE parcelle_personne_morale.locaux_pers_morales;

CREATE TABLE parcelle_personne_morale.locaux_pers_morales (
	"Departement" int2 NULL, -- Département (Champ géographique)
	"Code_Direction" int2 NULL, -- Code Direction (Champ géographique)
	"Code_Commune" int2 NULL, -- Code Commune (Champ géographique)
	"Nom_Commune" varchar(50) NULL, -- Nom Commune (Champ géographique)
	"Prefixe" varchar(5) NULL, -- Préfixe (Références cadastrales)
	"Section" varchar(2) NULL, -- Section (Références cadastrales)
	"Num_plan" int2 NULL, -- N° plan (Références cadastrales)
	"Batiment" varchar(2) NULL, -- Bâtiment (Identification du local)
	"Entree" varchar(4) NULL, -- Entrée (Identification du local)
	"Niveau" int2 NULL, -- Niveau (Identification du local)
	"Porte" int4 NULL, -- Porte (Identification du local)
	"Num_Voirie" int2 NULL, -- N° voirie (Adresse du local)
	"Indice_de_repetition" varchar(2) NULL, -- Indice de répétition (Adresse du local)
	"Code_voie_MAJIC" varchar(5) NULL, -- Code voie MAJIC (Adresse du local)
	"Code_voie_rivoli" varchar(4) NULL, -- Code voie rivoli (Adresse du local)
	"Nature_voie" varchar(4) NULL, -- Nature voie (Adresse du local)
	"Nom_voie" varchar(50) NULL, -- Nom voie (Adresse du local)
	"Code_droit" varchar(1) NULL, -- Code droit (Propriétaire(s) du local)
	"Num_MAJIC" varchar(6) NULL, -- N° MAJIC (Propriétaire(s) du local)
	"Num_SIREN" varchar(9) NULL, -- N° SIREN (Propriétaire(s) du local)
	"Groupe_personne" int2 NULL, -- Groupe personne (Propriétaire(s) du local)
	"Forme_juridique" int2 NULL, -- Forme juridique (Propriétaire(s) du local)
	"Forme_juridique_abregee" varchar(4) NULL, -- Forme juridique abrégée (Propriétaire(s) du local)
	"Denomination" varchar(100) NULL -- Dénomination (Propriétaire(s) du local)
)
WITH (
	OIDS=TRUE
);
COMMENT ON TABLE parcelle_personne_morale.locaux_pers_morales IS 'source_dgfip - avril 2021';

-- Column comments

COMMENT ON COLUMN parcelle_personne_morale.locaux_pers_morales."Departement" IS 'Département (Champ géographique)';
COMMENT ON COLUMN parcelle_personne_morale.locaux_pers_morales."Code_Direction" IS 'Code Direction (Champ géographique)';
COMMENT ON COLUMN parcelle_personne_morale.locaux_pers_morales."Code_Commune" IS 'Code Commune (Champ géographique)';
COMMENT ON COLUMN parcelle_personne_morale.locaux_pers_morales."Nom_Commune" IS 'Nom Commune (Champ géographique)';
COMMENT ON COLUMN parcelle_personne_morale.locaux_pers_morales."Prefixe" IS 'Préfixe (Références cadastrales)';
COMMENT ON COLUMN parcelle_personne_morale.locaux_pers_morales."Section" IS 'Section (Références cadastrales)';
COMMENT ON COLUMN parcelle_personne_morale.locaux_pers_morales."Num_plan" IS 'N° plan (Références cadastrales)';
COMMENT ON COLUMN parcelle_personne_morale.locaux_pers_morales."Batiment" IS 'Bâtiment (Identification du local)';
COMMENT ON COLUMN parcelle_personne_morale.locaux_pers_morales."Entree" IS 'Entrée (Identification du local)';
COMMENT ON COLUMN parcelle_personne_morale.locaux_pers_morales."Niveau" IS 'Niveau (Identification du local)';
COMMENT ON COLUMN parcelle_personne_morale.locaux_pers_morales."Porte" IS 'Porte (Identification du local)';
COMMENT ON COLUMN parcelle_personne_morale.locaux_pers_morales."Num_Voirie" IS 'N° voirie (Adresse du local)';
COMMENT ON COLUMN parcelle_personne_morale.locaux_pers_morales."Indice_de_repetition" IS 'Indice de répétition (Adresse du local)';
COMMENT ON COLUMN parcelle_personne_morale.locaux_pers_morales."Code_voie_MAJIC" IS 'Code voie MAJIC (Adresse du local)';
COMMENT ON COLUMN parcelle_personne_morale.locaux_pers_morales."Code_voie_rivoli" IS 'Code voie rivoli (Adresse du local)';
COMMENT ON COLUMN parcelle_personne_morale.locaux_pers_morales."Nature_voie" IS 'Nature voie (Adresse du local)';
COMMENT ON COLUMN parcelle_personne_morale.locaux_pers_morales."Nom_voie" IS 'Nom voie (Adresse du local)';
COMMENT ON COLUMN parcelle_personne_morale.locaux_pers_morales."Code_droit" IS 'Code droit (Propriétaire(s) du local)';
COMMENT ON COLUMN parcelle_personne_morale.locaux_pers_morales."Num_MAJIC" IS 'N° MAJIC (Propriétaire(s) du local)';
COMMENT ON COLUMN parcelle_personne_morale.locaux_pers_morales."Num_SIREN" IS 'N° SIREN (Propriétaire(s) du local)';
COMMENT ON COLUMN parcelle_personne_morale.locaux_pers_morales."Groupe_personne" IS 'Groupe personne (Propriétaire(s) du local)';
COMMENT ON COLUMN parcelle_personne_morale.locaux_pers_morales."Forme_juridique" IS 'Forme juridique (Propriétaire(s) du local)';
COMMENT ON COLUMN parcelle_personne_morale.locaux_pers_morales."Forme_juridique_abregee" IS 'Forme juridique abrégée (Propriétaire(s) du local)';
COMMENT ON COLUMN parcelle_personne_morale.locaux_pers_morales."Denomination" IS 'Dénomination (Propriétaire(s) du local)';
