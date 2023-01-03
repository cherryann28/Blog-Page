<?php
    session_start();
    require('new-connection.php');
    if(isset($_POST['action']) && $_POST['action'] == 'post_a_review'){
        $query = "INSERT INTO reviews (user_id, content, created_at) VALUES ({$_SESSION['user_id']}, '{$_POST['review']}', NOW())";
        run_mysql_query($query);
        header('location: index.php');
    }
    else if(isset($_POST['action']) && $_POST['action'] == 'reply'){
        $query = "INSERT INTO replies (user_id, content, review_id, created_at) VALUES ({$_SESSION['user_id']}, '{$_POST['reply']}', {$_POST['review_id']}, NOW())";
        run_mysql_query($query);
        header('location: index.php');
    }

     else if(isset($_POST['action']) && $_POST['action'] == 'register'){
    //    call to function
        register_user($_POST); // use the ACTUAL POST!
    }
    else if(isset($_POST['action']) && $_POST['action'] == 'login'){
        login_user($_POST);
    }
    else{// malicous navigation to process.php OR someone is trying to log off!
          session_destroy();
          header('location: login.php'); 
    }

    function register_user($post){ // just a parameter called post
        $_SESSION['errors'] = array();

        if(empty($post['first_name'])){
            $_SESSION['errors'][] = "first name can't be blank!";
        }
        if(empty($post['last_name'])){
            $_SESSION['errors'][] = "last name can't be blank!";
        }
        if(!checkString($post['first_name'])){
            $_SESSION['errors'][] = "first name  must only contain letters!";
        }
        if(!checkString($post['last_name'])){
            $_SESSION['errors'][] = "last name must only contain letters!";
        }
        if(strlen($post['first_name']) && strlen($post['last_name']) < 2)
        {
            $_SESSION['errors'][] = "first and last names must be at least 2 characters long";
        }
        if(empty($post['password'])){
            $_SESSION['errors'][] = "password field is required!";
        }
        if(strlen($post['password']) < 8){
            $_SESSION['errors'][] = "password must be at least 8 characters long";
        }
    
        if(!filter_var($post['email'], FILTER_VALIDATE_EMAIL)){
            $_SESSION['errors'][] = "please use a valid email address!";
        }
        if($post['password'] !== $post['confirm_password']){
            $_SESSION['errors'][] = "password must match";
        }
        
        
        if(!empty($_SESSION['errors'])){  
            header('location: login.php');
            die();
        }
        else{
            $salt = bin2hex(openssl_random_pseudo_bytes(22));
            $encrypted_password = md5($post['password'] . '' . $salt);
            $query = "INSERT INTO users (first_name, last_name, email, password, created_at, updated_at)
                    VALUES('{$post['first_name']}', '{$post['last_name']}', '{$post['email']}', '{$encrypted_password}', 
                    NOW(), NOW())";
            run_mysql_query($query);
            $_SESSION['success_message'] = "User successsfully created!";
            header('location: login.php');
            die();

        }
    }

    function login_user($post){ 
        $query = "SELECT * FROM users WHERE users.email = '{$post['email']}'"; 
        $user = fetch_all($query); 
        
        if(count($user) > 0){
            $_SESSION['user_id'] = $user[0]['id'];
            $_SESSION['first_name'] = $user[0]['first_name'];
            $_SESSION['last_name'] = $user[0]['last_name'];
            $_SESSION['logged_in'] = TRUE;
            header('location: index.php');  
           
        }  
        else{
            $_SESSION['errors'][] = "account not found!";
            header('location: login.php'); 
            die();
        }
    }

    
    function checkString($string){
        for($i=0; $i<strlen($string); $i++){
            if(intval($string[$i])){
                return false;
            }
        }
        return true;
    }
?>