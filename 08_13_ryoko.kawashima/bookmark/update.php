<?php
//1. POSTデータ取得
//$tit = filter_input( INPUT_GET, ","tit" ); //こういうのもあるよ
//$url = filter_input( INPUT_POST, "url" ); //こういうのもあるよ
$tit = $_POST["tit"];
$url = $_POST["url"];
$comment = $_POST["comment"];
$id= $_POST["id"];


//2. DB接続します
include "funcs.php";
$pdo = db_con();

//３．データ登録SQL作成
$sql = "UPDATE gs_bm_table SET tit=:tit, url=:url, comment=:comment WHERE id=:id";
$stmt = $pdo->prepare($sql);
$stmt->bindValue(':tit', $tit, PDO::PARAM_STR); //Integer（数値の場合 PDO::PARAM_INT)
$stmt->bindValue(':url', $url, PDO::PARAM_STR); //Integer（数値の場合 PDO::PARAM_INT)
$stmt->bindValue(':comment', $comment, PDO::PARAM_STR); //Integer（数値の場合 PDO::PARAM_INT)
$stmt->bindValue(':id', $id, PDO::PARAM_INT); //Integer（数値の場合 PDO::PARAM_INT)


$status = $stmt->execute();

//４．データ登録処理後
if ($status == false) {
    sqlError($stmt);
} else {
    //５．index.phpへリダイレクト
    header("Location: select.php");
    exit;
}
