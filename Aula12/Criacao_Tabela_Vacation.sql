/* Revisao_Log: */

CREATE TABLE usuario (
    id_usuario int PRIMARY KEY,
    Email char(250),
    ig_instagram char(250),
    senha char(250),
    data_criacao date
);

CREATE TABLE viagem (
    id_viagem int PRIMARY KEY,
    destino char(250),
    titulo char(250),
    data_inicio date,
    data_termino date
);

CREATE TABLE local (
    id_local int PRIMARY KEY,
    cidade char(250),
    nome char(250),
    descricao char(250),
    fk_descricao_descricao_PK int ,
    fk_viagem_id_viagem int
);

CREATE TABLE despesas (
    id_despesas int PRIMARY KEY,
    data date,
    valor int,
    hora int,
    descricao char(250),
    categoria char(250)
);

CREATE TABLE avaliacao_faz (
    nota int,
    id_avaliacao int PRIMARY KEY,
    fk_viagem_id_viagem int,
    fk_usuario_id_usuario int
);

CREATE TABLE tem_Despesas_Viagem_Local (
    fk_Despesas_id_despesas int,
    fk_viagem_id_viagem int,
    fk_local_id_local int
);
 
 
ALTER TABLE Local ADD CONSTRAINT FK_Local_3
    FOREIGN KEY (fk_Viagem_ID_Viagem)
    REFERENCES Viagem (ID_Viagem)
    ON DELETE RESTRICT;
 
ALTER TABLE Avaliacao_faz ADD CONSTRAINT FK_Avaliacao_faz_2
    FOREIGN KEY (fk_Viagem_ID_Viagem)
    REFERENCES Viagem (ID_Viagem);
 
ALTER TABLE Avaliacao_faz ADD CONSTRAINT FK_Avaliacao_faz_3
    FOREIGN KEY (fk_Usuario_ID_usuario)
    REFERENCES Usuario (ID_usuario);
 
ALTER TABLE tem_Despesas_Viagem_Local ADD CONSTRAINT FK_tem_Despesas_Viagem_Local_1
    FOREIGN KEY (fk_Despesas_ID_Despesas)
    REFERENCES Despesas (ID_Despesas)
    ON DELETE NO ACTION;
 
ALTER TABLE tem_Despesas_Viagem_Local ADD CONSTRAINT FK_tem_Despesas_Viagem_Local_2
    FOREIGN KEY (fk_Viagem_ID_Viagem)
    REFERENCES Viagem (ID_Viagem)
    ON DELETE RESTRICT;
 
ALTER TABLE tem_Despesas_Viagem_Local ADD CONSTRAINT FK_tem_Despesas_Viagem_Local_3
    FOREIGN KEY (fk_Local_ID_Local)
    REFERENCES Local (ID_Local)
    ON DELETE RESTRICT;