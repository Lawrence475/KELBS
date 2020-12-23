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
    $Oldname = filter_input(INPUT_POST, 'Oldname');
    $Newname = filter_input(INPUT_POST, 'Newname');
    
    $query = "UPDATE Customers
    SET Name = '$Newname' 
    WHERE Name = '$Oldname'";
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