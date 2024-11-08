<!-- main.php -->

<?php 
    include "db.php";
    $sql = "SELECT * FROM student";
    $result = $conn->query($sql);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
    <h2>All Students Data </h2>

    <table border='1'>
        <tr>
            <th>Student ID</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Actions</th>
            
        </tr>
        <?php 
            if($result->num_rows){
                while($row=$result->fetch_assoc()){
                    echo "
                        <tr>
                            <td>{$row['sid']}</td>
                            <td>{$row['fname']}</td>
                            <td>{$row['lname']}</td>
                            <td><a href='./delete.php?id={$row['sid']}'>❌</a> <a href='./edit.php?id={$row['sid']}'>✏️</a></td>
                        </tr>
                    ";
                }
            } else{
                echo "<tr><td colspan='4'><center>No records found.</center></td></tr>";
            }
        ?>
    </table>
</body>
</html>