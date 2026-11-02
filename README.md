> **EN:** SwiftUI classroom project exploring navigation, a contact list with detail screens, and a separate tab-based color example with opacity changes and modal presentation. Built in Xcode. Some screens are still placeholders.
>
> *The rest of this README is in Brazilian Portuguese (pt-BR).*

---

# Aula de Reposição — Navegação e Contatos (SwiftUI)

App desenvolvido em **SwiftUI** durante uma aula de reposição para praticar **`NavigationStack`**, **`NavigationLink`**, **`List`**, **`TabView`** e apresentação de telas com **`.sheet`**. O projeto reúne um menu inicial, uma lista de contatos com detalhes e um exemplo independente de navegação por cores.

## Status

**Em desenvolvimento** — Menu, listagem e detalhes de contatos implementados. A tela de perfil contém apenas um texto e o destino de configurações está vazio. O exemplo `TelaTabView` pode ser visualizado pelo Preview, mas ainda não está conectado ao menu inicial.

## Em que consiste

- **`ContentView`** — Menu com links para perfil, configurações e contatos, apresentados em cartões com ícones de SF Symbols.
- **`Contato`** — Modelo `Identifiable` com `UUID`, nome, telefone, e-mail, aniversário, endereço e CEP.
- **`ContatosView`** — Lista de quatro contatos definidos no código, com avatar pela inicial do nome e navegação para a tela de detalhes.
- **`DetalhesContatoView`** — Exibe avatar, nome e informações do contato selecionado.
- **`TelaTabView`** — Exemplo separado com abas vermelha, azul, amarela e verde, cada uma com sua própria pilha de navegação.
- **`ColorView`** — View reutilizável que recebe cor e opacidade. Permite navegar para outra instância com 75% da opacidade atual e abrir uma sheet com 25% da opacidade atual.
- **`aulaReposicaoApp`** — Ponto de entrada que apresenta `ContentView`.

### Fluxo de navegação

O aplicativo inicia no menu de `ContentView`. O acesso a **Contatos** abre a lista; selecionar uma pessoa apresenta `DetalhesContatoView` com seus dados. Os contatos são mantidos em memória, sem cadastro, edição, persistência ou integração com a agenda do sistema.

O exemplo de abas fica em `TelaTabView.swift` e possui seu próprio `#Preview`. Ele não é aberto pelo fluxo principal atual. Apesar do nome **“Show Allert”** no botão de `ColorView`, a apresentação implementada é uma **sheet**, não um alerta.

## Como executar

Compilação para o simulador concluída com sucesso no **Xcode 27.2**, sem alterações no código. As telas e limitações descritas acima correspondem à implementação atual.

### Pré-requisitos

* macOS com uma versão do Xcode compatível com o projeto.
* SDK e simulador/dispositivo compatíveis com **iOS 26.5 ou superior**, versão mínima configurada no projeto.
* Sem dependências externas; os elementos visuais usam SwiftUI e SF Symbols.

### Passo a passo

1. Clone o repositório: `git clone https://github.com/trvzera/AulaReposicao.git`.
2. Abra `aulaReposicao.xcodeproj` no Xcode.
3. Selecione o scheme **aulaReposicao** e um simulador compatível.
4. Execute com **⌘ + R** para acessar o menu inicial e os contatos.
5. Para visualizar o exemplo de abas, abra o **Canvas/Preview** de `TelaTabView.swift`.

Para executar em um dispositivo físico, configure sua equipe de assinatura no Xcode.
