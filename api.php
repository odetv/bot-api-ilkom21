<?php
header('Content-Type: application/json; charset=utf8');
require_once ('./config/conn.php');
require_once ('./config/authentication.php');


// FUNGSI MELIHAT SEMUA DATA DAN BERDASARKAN NIM
if ($_SERVER['REQUEST_METHOD'] == 'GET') {
    // BATASAN AKSES PENGGUNA (HANYA YANG MEMILIKI AKUN)
    if (isUser() || isAdmin()) {
        // JIKA ADA QUERY NIM, MAKA DATA BERDASARKAN NIM DITAMPILKAN
        if (isset($_GET['nim'])) {
            $nim = $_GET['nim'];
            $sql = "SELECT * FROM mahasiswa WHERE nim = '$nim'";
            $query = mysqli_query($conn, $sql);
            $array_data = array();
            while ($data = mysqli_fetch_assoc($query)) {
                $array_data[] = $data;
            }
            echo json_encode($array_data);
        // JIKA TIDAK ADA QUERY NIM, MAKA SEMUA DATA DITAMPILKAN
        } else {
            $sql = "SELECT * FROM mahasiswa";
            $query = mysqli_query($conn, $sql);
            $array_data = array();
            while ($data = mysqli_fetch_assoc($query)) {
                $array_data[] = $data;
            }
            echo json_encode($array_data);
        }
    }
}

// FUNGSI MEMBUAT ATAU MENAMBAHKAN DATA
else if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    // BATASAN AKSES PENGGUNA (HANYA YANG MEMILIKI AKUN)
    if (isAdmin()) {
        $nim = $_POST['nim'];
        $nama_mhs = $_POST['nama_mhs'];
        $ttl_mhs = $_POST['ttl_mhs'];
        $semester = $_POST['semester'];
        $kelas_mhs = $_POST['kelas_mhs'];
        $no_hp_mhs = $_POST['no_hp_mhs'];
        $email_mhs = $_POST['email_mhs'];
        $prodi = $_POST['prodi'];
        $jurusan = $_POST['jurusan'];
        $fakultas = $_POST['fakultas'];
        $status_mhs = $_POST['status_mhs'];
        $sql = "INSERT INTO mahasiswa (nim, nama_mhs, ttl_mhs, semester, kelas_mhs, no_hp_mhs, email_mhs, prodi, jurusan, fakultas, status_mhs) VALUES ('$nim', '$nama_mhs', '$ttl_mhs', '$semester', '$kelas_mhs', '$no_hp_mhs', '$email_mhs', '$prodi', '$jurusan', '$fakultas', '$status_mhs')";
        $cek = mysqli_query($conn, $sql);
        if ($cek) {
            $data = [
                'status' => "SUCCESS: Data berhasil ditambahkan!"
            ];
            echo json_encode([$data]);
        } else {
            $data = [
                'status' => "GAGAL: Data tidak berhasil ditambahkan!"
            ];
            echo json_encode([$data]);
        }
    }
}

// FUNGSI MENGHAPUS DATA
else if ($_SERVER['REQUEST_METHOD'] == 'DELETE') {
    // BATASAN AKSES PENGGUNA (HANYA YANG MEMILIKI AKUN)
    if (isAdmin()) {
        $nim = $_GET['nim'];
        $sql = "DELETE FROM mahasiswa WHERE nim = '$nim'";
        $cek = mysqli_query($conn, $sql);
        if ($cek) {
            $data = [
                'status' => "SUCCESS: Data berhasil dihapus!"
            ];
            echo json_encode([$data]);
        } else {
            $data = [
                'status' => "GAGAL: Data tidak berhasil dihapus!"
            ];
            echo json_encode([$data]);
        }
    }
}

// FUNGSI MENGEDIT ATAU MENGUBAH DATA
else if ($_SERVER['REQUEST_METHOD'] == 'PUT') {
    // BATASAN AKSES PENGGUNA (HANYA YANG MEMILIKI AKUN)
    if (isAdmin()) {
        $nim = $_GET['nim'];
        $nama_mhs = $_GET['nama_mhs'];
        $ttl_mhs = $_GET['ttl_mhs'];
        $semester = $_GET['semester'];
        $kelas_mhs = $_GET['kelas_mhs'];
        $no_hp_mhs = $_GET['no_hp_mhs'];
        $email_mhs = $_GET['email_mhs'];
        $prodi = $_GET['prodi'];
        $jurusan = $_GET['jurusan'];
        $fakultas = $_GET['fakultas'];
        $status_mhs = $_GET['status_mhs'];
        $sql = "UPDATE mahasiswa SET nama_mhs='$nama_mhs', ttl_mhs='$ttl_mhs', semester='$semester', kelas_mhs='$kelas_mhs', no_hp_mhs='$no_hp_mhs', email_mhs='$email_mhs', prodi='$prodi', jurusan='$jurusan', fakultas='$fakultas', status_mhs='$status_mhs' WHERE nim='$nim'";
        $cek = mysqli_query($conn, $sql);
        if ($cek) {
            $data = [
                'status' => "SUCCESS: Data berhasil diubah!"
            ];
            echo json_encode([$data]);
        } else {
            $data = [
                'status' => "GAGAL: Data tidak berhasil diubah!"
            ];
            echo json_encode([$data]);
        }
    }
}

?>