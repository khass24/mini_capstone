var playerTemplate = document.querySelector('#player-card')
var playerContainer = document.querySelector(".row")

axios.get('http://localhost:3000/api/products').then(function(response) {
  var products = response.data;
  console.log(products);

  products.forEach(function(product) {
    var playerClone = playerTemplate.content.cloneNode(true);

    playerClone.querySelector(".player-name").innerText = product.name;
    playerClone.querySelector(".position").innerText = product.description;
    playerClone.querySelector(".price").innerText = product.price;

    playerContainer.appendChild(playerClone);
  });
});