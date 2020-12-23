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
    $NumLogin = filter_input(INPUT_POST, 'Number_of_logins');  
    $MachineNum = filter_input(INPUT_POST, 'Machine_Number');  
    $UniName = filter_input(INPUT_POST, 'University_Name');
    $TotalStore = filter_input(INPUT_POST, 'Total_Storage');  
    
    $sql = "INSERT INTO Machine
        VALUES ('$NumLogin','$MachineNum', '$UniName','$TotalStore')";
    if ($conn->query($sql))
    {
        echo "New record is inserted sucessfully";
    }
    else
    {
        echo "Error: ". $sql ." ". $conn->error;
    }
}

?>