CREATE SEQUENCE analytics_data.formulation_cost_base_domestic_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 999999
    OWNED BY analytics_data.formulation_cost_base_domestic.poc_id;

ALTER SEQUENCE analytics_data.formulation_cost_base_domestic_seq
    OWNER TO postgres;