<?php
session_start();
include("funcs.php");
$pdo = db_connect();
// 1.もし、ポストにデータがあるならば・・・
if (isset($_POST["u_name"], $_POST["u_id"], $_POST["u_pw"])) {
    // 2.ポストのデータを変数にしま～す
    $name = $_POST["u_name"];
    $id = $_POST["u_id"];
    $psw = $_POST["u_pw"];
}

$stmt = $pdo->prepare("INSERT INTO gs_user_table(id,u_name,u_id,u_pw,life_flg,indate)VALUES(NULL,:name,:name,:psw,0,sysdate())");
$stmt->bindValue(':name', $name, PDO::PARAM_STR);      //Integer（数値の場合 PDO::PARAM_INT)
$stmt->bindValue(':id', $id, PDO::PARAM_STR);    //Integer（数値の場合 PDO::PARAM_INT)
$stmt->bindValue(':psw', $psw, PDO::PARAM_INT);        //Integer（数値の場合 PDO::PARAM_INT)  //Integer（数値の場合 PDO::PARAM_INT)
$status = $stmt->execute(); //実行

if($status==false){
    //*** function化する！*****************
    $error = $stmt->errorInfo();
    exit("SQLError:".$error[2]);
}else{
    //*** function化する！*****************
    header("Location: index.php");
    exit();
}
?>