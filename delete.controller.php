<?php
$host = "localhost";
$dbusername = "root";
$dbpassword = "";
$dbname = "phase3";// Create connection
$conn = new mysqli($host, $dbusername,$dbpassword,$dbname);// Check connection
if($conn->connect_error) 
{ 
    die("Connection failed");
}
else
{
    $name = filter_input(INPUT_POST, 'name');  
    
    $sql = "DELETE FROM machine
        WHERE Machine_Number = '$name'";
    if ($conn->query($sql))
    {
        echo "Record was deleted sucessfully";
    }
    else
    {
        echo "Error: ". $sql ." ". $conn->error;
    }
}

?>