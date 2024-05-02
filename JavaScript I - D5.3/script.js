document.getElementById('titulo').innerText = 'Produto simples';

const divProduto = document.createElement('div');
const nomeProduto = document.createElement('h2');
const descProduto = document.createElement('p');
const precoProduto = document.createElement('p');

nomeProduto.innerText = 'nome do produto';
descProduto.innerText = 'desc do produto';
precoProduto.innerText = 'preco do produto';

divProduto.appendChild(nomeProduto);
divProduto.appendChild(descProduto);
divProduto.appendChild(precoProduto);

document.body.appendChild(divProduto);