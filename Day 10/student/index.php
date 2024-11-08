<!-- index.php -->

<?php 
    include "db.php";

    if($_SERVER["REQUEST_METHOD"] === "POST"){
        $sid = $_POST['sid'];    
        $fname = $_POST['fname'];
        $lname = $_POST['lname'];

        $sql = "INSERT INTO Student (sid,fname,lname) values ('$sid','$fname', '$lname')";

        if($conn->query($sql)){
            $message = "New data successfully inserted";
        }else{
            $message = "Error:".$sql."<br>".$conn->error;
        }
    }
    $conn->close();
?>

<!DOCTYPE html>
<html>
    <body>

    <h2>BAUET Student Management System</h2>
    <?php if(!empty($message)): ?>
        <p> <?php echo $message; ?> </p>
    <?php endif; ?>

    <form method="POST">
        <label for="sid">SID:</label>
        <br >
        <input type="text" name="sid" placeholder="Enter SID:">
        <br />
        <label for="fname">First name:</label>
        <br/>
        <input type="text" name="fname" placeholder="Enter First Name:">
        <br/>
        <label for="lname">Last name:</label>
        <br/>
        <input type="text"  name="lname" placeholder="Enter Last Name:">
        <br/>
        <br/>
        <input type="submit" value="Submit">
    </form> 


    </body>
</html>

