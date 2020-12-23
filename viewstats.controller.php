<?php
// Samuel Adegoke ID 1001541794
// Kenneth Garza ID 1001642329
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


    $sql = "SELECT V.Coupon_Amount, V.Student_Staff,V.NAME,V.ID,V.PASSWORD,V.Phone_Number,V.Machine_Number
    FROM vipcustomers as V
    WHERE ID = '$CiD'";

    $result = $conn->query($sql);
    if ($result->num_rows > 0)
    {   
        echo '<table border="2" cellspacing="10" cellpadding="2"> 
        <tr> 
          <td> <b><font face="Arial">Coupon_Amount</font></b> </td> 
          <td> <b><font face="Arial">Student_Staff</font></b> </td> 
          <td> <b><font face="Arial">Name</font></b> </td> 
          <td> <b><font face="Arial">ID</font></b> </td> 
          <td> <b><font face="Arial">Password</font></b> </td> 
          <td> <b><font face="Arial">Phone Number</font></b> </td> 
          <td> <b><font face="Arial">Machine Number</font></b> </td> 
        </tr>';
        while($row = $result->fetch_assoc())
        {
            $field0name = $row["Coupon_Amount"];
            $field1name = $row["Student_Staff"];
            $field3name = $row["NAME"];
            $field4name = $row["ID"];
            $field5name = $row["PASSWORD"];
            $field6name = $row["Phone_Number"];
            $field7name = $row["Machine_Number"];
        echo '<tr> 
                  <td>'.$field0name.'</td>
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