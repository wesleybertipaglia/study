const messagesBox = document.getElementById('messages');
const messageForm = document.getElementById('message-form');
const messageInput = document.getElementById('message-input');
let machineMessages = [];

async function getMessages() {
    machineMessages = await fetch('./src/messages.json')
        .then((response) => response.json())
        .catch(error => {
            console.error("Error fetching data:", error);
        });
}

function main() {
    messageForm.addEventListener('submit', (e) => {
        e.preventDefault();
        let message = messageInput.value;
        sendMessage(message);
    });

    getMessages();
}

function newMessage(from, message) {
    const newMessageElement = document.createElement('div');
    newMessageElement.classList.add('message', `from-${from}`);
    const newMessageTime = `${new Date().getHours()}:${new Date().getMinutes()}`

    const newMessageContent = `
    <div class='content'>
        <p><span class='${from}-name'>${from}<span> - ${newMessageTime}</p>
        <p>${message}</p>
    </div>`;

    newMessageElement.innerHTML = newMessageContent;
    messagesBox.appendChild(newMessageElement);
}

function sendMessage(message) {
    newMessage('user', message);
    replyMessage();
}

function replyMessage() {
    let randomIndex = Math.floor(Math.random() * machineMessages.length)
    let message = machineMessages[randomIndex];

    setTimeout(() => {
        newMessage('machine', message.content)
    }, 2000);
}

main();