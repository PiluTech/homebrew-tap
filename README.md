# PiluTech Homebrew Tap

Apps da PiluTech para macOS, assinados com Developer ID e notarizados pela Apple.

```bash
brew trust pilutech/tap
brew install --cask pilutech/tap/trincano
```

O Homebrew pede `brew trust` uma vez antes de instalar de um tap que não é o oficial.

| Cask | App | Código |
| --- | --- | --- |
| `trincano` | [Trincano](https://pilutech.com.br/apps/trincano): gerenciador da barra de menus (fork do Ice, GPL-3.0) | [PiluTech/trincano](https://github.com/PiluTech/trincano) |

Cada cask baixa o `.dmg` oficial da release no GitHub e confere o SHA-256.
