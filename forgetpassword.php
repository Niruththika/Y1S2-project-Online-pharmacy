<?php
// Connect to the database
$conn = mysqli_connect("localhost", "root", "", "pharmacy");

// Check if the form was submitted
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    // Get the username and email from the form
    $username = $_POST['username'];
   

    // Check if the username and email exist in the database
    $sql = "SELECT * FROM user WHERE username = '$username'";
    $result = mysqli_query($conn, $sql);

    // Get the user row from the database
    $user = mysqli_fetch_assoc($result);

    // If the user row exists, generate a new password and send it to the user's email address
    if ($user) {
		
        $new_password = $_POST['newpassword'];
        mysqli_query($conn, "UPDATE user SET password = '$new_password' WHERE username = '$username'");

      

        // Redirect the user to the login page
        header("Location: login page .html");
        exit;
    } else {
        // The username and email do not exist in the database, show an error message
        echo "Invalid username or email";
    }
}
?>