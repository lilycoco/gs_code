<?php
//1. POSTデータ取得
//$tit = filter_input( INPUT_GET, ","tit" ); //こういうのもあるよ
//$url = filter_input( INPUT_POST, "url" ); //こういうのもあるよ
$tit = $_POST["tit"];
$url = $_POST["url"];
$comment = $_POST["comment"];

//2. DB接続します
include "funcs.php";
$pdo = db_con();

//３．データ登録SQL作成
$sql = "INSERT INTO gs_bm_table(tit,url,comment,datetime)VALUES(:tit,:url,:comment,sysdate())";
$stmt = $pdo->prepare($sql);
$stmt->bindValue(':tit', $tit, PDO::PARAM_STR); //Integer（数値の場合 PDO::PARAM_INT)
$stmt->bindValue(':url', $url, PDO::PARAM_STR); //Integer（数値の場合 PDO::PARAM_INT)
$stmt->bindValue(':comment', $comment, PDO::PARAM_STR); //Integer（数値の場合 PDO::PARAM_INT)

$status = $stmt->execute();

//４．データ登録処理後
if ($status == false) {
    sqlError($stmt);
} else {
    //５．index.phpへリダイレクト
    header("Location: index.php");
    exit;
}
