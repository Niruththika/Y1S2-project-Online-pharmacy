<?php
$host='localhost';
$user='root';
$password='';
$db='pharmacy';
$conn=mysqli_connect($host,$user,$password,$db);
if(!$conn){
	die('connection failed');
	}
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    // Get the username and password from the form
    $username = $_POST['username'];
    $password = $_POST['password'];

    // Check if the username and password exist in the database
    $sql = "SELECT * FROM user WHERE username = '$username' AND password = '$password'";
    $result = mysqli_query($conn, $sql);

    // Get the user row from the database
    $user = mysqli_fetch_assoc($result);

    // If the user row exists, the user is logged in
    if ($user) {
        // Set the session variable to true
        $_SESSION['logged_in'] = true;

        // Redirect the user to the home page
        header("Location: home.php");
        exit;
    } else {
        // The username and password do not exist in the database, show an error message
        //echo "Invalid username or password";
		header("Location: errorpage.html");
		
    }
}
?>