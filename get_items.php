<?php
/**
 * Created by PhpStorm.
 * User: sigilai
 * Date: 11/21/18
 * Time: 11:12 PM
 */


$con=new mysqli("localhost","root","","ecommerce");
$st_check=$con->prepare("SELECT * FROM items WHERE category=?");  //DISTINCT HELPS US TO GET UNIQUE CATEGORIES ONLY
$st_check->bind_param("s",$_GET["category"]);
$st_check->execute();
$rs=$st_check->get_result();
$arr=array();
while ($row=$rs->fetch_assoc())
{
    array_push($arr,$row);
}

echo json_encode($arr)




?>