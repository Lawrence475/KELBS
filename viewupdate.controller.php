<?php
$host = "localhost";
$dbusername = "root";
$dbpassword = "";
$dbname = "phase3";

//creating connection
$conn = new mysqli($host, $dbusername, $dbpassword, $dbname);

// Check connection
if($conn->connect_error) 
{  
    die("Connection failed");
}
else
{
    $CouponNum = filter_input(INPUT_POST, 'CouponNum');
    
    $query = "UPDATE vipcustomers
    SET Coupon_Amount = '$CouponNum' 
    WHERE Coupon_Amount >= 10";
    if ($conn->query($query))
    {
        echo "Record updated sucessfully";
    }
    else
    {
        echo "Error:";
    }
}        
?>