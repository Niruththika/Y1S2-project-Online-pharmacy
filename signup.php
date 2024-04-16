<?php
$conn = mysqli_connect("localhost", "root", "", "pharmacy");

  // Get the first name, last name, username, password, mobile, and address from the user.
  $first_name = $_POST["first_name"];
  $last_name = $_POST["last_name"];
  $username = $_POST["username"];
  $password = $_POST["password"];
  $mobile = $_POST["mobile"];
  $address = $_POST["address"];

  // Check if the user has entered all the required information.
  if (empty($first_name) || empty($last_name) || empty($username) || empty($password) || empty($mobile) || empty($address)) {
    echo "Please enter all the required information.";
    return;
  }

  // Check if the username is already in use.
  $sql = "SELECT * FROM user WHERE username = '$username'";
  $result = mysqli_query($GLOBALS["conn"], $sql);
  if (mysqli_num_rows($result) > 0) {
    echo "The username '$username' is already in use. Please choose a different username.";
    return;
  }





  // Insert the user into the database.
  $sql = "INSERT INTO users (first_name, last_name, username, password, mobile, address) VALUES ('$first_name', '$last_name', '$username', '$password', '$mobile', '$address')";
  mysqli_query($GLOBALS["conn"], $sql);

  // Redirect the user to the homepage.
  header("Location: login page .html");

?>