
-- MANIPULATION DE BASE UTILISATION DE LA FONCTION WHERE
-- Table complète des produits vendus par l'entreprise 
SELECT *
FROM Produits;

-- Table complète des clients de l'entreprise
SELECT *
FROM Clients;

-- Nom de tous les produits de la base de données
SELECT NomProduit
FROM Produits;


-- Nom de tous les fournisseurs de la base de données
SELECT NomFournisseur
FROM Fournisseurs;

-- Liste produit vendu est à > 200

SELECT *
FROM Produits
WHERE PrixUnitaire > 200;

-- Liste produit vendu est à <= 200
SELECT *
FROM Produits
WHERE PrixUnitaire <= 200;

-- Liste produit vendu compris entre 50 et 100
SELECT *
FROM Produits
WHERE PrixUnitaire >=50 AND PrixUnitaire <=100;

-- Liste des produits du fournisseur numéro 13
SELECT *
FROM Produits
WHERE FournisseurID = 13;

-- Description des produits du fournisseur numéro 13
SELECT DescProduit
FROM Produits
WHERE FournisseurID = 13;



-- RECHERCHE DE CARACTERE AVEC LA FONCTION LIKE
-- Nom des clients qui commencent par la lettre c et qui se termine par a
SELECT *
FROM Clients
WHERE Nom LIKE "c%a" ;

SELECT *
FROM Clients
WHERE Nom LIKE "c%" AND Prenom LIKE "%y";

-- Le nom contient la lettre n
SELECT *
FROM Clients
WHERE Nom LIKE "%n%";


-- UTILISATION DE LA FONCTION ORDER BY
-- Liste des produits du moins coûteux au plus coûteux Utilisation de la fonction ORDER BY
SELECT *
FROM Produits
ORDER BY prixUnitaire ;
-- Liste des produits du prix le plus élevé au prix le moins élevé
SELECT *
FROM Produits
ORDER BY prixUnitaire DESC;

-- Liste des employés ordre alphabétique le nom t décroissant prénom
SELECT *
FROM Employes
ORDER BY nom, prenom DESC;

-- La liste des produits dont le prix est supérieur à 200, résultat par alphabétqiue suivant le nom du produit
SELECT *
FROM Produits
WHERE PrixUnitaire >200
ORDER BY NomProduit;