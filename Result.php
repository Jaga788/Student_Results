<?php
// Database connection
$servername = "localhost";
$username = "root";  // Default XAMPP username
$password = "";      // Default XAMPP password (empty)
$database = "student";

$conn = new mysqli($servername, $username, $password, $database);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Check if form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $regno = $_POST["regno"];
    $selectedOption = $_POST["selectedOption"];
    $action = $_POST["action"];

    if (!empty($regno) && !empty($selectedOption) && !empty($action)) {
        // ✅ Construct the table name while keeping hyphens
        $tableName = "{$selectedOption}_{$action}"; // Example: 1-1_mid-1

        // ✅ Enclose table name in backticks to prevent syntax errors
        $query = "SELECT * FROM `$tableName` WHERE RegisterNo = ?";
        $stmt = $conn->prepare($query);

        // Debugging: Check if query preparation was successful
        if (!$stmt) {
            die("<p class='error'>❌ SQL Query Error: " . $conn->error . "</p>");
        }

        $stmt->bind_param("s", $regno);
        $stmt->execute();
        $result = $stmt->get_result();

        // Apply CSS styling
        echo "<!DOCTYPE html>
        <html lang='en'>
        <head>
            <meta charset='UTF-8'>
            <meta name='viewport' content='width=device-width, initial-scale=1.0'>
            <title>Results</title>
            <style>
                body { font-family: Arial, sans-serif; background-color: #f2f2f2; text-align: center; }
                .container { width: 60%; margin: 50px auto; padding: 20px; background-color: white; border-radius: 8px; box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); }
                table { width: 100%; border-collapse: collapse; margin-top: 20px; }
                th, td { border: 1px solid #ddd; padding: 10px; text-align: center; }
                th { background-color: #4CAF50; color: white; }
                tr:nth-child(even) { background-color: #f9f9f9; }
                .error { color: red; font-weight: bold; }
                .no-results { color: orange; font-weight: bold; }
                .buttons { margin-top: 20px; }
                .buttons button { padding: 10px 20px; border: none; border-radius: 4px; cursor: pointer; font-size: 16px; margin: 10px; }
                .back-btn { background-color: #008CBA; color: white; }
                .logout-btn { background-color: #f44336; color: white; }
                .back-btn:hover { background-color: #0073a8; }
                .logout-btn:hover { background-color: #d32f2f; }
            </style>
        </head>
        <body>
        <div class='container'>";

        if ($result->num_rows > 0) {
            echo "<h2>Results for Register No: $regno ($tableName)</h2>";
            echo "<table>";
            echo "<tr>";

            // Fetch column names dynamically
            while ($fieldinfo = $result->fetch_field()) {
                echo "<th>" . htmlspecialchars($fieldinfo->name) . "</th>";
            }
            echo "</tr>";

            // Fetch rows
            while ($row = $result->fetch_assoc()) {
                echo "<tr>";
                foreach ($row as $data) {
                    echo "<td>" . htmlspecialchars($data) . "</td>";
                }
                echo "</tr>";
            }

            echo "</table>";
        } else {
            echo "<p class='no-results'>⚠ No results found for Register No: $regno in $tableName.</p>";
        }

        // Add buttons at the bottom
        echo "<div class='buttons'>
                <button class='back-btn' onclick=\"window.location.href='choose.html'\">🔙 Back to Choose</button>
                <button class='logout-btn' onclick=\"window.location.href='login.html'\">🚪 Logout</button>
              </div>";

        echo "</div></body></html>";

        $stmt->close();
    } else {
        echo "<p class='error'>⚠ Please enter your Register Number, select a semester, and click a button.</p>";
    }
}

// Close the connection
$conn->close();
?>
