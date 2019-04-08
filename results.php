<!DOCTYPE html>
<html lang="en">
<head>
	 <link rel="stylesheet" href="css/template.css" />
	<meta charset="UTF-8" />
	<title>Play game</title>
</head>
<body>

<?php
//получение переменных с адресной строки
$name = htmlspecialchars($_GET["name"]);
$score = htmlspecialchars($_GET["score"]);
//подключение к базе данных
	$connectiuon = mysql_connect("localhost", "root", "");
mysql_set_charset("utf-8");
	if(!$connectiuon){
		echo ('Не удалось подключиться к серверу');
	}
//	else{
//		echo ('Соединение с сервером успешно установлено!');
//	}

$db = mysql_select_db("mygame");
	
$result = mysql_query("SELECT * FROM resultsgame ORDER BY score DESC LIMIT 9");

$sql = mysql_query ("REPLACE INTO resultsgame SET id=10, number=10,name='$name',score='$score'");



//echo $row ["score"];
?>	
	<div class="game">
		<div class="res">
			<table>
				<tr>
					<td colspan="3">Results 
					
<a href="start.html" target="_self" >       ИГРАТЬ>>></a> 
					
					</td>
				</tr>
<?php
while($row = mysql_fetch_array ($result))
{?>
				<tr>
					<td><?php echo $row ["number"];?></td>
					<td><?php echo $row ["name"];?></td>
					<td><?php echo $row ["score"];?></td>
				</tr>
<?php }?>	
				<tr>
					<td>10</td>
					<td><?php echo $name;?></td>
					<td><?php echo $score;?></td>
				</tr>
			</table>
		</div>


</body>
</html>