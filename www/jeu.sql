-- A form to create a new entry in the database
SELECT 'form' AS component,
       'Ajouter un jeu' AS title;

SELECT 'Jeu' as name,
       TRUE as required;
-- Handle the form results when present
INSERT INTO Jeu (nomJeu)
SELECT :nomJeu
    WHERE :nomJeu IS NOT NULL;
----------------------------------
-- Display the list of users
-- It is important that this query comes after the INSERT query above,
-- so that the updated list is visible immediately
SELECT 'list' AS component,
       'Jeux' AS title;
SELECT nomJeu AS title,
       nomJeu || ' est un nom de jeu' as description,
       'user' as icon,
FROM Jeu;