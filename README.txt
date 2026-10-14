# CashHuntersPremium Clone – Inno Setup Script

## Objetivo
Gerar um instalador Windows que copie os arquivos do instalador original (extraídos via Wine) **sem** o ecrã de login/token. Após a instalação, o Gerenciador_Bots.exe é iniciado automaticamente.

## Estrutura de pastas esperada (no Windows)

```
CashHuntersClone/
│
├─ CashHuntersClone.iss          ; <-- script Inno Setup (incluído abaixo)
│
├─ source/                        ; <-- pasta com os arquivos originais
│   ├─ Gerenciador_Bots.exe
│   ├─ Cash Premium.exe
│   ├─ lib/
│   │   ├─ *.dll
│   │   └─ PySide6/
│   │       └─ *.dll
│   ├─ Configuracoes/
│   ├─ Imagens/
│   ├─ Mercado_Pago/
│   └─ _Scripts/
│
└─ README.txt                     ; <-- este arquivo
```

> **Nota:** A pasta `source/` deve conter os mesmos arquivos que estavam em  
> `~/.wine/drive_c/users/joaovitor/Desktop/"Cash Hunters Premium"` (copiados do Wine).  
> Se não tiver os arquivos exatos, copie o que tiver; o script usa `ignoreversion` para não falhar em versões diferentes.

## Como compilar (Windows)

1. **Instale o Inno Setup**  
   Baixe em https://jrsoftware.org/isdl.php e instale o Inno Setup 6.

2. **Abra o Inno Setup Development Environment** e carregue `CashHuntersClone.iss`.

3. **Compile** (Clique em “Compile” ou pressione F6).  
   O instalador gerado aparecerá na pasta `Output/` do Inno Setup.

4. **Execute o instalador** em qualquer Windows – ele pedirá a pasta de instalação e, ao terminar, iniciará o `Gerenciador_Bots.exe` automaticamente, sem pedir token.

## Personalização

- Para usar caminhos absolutos em vez de `{src}`, abra o ficheiro `.iss` e substitua linhas como  
  `Source: "{src}\Gerenciador_Bots.exe"` por  
  `Source: "C:\Users\SeuUsuario\Downloads\Gerenciador_Bots.exe"`.
- Se quiser alterar o nome da pasta inicial, a versão ou o ícone, edite a secção `[Setup]` do script.

## Licença

Este script baseia-se no instalador original CashHunters Premium (analysei via REA/Ghidra). Use-o apenas para fins de estudo/clone privado.

---
*Gerado a partir da análise REA do executável CashHunters_Premium_Setup.exe (SHA‑256: 8eaa4d6d…).*