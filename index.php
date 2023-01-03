<?php
    session_start();
    require('new-connection.php'); 
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Blog Page</title>
</head>
<body>
    <div class="blog_page">
        <div class="header">
            <h1>Blog</h1>
            <div class="signout">
<?php   if(isset($_SESSION['first_name'])){
    ?>
                <p>Welcome <?= $_SESSION['first_name'] ?>! <a href="process.php">Log off</a></p>   
<?php   } else { ?>
                 <a class="login" href="login.php">Login</a>
<?php }  
        ?> 
            </div>   
        </div>
        <div class="title">
            <h2>Title</h2>
            <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. 
                Nostrum provident aspernatur totam quidem facilis quibusdam 
                voluptates ratione distinctio numquam aut asperiores ab quae, 
                laboriosam fugiat nihil laborum magnam ipsa itaque. Beatae 
                dignissimos tempore aut voluptatem nisi magnam aliquid porro, 
                iste, voluptate facilis esse eius voluptates ea eveniet ab quam sapiente?
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus, 
                maiores eum nemo ratione dolorem enim incidunt placeat porro culpa optio 
                adipisci voluptatibus quam dolores officia omnis ipsum corporis aliquid sunt 
                molestias! Similique asperiores fugit explicabo consequuntur libero earum 
                quidem dicta possimus rerum maiores, delectus placeat obcaecati. Eius dolore 
                dicta perspiciatis!
            </p>
        </div>     
        <div class="reviews">
            <h2>Leave a Review</h2>
            <form action="process.php" method="post" id="review">
                <input type="hidden" name="action" value="post_a_review">
                <textarea name="review" id="review_textarea" cols="160" rows="10"></textarea>
                <input type="submit" value="Post a review">
            </form>
<?php
        $reviews = fetch_all("SELECT reviews.*, users.first_name, users.last_name FROM reviews LEFT JOIN users ON users.id = reviews.user_id ORDER BY id DESC");      
?>

<?php
    foreach($reviews as $review){
?>
       <h2><?= ucfirst($review['first_name']) ?> <?= ucfirst($review['last_name']) ?> (<?= date($review['created_at']) ?>)</h2>
        <p class="p"><?= $review['content'] ?></p>
<?php
    $replies = fetch_all("SELECT replies.*, users.first_name, users.last_name FROM replies LEFT JOIN users ON users.id = replies.user_id
                        WHERE replies.review_id = {$review['id']}");
?>

<?php 
    foreach($replies as $reply){
?>
    <h3><?= ucfirst($reply['first_name']) ?> <?= ucfirst($reply['last_name']) ?> (<?= $reply['created_at'] ?>)</h3>
        <p><?= $reply['content'] ?></p>
 <?php   } ?>      
        <form action="process.php" method="post">
                <input type="hidden" name="action" value="reply" id="reply">
                <input type="hidden" name="review_id" value="<?= $review['id'] ?>">
                <textarea name="reply" id="textarea" cols="122" rows="10"></textarea>
                <input type="submit" value="Reply" id="reply">
        </form> 
<?php       
    }
?>     
        </div>
    </div>
    
</body>
</html>