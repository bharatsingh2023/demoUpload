-- Table: analytics_data.formulation_cost_base_import

-- DROP TABLE IF EXISTS analytics_data.formulation_cost_base_import;

CREATE TABLE IF NOT EXISTS analytics_data.formulation_cost_base_domestic
(
    poc_id bigint NOT NULL,
    product_code character varying COLLATE pg_catalog."default",
    blending_plant character varying COLLATE pg_catalog."default",
    import_cost numeric,
    uom character varying COLLATE pg_catalog."default",
    currency character varying COLLATE pg_catalog."default",
    valid_from date,
    valid_to date,
    created_on date,
    CONSTRAINT formulation_cost_base_domestic_pkey PRIMARY KEY (poc_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS analytics_data.formulation_cost_base_import
    OWNER to postgres;