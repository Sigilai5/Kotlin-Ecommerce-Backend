<?php
/**
 * Created by PhpStorm.
 * User: sigilai
 * Date: 11/22/18
 * Time: 2:34 PM
 */

$con=new mysqli("localhost","root","","ecommerce");
$st_check=$con->prepare("SELECT id,name,price,quantity,mobile FROM temp_order INNER JOIN items on temp_order.item_id=items.id WHERE mobile=?");
$st_check->bind_param("s",$_GET["mobile"]);
$st_check->execute();
$rs=$st_check->get_result();
$arr=array();
while ($row=$rs->fetch_assoc())
{
    array_push($arr,$row);
}

echo json_encode($arr)


?>