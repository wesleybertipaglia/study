let stock = [];
const cart = [];

function init() {
    fetchStock();
    showStock();
    displayCartCounter();
}


function fetchStock() {
    fetch("./src/stock.json")
        .then(response => {
            if (!response.ok) {
                throw new Error("Network response was not ok");
            }
            return response.json();
        })
        .then(data => {
            showStock(data);
        })
        .catch(error => {
            console.error("Error fetching data:", error);
        });
}

function showStock(products) {
    stock = products;
    let shelf = document.querySelector("#shelf");

    stock.map((item) => {
        const product = document.createElement("div");
        product.classList.add("product");

        const productContent = `
        <img src="${item.image}" alt="Product Image" />
        <div class='product-description'>
            <p class='name'>${item.name}</p>
            <p class='price'>U$ ${item.price}</p>
        </div>`;
        product.innerHTML = productContent;

        const addToCartButton = document.createElement("button");
        addToCartButton.textContent = 'Add to cart'

        addToCartButton.addEventListener('click', () => {
            addToCart(item);
        });

        product.appendChild(addToCartButton);
        shelf.appendChild(product);
    });
}

function addToCart(item) {
    cart.push(item);

    const cartCounter = document.getElementById("cart-counter");
    cartCounter.innerHTML = cart.length;

    const notification = showCartNotification(item);
    cartCounter.appendChild(notification);

    setTimeout(() => {
        cartCounter.removeChild(notification)
    }, 2000);
}

function showCartNotification(item) {
    const notificationContent = `
    <img src="${item.image}" alt="Product Image" />
    <div class='product-description'>
        <p class='name'>${item.name}</p>
        <p class='price'>U$ ${item.price}</p>
    </div>`;

    const notification = document.createElement('div');
    notification.classList.add('notification');
    notification.innerHTML = notificationContent;
    return notification;
}

init();
