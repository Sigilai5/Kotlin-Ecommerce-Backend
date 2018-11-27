<?php
/**
 * Created by PhpStorm.
 * User: sigilai
 * Date: 11/27/18
 * Time: 1:05 PM
 */

$con=new mysqli("localhost","root","","ecommerce");
$st=$con->prepare("SELECT price,quantity FROM items INNER JOIN bill_details ON items.id=bill_details.item_id WHERE bill_details.bill_no=?");
$st->bind_param("i",$_GET["bill_no"]);
$st->execute();
$rs=$st->get_result();
$total=0;
while ($row=$rs->fetch_assoc())
{
    $total=$total + ($row["price"]*$row["quantity"]);
}

echo $total

?>