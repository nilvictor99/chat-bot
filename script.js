function sendMessage() {
    const userInput = document.getElementById('user-input').value;
    const chatBox = document.getElementById('chat-box');

    if (userInput.trim() === '') return;

    // Mostrar pregunta del usuario
    chatBox.innerHTML += `<div class="user-message">Usuario: ${userInput}</div>`;

    // Enviar pregunta al servidor
    fetch('chatbot.php', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/x-www-form-urlencoded',
        },
        body: `question=${encodeURIComponent(userInput)}`,
    })
        .then(response => response.text())
        .then(answer => {
            // Mostrar respuesta del chatbot
            chatBox.innerHTML += `<div class="bot-message">ChatBot: ${answer}</div>`;
            chatBox.scrollTop = chatBox.scrollHeight;
        })
        .catch(error => console.error('Error:', error));

    // Limpiar campo de entrada
    document.getElementById('user-input').value = '';
}
