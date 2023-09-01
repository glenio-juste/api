-- Table: public.medicos

-- DROP TABLE public.medicos;

CREATE TABLE public.medicos
(
  id bigint NOT NULL DEFAULT nextval('medico_id_seq'::regclass),
  nome character varying(100) NOT NULL,
  email character varying(100) NOT NULL,
  crm character varying(6) NOT NULL,
  especialidade character varying(100) NOT NULL,
  logradouro character varying(100) NOT NULL,
  bairro character varying(100) NOT NULL,
  cep character varying(9) NOT NULL,
  complemento character varying(100),
  numero character varying(20),
  uf character(2),
  cidade character varying(100),
  CONSTRAINT medicos_pkey PRIMARY KEY (id),
  CONSTRAINT medicos_crm_key UNIQUE (crm),
  CONSTRAINT medicos_email_key UNIQUE (email)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.medicos
  OWNER TO postgres;

--######################################

alter table medicos add telefone varchar(20);




