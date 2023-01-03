<?php
session_start();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Authentication I</title>
</head>
<body>
    <div class="container">
<?php
    if(isset($_SESSION['errors'])){
        foreach($_SESSION['errors'] as $error){
            echo "<p class='error'>{$error}<?p>";
        }
        unset($_SESSION['errors']);
    }
    if(isset($_SESSION['success_message'])){
        echo "<p class='success_message'>{$_SESSION['success_message']}</p>";
        unset($_SESSION['success_message']);
    }
?>
        <form action="process.php" method="post" id="register">
            <h2>Registration Form</h2>
            <input type="hidden" name="action" value="register">
            Firstname: <input type="text" name="first_name">
            Lastname: <input type="text" name="last_name">
            Email: <input type="text" name="email">
            Password: <input type="password" name="password">
            Confirm password: <input type="password" name="confirm_password">
            <input type="submit" value="register">
        </form>
        <form action="process.php" method="post" id="login">
            <h2>Log in Form</h2>
            <input type="hidden" name="action" value="login">
            Email: <input type="text" name="email"><br>
            Password: <input type="password" name="password"><br>
            <input type="submit" value="login">
        </form>
    </div>
</body>
</html>