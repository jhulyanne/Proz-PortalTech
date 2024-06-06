let titulo = document.getElementById('titulo')
let link = document.querySelector('a');

titulo.innerText = 'Livros favoritos'
link.innerText = 'Site da Proz'
let listaNaoOrdenada = document.querySelector('ul')
let listaOrdenada = document.querySelector('ol')

listaNaoOrdenada.innerHTML = `
  <li><i>Contágio</i> - <strong>David Koepp</strong></li>
  <li><i>Muito Romântico</i> - <strong>Antônio Brandão</strong></li>
  <li><i>A maldição do espelho</i> - <strong>Agatha Christie</strong></li>
  
`
listaOrdenada.innerHTML = `
  <li><a href="https://www.youtube.com/">Youtube</a></li>
  <li><a href="https://www.instagram.com/">Instagram</a></li>
  <li><a href="https://www.linkedin.com/">Linkedin</a></li>
`