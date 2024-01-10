<?php

function isAdmin() {
    global $conn;
    if (isset($_GET['email']) && isset($_GET['password'])) {
        $email = $_GET['email'];
        $password = $_GET['password'];
        $query = "SELECT * FROM admin WHERE email = '$email' AND password = '$password'";
        $result = mysqli_query($conn, $query);
        if ($result && mysqli_num_rows($result) > 0) {
            return true;
        }
    }
    $data = [
        'status' => "API Dibatasi. Masukkan Email dan Password yang benar!",
        'error' => "Unauthorized access (Hubungi Admin: 085739683673)"
    ];
    echo json_encode([$data]);
    return false;
}
function isUser() {
    global $conn;
    if (isset($_GET['email']) && isset($_GET['password'])) {
        $email = $_GET['email'];
        $password = $_GET['password'];
        $query = "SELECT * FROM user WHERE email = '$email' AND password = '$password'";
        $result = mysqli_query($conn, $query);
        if ($result && mysqli_num_rows($result) > 0) {
            return true;
        }
    }
    return false;
}

?>