<?php

$kon = mysqli_connect('localhost', 'root', '', 'yukfutsal');

if (!$kon) {
    die("Koneksi Gagal : " . mysqli_connect_error());
}