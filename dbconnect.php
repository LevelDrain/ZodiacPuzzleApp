<?php
    try{
        $db = new PDO('mysql:host=localhost;dbname=project2018;charset=utf8;','mediaserver','2018f');
    }catch(PDOException $e){
        echo 'DB接続エラー : '.$e->getMessage();
    }
?>