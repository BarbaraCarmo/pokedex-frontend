# Pokedex

Projeto da disciplina Laboratório de Dispositivos Móveis do curso de Ciência da Computção PUC Minas, quarto período, primeiro semestre de 2022.

## Descrição

Aplicativo mobile desenvolvido em Flutter com o objetivo de listar e visualizar pokémons. 

O backend foi desenvolvido em NestJS e PostgreSQL, contendo o CRUD para criação de conta do usuário, além das rotas para cada serviço do frontend. Inicialmente a ideia proposta é fazer a aplicação rodar em localhost, mas posteriormente levar os dados dos usuários para um banco na nuvem. Segue abaixo o link para o repositório.
(https://github.com/Aphodomus/pokedex-backend)

### Rotas

Algumas das rotas desenvolvidas até o momento foram:

- Listar todos os pokemon
- Listar um pokemon específico
- Fazer a paginação dos pokemon (25 por vez)
- Criar um usuário
- Atualizar as informações de um usuário
- Deletar um usuário
- Listar todos os usuários

Para a realização do mesmo, todos os dados sobre os pokémons, tais como nome, número, tipo, imagem e entre outras informações foram consumidas da API PokeAPI (https://pokeapi.co/).

### Telas Propostas

Para a construção da aplicação foram propostas as seguintes telas:

- Tela de Login
- Tela de Cadastro
- Tela de Perfil
- Tela de Listagem de Pokemon
- Tela de Informação do Pokemon
- Tela de informações sobre o aplicativo