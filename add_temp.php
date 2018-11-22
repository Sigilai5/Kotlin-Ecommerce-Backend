<?php
/**
 * Created by PhpStorm.
 * User: sigilai
 * Date: 11/22/18
 * Time: 2:17 PM
 */

$con=new mysqli("localhost","root","","ecommerce");
$st_check=$con->prepare("INSERT INTO temp_order VALUES (?,?,?)");
$st_check->bind_param("sii",$_GET["mobile"],$_GET["item_id"],$_GET["quantity"]);
$st_check->execute();

?>