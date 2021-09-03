# Desafio Desenvolvedor Flutter
## Desenvolver uma aplicação mobile responsável por atribuir atividades para técnicos e estes registrarem a realização delas.


Suposições Realizadas
=================
<!--ts-->
* Aplicação tem dois tipos de visualização: Administrador e Técnico.
* Administrador pode:
    * Incluir, excluir, atualizar e visualizar técnicos.
    * Incluir, excluir, atualizar e visualizar atividades.
    * Atribuir atividades aos técnicos.
* Técnico pode:
    *  Visualizar as atividades atribuídas para si.
    *  Registrar realização (ou não) das atividades atribuídas.
* Dados manipulados dentro de uma mesma execução do aplicativo são coesos.
* Utilização da biblioteca Flutter Modular, para navegação entre telas na aplicação como injeção de dependência.
* Utilização da biblioteca MobX, para manipular dados reativos na aplicação.
<!--te-->

<h4 align="center"> 
	🚧  Aplicativo em Flutter  🚧
</h4>

### Pré-requisitos

Antes de começar, você vai precisar ter instalado em sua máquina as seguintes ferramentas:
[Git](https://git-scm.com), [Flutter](https://flutter.dev/docs/get-started/install).
Além disto é bom ter um editor para trabalhar com o código como [Intellij](https://www.jetbrains.com/idea/download/#section=windows).

### Rodando o Projeto

```bash
# Clone este repositório:
$ git clone https://github.com/felipe2121/Desafio-Desenvolvedor-Flutter.git

# Acesse a pasta do projeto no Intellij;

# Instalar plugin Flutter no Intellij, depois reiniciar o Intellij;

# Agora fazer o dowload do Dart SDK (canto superior direito);

# Clicar em 'Open Dart settings', clicar no chebox 'Enable Dart Support for project', no campo 'Dart SDK path' selecionar o arquivo 'dart-sdk' dentro do arquivo flutter baixado anteriormente (flutter/bin/dart-sdk), depois clicar no chebox do 'Project', clicar em 'Apply' e 'OK';

# Clicar em 'Get dependencies' (canto superior direito);

# Selecione onde emular o aplicativo (no canto superior), recomendável selecionar um navegador se não tiver um emulador de celular intalado;

# Execute clicando no botão play verde;
```

### 🛠 Tecnologias

As seguintes ferramentas foram usadas na construção do projeto:

- [Flutter](https://flutter.dev/)
- [Dart](https://dart.dev/)
- [MobX](https://pub.dev/packages/mobx)
- [Flutter modular](https://pub.dev/packages/flutter_modular)
- [Material design](https://material.io/design)
