<?php

function showError($db){
    die("Error " . mysqli_errno($db) . " : " . mysqli_error($db));
}

function dbConnect($hostname, $db_name, $db_user, $db_passwd){
    $db = new mysqli($hostname, $db_user, $db_passwd, $db_name);
    if(!$db) {
        die("Connection failed: " . mysqli_connect_error());
    }
    return $db;
}