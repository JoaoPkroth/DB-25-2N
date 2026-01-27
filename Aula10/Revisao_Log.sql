/* Revisao_Log: */

CREATE TABLE Usuario (
    ID_usuario number(3) PRIMARY KEY,
    Email char(250),
    Ig_Instagram char(250),
    Senha char(250),
    Data_criacao date(8)
);

CREATE TABLE Viagem (
    ID_Viagem number(3) PRIMARY KEY,
    Destino char(250),
    Titulo char(250),
    Data_Inicio date(8),
    Data_Termino date(8)
);

CREATE TABLE Local (
    ID_Local number(3) PRIMARY KEY,
    Cidade char(250),
    Nome char(250),
    descricao char(250),
    fk_descricao_descricao_PK number(3),
    fk_Viagem_ID_Viagem number(3)
);

CREATE TABLE Despesas (
    ID_Despesas number(3) PRIMARY KEY,
    Data date(8),
    Valor number(6),
    Hora number(4),
    Descricao char(250),
    Categoria char(250)
);

CREATE TABLE Avaliacao_faz (
    Nota number(1),
    ID_avaliacao number(3) PRIMARY KEY,
    fk_Viagem_ID_Viagem number(3),
    fk_Usuario_ID_usuario number(3)
);

CREATE TABLE tem_Despesas_Viagem_Local (
    fk_Despesas_ID_Despesas number(3),
    fk_Viagem_ID_Viagem number(3),
    fk_Local_ID_Local number(3)
);
 
ALTER TABLE Local ADD CONSTRAINT FK_Local_2
    FOREIGN KEY (fk_descricao_descricao_PK???)
    REFERENCES ??? (???)
    ON DELETE SET NULL;
 
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