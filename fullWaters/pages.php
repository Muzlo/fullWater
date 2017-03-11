<?php
include_once('connect.php');

/* Report all errors except E_NOTICE */
error_reporting(E_ALL^E_NOTICE);

$page = intval($_GET['pageNum']);

$result = mysql_query("select email from myguests");
$total = mysql_num_rows($result);//总记录数


$pageSize = 7; //每页显示数
$totalPage = ceil($total/$pageSize); //总页数

$startPage = $page*$pageSize;
$arr['total'] = $total;  //总记录数20
$arr['pageSize'] = $pageSize;  //每页显示数7
$arr['totalPage'] = $totalPage; //总页数3
$query = mysql_query("select id,firstname,email from myguests order by id asc limit $startPage,$pageSize");
while($row=mysql_fetch_array($query)){
	 $arr['list'][] = array(
	 	'id' => $row['id'],
		'firstname' => $row['firstname'],
		'email' => $row['email'],
	 );
}
echo json_encode($arr);
?>