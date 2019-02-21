<?php
    require('dbconnect.php');

    $sentImg = @$_GET['imageurl'];
    $setImageURL = 'image/'.$sentImg.'.png';
    //$sentImg = "image/aries.png";
    //$setImageURL = "image/capricorn.png";

    if(empty($setImageURL)){
        die('送信に失敗しました。');
    }

    $temp = [];
    $gotTitle = "";
    $gotImgURL = "";
    $gotDiscURL = "";

    $files = [];
    $records = $db->query('SELECT * FROM constellations');

    while($record=$records->fetch()){
        $files[$record['fileurl']] = $record['name']."-".$record['description'];
    }
    //var_dump($files);

    foreach($files as $fileURL => $Description){
        if($setImageURL === $fileURL){
            //echo "<p><img src='".$fileURL."'></p>";
            //echo "<p>説明：".$Description."</p>";
            $gotImgURL = $fileURL;
            $temp = explode('-',$Description);
            $gotTitle = $temp[0];
            $gotDiscURL = $temp[1];

        }else{
            //echo "データベースにファイルがありませんでした。";
        }
    }
?>

<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="utf-8">
<script src="js/jquery-3.3.1.min.js"></script>
<title><?php echo $gotTitle; ?>のページ</title>
</head>

<body>
<?php 
echo "<p><img src='".$gotImgURL."'></p><p>";
require($gotDiscURL);
echo "<hr>";
echo "</p><p>画像：小学館の図鑑NEO 星と星座 (小学館) より<br>";
echo "解説出展：ユーザーローカル Wikipedia API</p>";
?>
</body>
</html>