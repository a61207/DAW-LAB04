<?php

$hostname = "10.10.23.183";
$db_name = "db_a61207";
$db_user = "a61207";
$db_passwd = "94852f";

function showError($db){
    die("Error " . mysqli_errno($db) . " : " . mysqli_error($db));
}

function dbConnect($hostname, $db_name, $db_user, $db_passwd){
    $db = @ mysqli_connect($hostname, $db_user, $db_passwd, $db_name);
    if(!$db) {
        die("Connection failed: " . mysqli_connect_error());
    }
    return $db;
}