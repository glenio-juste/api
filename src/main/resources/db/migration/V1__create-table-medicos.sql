create table medicos(

    id serial not null,
    nome varchar(100) not null,
    email varchar(100) not null unique,
    crm varchar(6) not null unique,
    especialidade varchar(100) not null,
    logradouro varchar(100) not null,
    bairro varchar(100) not null,
    cep varchar(9) not null,
    numero varchar(20),
    cidade varchar(100) not null,
    uf char(2) not null,
    complemento varchar(100),

    primary key(id)

);
