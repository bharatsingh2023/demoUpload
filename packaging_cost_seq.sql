-- SEQUENCE: analytics_data.formulation_cost_addt_domestic_seq

-- DROP SEQUENCE IF EXISTS analytics_data.formulation_cost_addt_domestic_seq;

CREATE SEQUENCE IF NOT EXISTS analytics_data.packaging_cost_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 999999
    CACHE 1
    OWNED BY analytics_data.packaging_input_cost.pkg_cost_id;

ALTER SEQUENCE analytics_data.formulation_cost_addt_domestic_seq
    OWNER TO postgres;