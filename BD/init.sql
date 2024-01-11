USE sqlpage;

CREATE TABLE Joueur(
                       idJoueur INT AUTO_INCREMENT,
                       pseudoJoueur VARCHAR(50)  NOT NULL,
                       avatarJoueur VARCHAR(50) ,
                       PRIMARY KEY(idJoueur)
);

CREATE TABLE Jeu(
                    idJeu INT AUTO_INCREMENT,
                    nomJeu VARCHAR(50)  NOT NULL,
                    PRIMARY KEY(idJeu)
);

CREATE TABLE Tournoi(
                        idTournoi INT AUTO_INCREMENT,
                        nomTournoi VARCHAR(50)  NOT NULL,
                        dateHeureDebutTournoi DATETIME,
                        nbJoueursMinimum TINYINT NOT NULL,
                        nbJoueursMaximum TINYINT NOT NULL,
                        idJeu INT NOT NULL,
                        PRIMARY KEY(idTournoi),
                        FOREIGN KEY(idJeu) REFERENCES Jeu(idJeu)
);

CREATE TABLE Rencontre(
                          idRencontre INT AUTO_INCREMENT,
                          dateHeureDebut DATETIME NOT NULL,
                          niveauRencontre VARCHAR(50)  NOT NULL,
                          idJoueur INT NOT NULL,
                          idTournoi INT NOT NULL,
                          idJoueur_1 INT NOT NULL,
                          PRIMARY KEY(idRencontre),
                          FOREIGN KEY(idJoueur) REFERENCES Joueur(idJoueur),
                          FOREIGN KEY(idTournoi) REFERENCES Tournoi(idTournoi),
                          FOREIGN KEY(idJoueur_1) REFERENCES Joueur(idJoueur)
);

CREATE TABLE S_inscrit(
                          idJoueur INT,
                          idTournoi INT,
                          dateInscription DATETIME NOT NULL,
                          inscriptionRéglée BOOLEAN,
                          PRIMARY KEY(idJoueur, idTournoi),
                          FOREIGN KEY(idJoueur) REFERENCES Joueur(idJoueur),
                          FOREIGN KEY(idTournoi) REFERENCES Tournoi(idTournoi)
);
