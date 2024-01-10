<?php

$servername = "localhost"; // nama server
$username   = "root"; // username phpmyadmin
$password   = ""; // password phpmyadmin
$dbname     = "db_bot"; // nama database
$conn = new mysqli($servername, $username, $password, $dbname);

// Uji Koneksi Database
if ($conn->connect_error) {
    die("Koneksi ke database gagal: " . $conn->connect_error);
}

?>