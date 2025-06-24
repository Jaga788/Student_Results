<?php
session_start();  // Start session

$servername = "localhost"; 
$username = "root";
$password = "";
$dbname = "student";

$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $Name = mysqli_real_escape_string($conn, $_POST['Name']);
    $RegisterNo = mysqli_real_escape_string($conn, $_POST['RegisterNo']);
    $Username = mysqli_real_escape_string($conn, $_POST['Username']);
    $Password = mysqli_real_escape_string($conn, $_POST['Password']); // Stores raw password
    $Branch = mysqli_real_escape_string($conn, $_POST['Branch']);

    $sql = "INSERT INTO registration (Name, RegisterNo, Username, Password, Branch) VALUES (?, ?, ?, ?, ?)";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("sssss", $Name, $RegisterNo, $Username, $Password, $Branch);

    if ($stmt->execute()) {
        header("Location: login.html");
        exit();
    } else {
        echo "Error: " . $stmt->error;
    }

    $stmt->close();
    $conn->close();
}
?>
