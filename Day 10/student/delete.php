<?php 
    include "db.php";
 
    $sid =  (int) $_GET['id'];

    if($_SERVER["REQUEST_METHOD"] === "GET"){
        $sql = "SELECT * FROM student where sid = $sid";
        $result = $conn->query($sql);
    }else if ($_SERVER["REQUEST_METHOD"] === "POST"){
        $sql = "DELETE FROM student where sid = $sid";
        $conn->query($sql);
        header('Location: ./main.php');
    }

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Delete student</title>
</head>
<body>
    Delete student information for :
    <?php 
        if($result->num_rows){
            while($row=$result->fetch_assoc()){
                echo "
                    {$row['fname']} {$row['lname']}
                ";
            }
        }
    ?>
    <form method="POST">
        <input type="submit" value="Delete">
    </form>
</body>
</html>