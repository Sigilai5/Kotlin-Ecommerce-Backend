<?php
/**
 * Created by PhpStorm.
 * User: sigilai
 * Date: 11/27/18
 * Time: 12:17 PM
 */

          /*SELECT PARTICULAR ORDER**/
$con=new mysqli("localhost","root","","ecommerce");
$st=$con->prepare("SELECT * FROM temp_order WHERE mobile=?");
$st->bind_param("s",$_GET["mobile"]);
$st->execute();
$rs=$st->get_result();

                /*INSERT INTO bill TABLE**/
$st2=$con->prepare("INSERT INTO bill(mobile) VALUES(?)");
$st2->bind_param("s",$_GET["mobile"]);
$st2->execute();

            /*SELECT THE MAXIMUM ORDER**/
$st4=$con->prepare("SELECT MAX(bill_no) AS bno FROM bill WHERE mobile=?");
$st4->bind_param("s",$_GET["mobile"]);
$st4->execute();
$rs2=$st4->get_result();
$row_max=$rs2->fetch_assoc();

            /*INSERT BILL NUMBER,ITEM ID AND QUANTITY **/
while($row=$rs->fetch_assoc())
{
    $st3=$con->prepare("INSERT INTO bill_details VALUES(?,?,?)");
    $st3->bind_param("iii",$row_max["bno"],$row["item_id"],$row["quantity"]);
    $st3->execute();

}

            /*ORDER IS DELETED AFTER BEING ADDED TO BILL DETAILS**/
$st5=$con->prepare("DELETE FROM  temp_order WHERE mobile=?");
$st5->bind_param("s",$_GET["mobile"]);
$st5->execute();

echo $row_max["bno"];

?>