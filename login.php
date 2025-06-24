<?php
session_start();  // MUST be the first line before any HTML or output

$servername = "localhost"; 
$username = "root";
$password = "";
$dbname = "student";

$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$error_message = "";

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = mysqli_real_escape_string($conn, $_POST['username']);
    $password = $_POST['password'];

    $sql = "SELECT RegisterNo, Password FROM registration WHERE Username = ?";
    $stmt = $conn->prepare($sql);
    if (!$stmt) {
        die("SQL preparation failed: " . $conn->error);
    }

    $stmt->bind_param("s", $username);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();
        if ($password === $row['Password']) { // Raw password check (insecure)
            $_SESSION['RegisterNo'] = $row['RegisterNo']; // Store Register No in session
            header("Location: choose.html"); 
            exit();
        } else {
            $error_message = "Invalid username or password."; 
        }
    } else {
        $error_message = "Invalid username or password.";
    }

    $stmt->close();
    $conn->close();
}
?>
