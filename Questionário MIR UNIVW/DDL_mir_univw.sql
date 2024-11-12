CREATE TABLE Administrador
(
    AdmID CHAR(4) NOT NULL,
    AdmSenha VARCHAR(100) NOT NULL,
    PRIMARY KEY (AdmID)
);

CREATE TABLE Major
(
    MajorID CHAR(3) NOT NULL,
    MajorNome VARCHAR(100) NOT NULL,
    NoDeCreditos INT NOT NULL,
    AdmInsersor CHAR(4) NOT NULL,
    PRIMARY KEY (MajorID),
    FOREIGN KEY (AdmInsersor) REFERENCES Administrador(AdmID)
);

CREATE TABLE Aluno
(
    AlunoID CHAR(6) NOT NULL,
    AlunoNome VARCHAR(100) NOT NULL,
    AlunoSenha VARCHAR(100) NOT NULL,
    MajorEscolhida CHAR(3) NOT NULL,
    PRIMARY KEY (AlunoID),
    FOREIGN KEY (MajorEscolhida) REFERENCES Major(MajorID)
);