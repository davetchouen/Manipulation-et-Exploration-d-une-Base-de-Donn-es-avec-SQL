-- Création de la table "Clients"
CREATE TABLE Clients (
    ClientID INT PRIMARY KEY,
    Nom VARCHAR(50),
    Prenom VARCHAR(50),
    Adresse VARCHAR(100),
    Email VARCHAR(100),
    NumeroTelephone VARCHAR(15)
);

-- Création de la table "Produits"
CREATE TABLE Produits (
    ProduitID INT PRIMARY KEY,
    NomProduit VARCHAR(50),
    Description TEXT,
    PrixUnitaire DECIMAL(10, 2)
);


-- Création de la table "Ventes"
CREATE TABLE Ventes (
    VenteID INT PRIMARY KEY,
    DateVente DATE,
    ClientID INT REFERENCES Clients(ClientID),
    ProduitID INT REFERENCES Produits(ProduitID),
    QuantiteVendue INT,
    MontantTotal DECIMAL(10, 2)
);
