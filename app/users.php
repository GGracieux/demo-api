<?php

// Récupération des utilisateurs
$connexion = new PDO('mysql:dbname=dbdemo;host=demo-db;', 'dbuser', 'dbpass');
$sql = "SELECT usr_id, CONCAT(usr_prenom, ' ', usr_nom) AS nom FROM users_usr";
$statement = $connexion->prepare($sql);
$statement->execute();
$users = $statement->fetchAll(PDO::FETCH_KEY_PAIR);

// Output
header('Content-Type: application/json');
echo json_encode($users);