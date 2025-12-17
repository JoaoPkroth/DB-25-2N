/* Simulado_Logico: */

CREATE TABLE Usuario (
    ID_User (NUMERIC(5)) PRIMARY KEY,
    Nome (CHAR(250)),
    Email (CHAR(250)),
    Assinatura (CHAR(7)),
    Data_Assinatura (DATE(8))
);

CREATE TABLE Streaming (
    ID_Streaming (NUMERIC(2)) PRIMARY KEY,
    Nome (CHAR(250)),
    Data_Lancamento (DATE(8))
);

CREATE TABLE Genero (
    Nome (CHAR(250)),
    ID_Genero (NUMERIC(3)) PRIMARY KEY,
    fk_Streaming_ID_Streaming (NUMERIC(2))
);

CREATE TABLE Episodio (
    ID_Epsodio (NUMERIC(6)) PRIMARY KEY,
    Nome (CHAR(250)),
    Duracao (NUMERIC(6)),
    Resumo (CHAR(250)),
    fk_Serie_fk_Streaming_ID_Streaming (NUMERIC(2))
);

CREATE TABLE Diretor (
    Nome (CHAR(250)),
    Nacionalidade (CHAR(50)),
    Data_Nasc (DATE(8)),
    ID_Diretor (NUMERIC(3)) PRIMARY KEY,
    fk_Streaming_ID_Streaming (NUMERIC(2))
);

CREATE TABLE Basico (
    Acesso_Limitado (CHAR(20)),
    Anuncios (CHAR(6)),
    fk_Usuario_ID_User (NUMERIC(5)) PRIMARY KEY
);

CREATE TABLE Premium (
    Playlists_Ilimitadas (CHAR(40)),
    Conteudo_Exclusivo (CHAR(30)),
    fk_Usuario_ID_User (NUMERIC(5)) PRIMARY KEY
);

CREATE TABLE Ator (
    ID_Ator (NUMERIC(4)) PRIMARY KEY,
    Nome (CHAR(250)),
    Data_Nasc (DATE(8)),
    Nacionalidade (CHAR(50)),
    fk_Streaming_ID_Streaming (NUMERIC(2))
);

CREATE TABLE Serie (
    Temporadas (CHAR(2)),
    fk_Streaming_ID_Streaming (NUMERIC(2)) PRIMARY KEY
);

CREATE TABLE Filme (
    Duracao (NUMERIC(5)),
    fk_Streaming_ID_Streaming (NUMERIC(2)) PRIMARY KEY
);

CREATE TABLE Avaliacao_assistiu (
    Data (DATE(8)),
    Nota (NUMERIC(2)),
    Comentario (CHAR(250)),
    fk_Usuario_ID_User (NUMERIC(5)),
    fk_Streaming_ID_Streaming (NUMERIC(2)),
    Historico (CHAR(8))
);

CREATE TABLE Lista_Desejos_Assistira (
    Prioridades (CHAR(50)),
    fk_Usuario_ID_User (NUMERIC(5)),
    fk_Streaming_ID_Streaming (NUMERIC(2))
);
 
ALTER TABLE Genero ADD CONSTRAINT FK_Genero_2
    FOREIGN KEY (fk_Streaming_ID_Streaming)
    REFERENCES Streaming (ID_Streaming)
    ON DELETE RESTRICT;
 
ALTER TABLE Episodio ADD CONSTRAINT FK_Episodio_2
    FOREIGN KEY (fk_Serie_fk_Streaming_ID_Streaming)
    REFERENCES Serie (fk_Streaming_ID_Streaming)
    ON DELETE RESTRICT;
 
ALTER TABLE Diretor ADD CONSTRAINT FK_Diretor_2
    FOREIGN KEY (fk_Streaming_ID_Streaming)
    REFERENCES Streaming (ID_Streaming)
    ON DELETE RESTRICT;
 
ALTER TABLE Basico ADD CONSTRAINT FK_Basico_2
    FOREIGN KEY (fk_Usuario_ID_User)
    REFERENCES Usuario (ID_User)
    ON DELETE CASCADE;
 
ALTER TABLE Premium ADD CONSTRAINT FK_Premium_2
    FOREIGN KEY (fk_Usuario_ID_User)
    REFERENCES Usuario (ID_User)
    ON DELETE CASCADE;
 
ALTER TABLE Ator ADD CONSTRAINT FK_Ator_2
    FOREIGN KEY (fk_Streaming_ID_Streaming)
    REFERENCES Streaming (ID_Streaming)
    ON DELETE RESTRICT;
 
ALTER TABLE Serie ADD CONSTRAINT FK_Serie_2
    FOREIGN KEY (fk_Streaming_ID_Streaming)
    REFERENCES Streaming (ID_Streaming)
    ON DELETE CASCADE;
 
ALTER TABLE Filme ADD CONSTRAINT FK_Filme_2
    FOREIGN KEY (fk_Streaming_ID_Streaming)
    REFERENCES Streaming (ID_Streaming)
    ON DELETE CASCADE;
 
ALTER TABLE Avaliacao_assistiu ADD CONSTRAINT FK_Avaliacao_assistiu_1
    FOREIGN KEY (fk_Usuario_ID_User)
    REFERENCES Usuario (ID_User);
 
ALTER TABLE Avaliacao_assistiu ADD CONSTRAINT FK_Avaliacao_assistiu_2
    FOREIGN KEY (fk_Streaming_ID_Streaming)
    REFERENCES Streaming (ID_Streaming);
 
ALTER TABLE Lista_Desejos_Assistira ADD CONSTRAINT FK_Lista_Desejos_Assistira_1
    FOREIGN KEY (fk_Usuario_ID_User)
    REFERENCES Usuario (ID_User);
 
ALTER TABLE Lista_Desejos_Assistira ADD CONSTRAINT FK_Lista_Desejos_Assistira_2
    FOREIGN KEY (fk_Streaming_ID_Streaming)
    REFERENCES Streaming (ID_Streaming);