<?php
$id = $_GET["id"];
// echo $id;

include "funcs.php";
$pdo = db_con();

//２．データ登録SQL作成
$stmt = $pdo->prepare("SELECT * FROM gs_user_table WHERE id=:id");
$stmt -> bindValue(":id",$id,PDO::PARAM_INT);
$status = $stmt->execute();

//３．データ表示
$view = "";
if ($status == false) {
    sqlError($stmt);
} else {
    //FETCH_ASSOC=http://php.net/manual/ja/pdostatement.fetch.php
    // while ($result = $stmt->fetch(PDO::FETCH_ASSOC)) {
    //     $view .= '<p>';
    //     $view .= '<a href="detail.php?id='.$result["id"].'">';  //squote→dot2つ
    //     $view .= $result["name"] . "," . $result["lid"] . "<br>";
    //     $view .= '</a>';
    //     $view .= '<p>'; 
        $row = $stmt -> fetch();
    }
?>

<!DOCTYPE html>
<html lang="ja">
<head>
  <meta charset="UTF-8">
  <title>更新</title>
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <style>div{padding: 10px;font-size:16px;}</style>
</head>
<body>

<!-- Head[Start] -->
<header>
  <nav class="navbar navbar-default">
    <div class="container-fluid">
    <div class="navbar-header"><a class="navbar-brand" href="select.php">データ一覧</a></div>
    </div>
  </nav>
</header>
<!-- Head[End] -->

<!-- Main[Start] -->
<form method="post" action="update.php">
  <div class="jumbotron">
   <fieldset>
    <legend>更新：user</legend>
     <label>名前：<input type="text" name="name" value="<?=$row["name"]?>"></label><br>
     <label>ID：<input type="text" name="lid"  value="<?=$row["lid"]?>"></label><br>
     <label>PW：<input type="text" name="lpw"  value="<?=$row["lpw"]?>"></label><br>

    <label>管理フラグ<br>
     管理者：<input type="radio" name="kanri_flg" value="0"></label>
     <label>スーパー管理者：<input type="radio" name="kanri_flg" value="1"></label><br>
     <br>
     <label>使用フラグ<br>
     使用中：<input type="radio" name="life_flg" value="0"></label>
     <label>退会：<input type="radio" name="life_flg" value="1"></label><br>
     
    <input type="hidden" name="id" value="<?=$row["id"]?>">
    <!-- ↑idを指定する -->
     <input type="submit" value="送信">
    </fieldset>
  </div>
</form>
<!-- Main[End] -->


</body>
</html>
