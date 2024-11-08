<?php 
    include "db.php";
 
    $sid =  (int) $_GET['id'];

    $sql = "SELECT * FROM student where sid = $sid";
    $result = $conn->query($sql);
    
    if ($_SERVER["REQUEST_METHOD"] === "POST"){
        $sid = $_POST['sid'];
        $fname = $_POST['fname'];
        $lname = $_POST['lname'];

        $sql = "UPDATE Student SET sid=$sid, fname='$fname', lname='$lname' where sid=$sid";
        $conn->query($sql);
        header("Location: " . $_SERVER['PHP_SELF'] ."?id=" . $sid);
    }
?>

<!DOCTYPE html>
<html>
    <body>

    <h2>BAUET Student Management System</h2>
    <?php if(!empty($message)): ?>
        <p> <?php echo $message; ?> </p>
    <?php endif; ?>

    <form method='POST'>
        <?php
        
        while($row=$result->fetch_assoc()){
            echo "
                <label for='sid'>SID:</label>
                <br >
                <input type='text' name='sid' value='{$row['sid']}' placeholder='Enter SID:'>
                <br />
                <label for='fname'>First name:</label>
                <br/>
                <input type='text' name='fname' value='{$row['fname']}' placeholder='Enter First Name:'>
                <br/>
                <label for='lname'>Last name:</label>
                <br/>
                <input type='text'  name='lname' value='{$row['lname']}' placeholder='Enter Last Name:'>
                <br/>
                <br/>
            ";
        }
        ?>
        <input type='submit' value='Submit'>
    </form> 


    </body>
</html>

