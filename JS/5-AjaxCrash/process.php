<?php 
//connect to a database
$con = mysqli_connect('localhost','root','12345','ajaxtest');

echo 'procesing...';

//check for a post variable
if(isset($_POST['name'])){
    $name = mysqli_real_escape_string($con, $_POST['name']);
    echo 'POST: Your name is ', $_POST['name'];

    $query = "INSERT INTO users(name) VALUES('$name')";

    if(mysqli_query($con, $query)){
        echo 'user added...';
    } else {
        echo 'Error: ', mysqli_error($con);
    }
}

//check for a get variable
if(isset($_GET['name'])){
    echo 'GET: Your name is ', $_GET['name'];
}