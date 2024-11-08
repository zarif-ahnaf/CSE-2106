<!-- db.php  -->

<?php
    $servername = "127.0.0.1";
    $username = "root";
    $password = "";
    $dbname = "smsdb";

    try{
        $conn = new mysqli($servername, $username, $password, $dbname);
    }catch(Exception $e){
        die("Connection failed:".$e->getMessage());
    }
