# Google Bookmark

Aplicativo Flutter para buscar livros na [Google Books API](https://developers.google.com/books) e salvar uma estante pessoal de leitura no dispositivo.

---

## Descrição

O **Google Bookmark** permite que o usuário:

- Pesquise livros pelo título ou autor diretamente na Google Books API.
- Adicione livros encontrados à sua estante pessoal.
- Registre data de início e término de leitura e comentários para cada livro.
- Visualize e edite os detalhes de cada livro salvo.
- Remova livros da estante quando desejar.

Os dados pessoais são armazenados localmente no dispositivo com SQLite (via `sqflite`).

---

## Tecnologias

| Tecnologia | Uso |
|---|---|
| [Flutter](https://flutter.dev) / [Dart](https://dart.dev) | Framework principal |
| [`sqflite`](https://pub.dev/packages/sqflite) | Banco de dados SQLite local |
| [`http`](https://pub.dev/packages/http) | Requisições à Google Books API |
| [`flutter_lints`](https://pub.dev/packages/flutter_lints) | Análise estática e boas práticas |

> A Google Books API é utilizada sem chave de API (acesso público ao endpoint de volumes).

---

## Requisitos

- [Flutter SDK](https://docs.flutter.dev/get-started/install) compatível com Dart `>=3.0.5 <4.0.0` (ex: Flutter 3.10 ou superior)
- Dart SDK `>=3.0.5 <4.0.0` (conforme definido em `pubspec.yaml`)
- Android SDK / Xcode (conforme a plataforma-alvo)

---

## Como executar

1. Clone o repositório:

   ```bash
   git clone https://github.com/danvitoriano/flutter_google_bookmark.git
   cd flutter_google_bookmark
   ```

2. Instale as dependências:

   ```bash
   flutter pub get
   ```

3. Execute o app em um dispositivo ou emulador conectado:

   ```bash
   flutter run
   ```

---

## Como testar

O projeto conta com a infraestrutura padrão de testes do Flutter. Para rodar os testes:

```bash
flutter test
```

Os testes estão localizados na pasta `test/`. Para adicionar novos testes de widget ou unitários, crie arquivos `*_test.dart` nessa pasta seguindo o padrão do [`flutter_test`](https://docs.flutter.dev/testing).

---

## Estrutura do projeto

```
flutter_google_bookmark/
├── assets/
│   ├── fonts/          # Fonte customizada (Roboto Serif Extra Bold)
│   └── images/         # Imagens utilizadas no app
├── lib/
│   ├── controllers/    # Lógica de negócio (BookController)
│   ├── dao/            # Acesso ao banco de dados local (PersonalBookDatabase)
│   ├── models/         # Modelos de dados (GoogleBook, PersonalBook)
│   ├── screens/        # Telas do app (Home, Search, BookDetails, etc.)
│   ├── services/       # Integração com a Google Books API
│   ├── theme.dart      # Configurações de tema e cores
│   └── main.dart       # Ponto de entrada do app
├── test/               # Testes automatizados
├── analysis_options.yaml
└── pubspec.yaml
```

---

## Boas práticas e padrões

- O projeto segue as regras de lint do [`flutter_lints`](https://pub.dev/packages/flutter_lints), configuradas em `analysis_options.yaml`.
- Para verificar problemas de análise estática:

  ```bash
  flutter analyze
  ```

- Para formatar o código:

  ```bash
  dart format .
  ```

---

## Contribuição

Contribuições são bem-vindas!

1. Abra uma [issue](https://github.com/danvitoriano/flutter_google_bookmark/issues) descrevendo o problema ou sugestão.
2. Faça um fork do repositório e crie uma branch a partir de `main`.
3. Implemente as alterações e certifique-se de que `flutter analyze` e `flutter test` passam.
4. Abra um Pull Request descrevendo as mudanças realizadas.

---

## Licença

Este repositório não possui arquivo de licença. Entre em contato com o autor para mais informações sobre os termos de uso.
