<?php
/**
 * Created by PhpStorm.
 * User: sigilai
 * Date: 11/21/18
 * Time: 12:29 AM
 */

$con=new mysqli("localhost","root","","ecommerce");
$st_check=$con->prepare("SELECT * FROM users WHERE mobile=?");
$st_check->bind_param("s",$_GET["mobile"]);
$st_check->execute();
$rs=$st_check->get_result();
if ($rs->num_rows==0) //zero means,no such user with same mobile number
{
$st=$con->prepare("INSERT INTO users VALUES (?,?,?,?)");
$st->bind_param("ssss",$_GET["mobile"],$_GET["password"],$_GET["name"],$_GET["address"]);
$st->execute();
echo "1"; //User added

}

else
    echo "0"; //Mobile number already exists

?>