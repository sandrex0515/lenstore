<?php
require_once('../CLASSES/childclass.php');
require_once('connection.php');

$data = array();
foreach($_POST as $k=>$v){
    $data[$k]=$v;
}

$class = new store($data);

$datax = $class->add($data);

header("HTTP/1.1 404 Users not found");
if($datax['status']){
    header("HTTP/1.1 200 Ok");
}
header("Content-Type: json/application");
print_r($datax);
?>