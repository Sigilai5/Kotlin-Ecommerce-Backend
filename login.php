<?php
/**
 * Created by PhpStorm.
 * User: sigilai
 * Date: 11/21/18
 * Time: 1:08 AM
 */

$con=new mysqli("localhost","root","","ecommerce");
$st_check=$con->prepare("SELECT * FROM users WHERE mobile=? AND password=?");
$st_check->bind_param("ss",$_GET["mobile"],$_GET["password"]);
$st_check->execute();
$rs=$st_check->get_result();
if ($rs->num_rows==0)
    echo "0";
else
    echo "1";



?>