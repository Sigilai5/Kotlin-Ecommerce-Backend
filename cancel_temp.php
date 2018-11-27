<?php
/**
 * Created by PhpStorm.
 * User: sigilai
 * Date: 11/26/18
 * Time: 6:46 PM
 */

$con=new mysqli("localhost","root","","ecommerce");
$st_check=$con->prepare("DELETE FROM temp_order WHERE mobile=?");
$st_check->bind_param("s",$_GET["mobile"]);
$st_check->execute();

?>