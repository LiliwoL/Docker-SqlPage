-- A form to create a new entry in the database
SELECT 'form' AS component,
       'Ajouter un tournoi' AS title;

SELECT 'Tournoi' as name,
       TRUE as required;
-- Handle the form results when present
INSERT INTO users (username)
SELECT :Username
    WHERE :Username IS NOT NULL;
----------------------------------
-- Display the list of users
-- It is important that this query comes after the INSERT query above,
-- so that the updated list is visible immediately
SELECT 'list' AS component,
       'Users' AS title;
SELECT username AS title,
       username || ' is a user on this website.' as description,
       'user' as icon,
       'user.sql?id=' || id as link
FROM users;