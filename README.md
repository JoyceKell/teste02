# Teste 02 - Dart

A aplicação consiste em duas páginas, a Página Inicial e a Página Cor Selecionada, que podem ser acessadas através de botões com cores e seus respectivos nomes. Ao clicar em um botão, o usuário é levado para a Página Cor Selecionada, onde é exibido o nome da cor selecionada, um botão de voltar para a Página Inicial, e uma imagem centralizada com o fundo da cor selecionada.

## Implementação

A seguir, são apresentados os detalhes de implementação da aplicação:

## Página Inicial

A Página Inicial é composta por uma AppBar com o título da aplicação e uma lista de botões com cores e seus respectivos nomes. Para cada botão, é definido um objeto ColorButton que recebe a cor e o texto do botão como parâmetros, além de uma função onPressed que é executada ao clicar no botão. Essa função utiliza o objeto Navigator para navegar para a Página Cor Selecionada correspondente à cor do botão clicado.

Além disso, é adicionado um WillPopScope que intercepta a ação de voltar do usuário e exibe um diálogo de confirmação antes de sair da aplicação.

## Página Cor Selecionada

A Página Cor Selecionada é composta por uma AppBar com o nome da cor selecionada e um botão de voltar para a Página Inicial, uma Container com o fundo da cor selecionada e uma Image centralizada. A cor selecionada e a imagem são passadas como parâmetros para a Página Cor Selecionada através do objeto ColorDetailPage.

Ao clicar no botão de voltar, é executada a função Navigator.pop que retorna para a Página Inicial.

## Como Rodar a aplicação

- Instale o Flutter SDK em sua máquina seguindo as instruções oficiais do Flutter: https://flutter.dev/docs/get-started/install
- Verifique se o Flutter SDK foi instalado corretamente executando o comando "flutter doctor" em seu terminal.
- Abra o projeto em um editor de código de sua escolha, como o Visual Studio Code ou Android Studio.
  Certifique-se de que seu dispositivo Android ou iOS esteja conectado ao computador e com o modo de depuração USB - ativado. Caso você não tenha um dispositivo físico, você pode rodar um emulador seguindo as instruções oficiais do Flutter: https://flutter.dev/docs/get-started/install
  Execute o comando "flutter run" em seu terminal dentro do diretório do projeto para iniciar a aplicação.
- A aplicação será compilada e instalada em seu dispositivo ou emulador, e você poderá interagir com ela normalmente.
- Lembrando que, para testar a funcionalidade de sair da aplicação com o botão de voltar, é necessário rodar a aplicação em um dispositivo físico ou emulador, e não somente em um navegador através do Flutter Web.
