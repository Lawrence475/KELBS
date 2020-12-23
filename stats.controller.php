<?php
$host = "localhost";
$dbusername = "root";
$dbpassword = "";
$dbname = "phase3";//Create connection
$conn = new mysqli($host, $dbusername,$dbpassword,$dbname);// Check connection
if($conn->connect_error) 
{ 
    die("Connection failed");
}
    $CiD = filter_input(INPUT_POST, 'CiD');


    $sql = "SELECT customers.Student_Staff,customers.Name,customers.ID,customers.Password,customers.Phone_Number,customers.Machine_Number
    FROM customers
    WHERE ID = '$CiD'";

    $result = $conn->query($sql);
    if ($result->num_rows > 0)
    {   
        echo '<table border="2" cellspacing="10" cellpadding="2"> 
        <tr> 
          <td> <b><font face="Arial">Student_Staff</font></b> </td> 
          <td> <b><font face="Arial">Name</font></b> </td> 
          <td> <b><font face="Arial">ID</font></b> </td> 
          <td> <b><font face="Arial">Password</font></b> </td> 
          <td> <b><font face="Arial">Phone Number</font></b> </td> 
          <td> <b><font face="Arial">Machine Number</font></b> </td> 
        </tr>';
        while($row = $result->fetch_assoc())
        {
            $field1name = $row["Student_Staff"];
            $field3name = $row["Name"];
            $field4name = $row["ID"];
            $field5name = $row["Password"];
            $field6name = $row["Phone_Number"];
            $field7name = $row["Machine_Number"];
        echo '<tr> 
                  <td>'.$field1name.'</td> 
                  <td>'.$field3name.'</td>
                  <td>'.$field4name.'</td>
                  <td>'.$field5name.'</td> 
                  <td>'.$field6name.'</td>
                  <td>'.$field7name.'</td>  
              </tr>';
        }
        $result->free();
    }
    else   
    {      
        echo "No Record Available";      
        die();    
    }  

    $conn->close();

?>