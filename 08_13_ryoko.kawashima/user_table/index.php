<!DOCTYPE html>
<html lang="ja">
<head>
  <meta charset="UTF-8">
  <title>データ登録</title>
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
<form method="post" action="insert.php">
  <div class="jumbotron">
   <fieldset>
    <legend>更新：フリーアンケート</legend>
     <label>名前　<input type="text" name="name"></label><br>
     <label>ID　<input type="text" name="lid" ></label><br>
     <label>PW　<input type="text" name="lpw"></label><br>
     <br>
     <label>管理フラグ<br>
     管理者：<input type="radio" name="kanri_flg" value="0"></label>
     <label>スーパー管理者：<input type="radio" name="kanri_flg" value="1"></label><br>
     <br>
     <label>使用フラグ<br>
     使用中：<input type="radio" name="life_flg" value="0"></label>
     <label>退会：<input type="radio" name="life_flg" value="1"></label><br>
     <input type="hidden" name="id" value="<?=$row["id"]?>" >
     <input type="submit" value="送信">
    </fieldset>
  </div>
</form>
<!-- Main[End] -->


</body>
</html>
