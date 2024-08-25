<?php
// Configuración de la base de datos
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "chatbot";

// Crear conexión
$conn = new mysqli($servername, $username, $password, $dbname);

// Verificar conexión
if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}

// Obtener la pregunta del usuario
$question = $_POST['question'];

// Consultar la base de datos para encontrar una respuesta
$sql = "SELECT answer FROM faqs WHERE question LIKE ?";
$stmt = $conn->prepare($sql);
$search = "%$question%";
$stmt->bind_param("s", $search);
$stmt->execute();
$stmt->store_result();

if ($stmt->num_rows > 0) {
    $stmt->bind_result($answer);
    $stmt->fetch();
    echo $answer;
} else {
    echo "Lo siento, no tengo una respuesta para eso.";
}

$stmt->close();
$conn->close();
?>
