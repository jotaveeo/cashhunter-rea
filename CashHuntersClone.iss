; Inno Setup script for Cash Hunters Premium clone (without login screen)
; ---------------------------------------------------------------------------
; This script copies the essential files extracted from the original Windows
; installer (found in ~/.wine/drive_c/users/joaovitor/Desktop/"Cash Hunters Premium")
; and creates the standard Start Menu shortcuts.  It does NOT show a login/token
; screen – the program starts directly after installation.

[Setup]
; --- Metadados ---
AppName=Cash Hunters Premium
AppVersion=1.6.5
AppPublisher=Joao Vitor
DefaultDirName={cmdprogramfiles64}\CashHunters
Uninstallable=yes
SetupIconFile={src}\Imagens\E6C0_Cash_hunters.0
DefaultGroupName=Cash Hunters

; --- Tarefas (opcional) ---
[Tasks]
Name: "fulltasks"; Description: "Instalar todos os componentes"
Name: "minimal"; Description: "Instalar apenas o bote básico"; Minimal

; --- Ficheiros a copiar ---
[Files]
; --- Essenciais extraídos da pasta do instalador original ---
; Ajuste {src} para a pasta onde este script for executado (ou use caminhos absolutos).
Source: "{src}\Gerenciador_Bots.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "{src}\Cash Premium.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "{src}\lib\*.dll"; DestDir: "{app}\lib"; Flags: ignoreversion
Source: "{src}\lib\PySide6\*.dll"; DestDir: "{app}\lib\PySide6"; Flags: ignoreversion
Source: "{src}\lib\*.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "{src}\Configuracoes\*.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "{src}\Imagens\*.png"; DestDir: "{app}\Imagens"; Flags: ignoreversion
Source: "{src}\Mercado_Pago\*.dll"; DestDir: "{app}\Mercado_Pago"; Flags: ignoreversion
Source: "{src}\_Scripts\*.txt"; DestDir: "{app}\_Scripts"; Flags: ignoreversion

; --- Atalhos ---
[Icons]
Name: "{commonappdata}\Microsoft\Windows\Start Menu\Programs\Cash Hunters\Cash Hunters Premium"; Filename: "{app}\Cash Premium.exe"
Name: "{commonappdata}\Microsoft\Windows\Start Menu\Programs\Cash Hunters\Desinstalar o Cash Hunters Premium"; Filename: "{app}\unins000.exe"
Name: "{commonappdata}\Microsoft\Windows\Start Menu\Programs\Cash Hunters\Gerenciador de Bots"; Filename: "{app}\Gerenciador_Bots.exe"

; --- Executar após a instalação (opcional) ---
[Run]
Filename: "{app}\Gerenciador_Bots.exe"; Description: "Iniciar Cash Hunters"; Status: auto

; --- Strings (PT‑BR) ---
[Strings]
pt_BR.TextStyle = "Texto de estilo pt‑BR"
pt_BR.ComponentsButton = "&Componentes"
pt_BR.TasksButton = "&Tarefas"
pt_BR.DirValueLabel = "Pasta de instalação:"
pt_BR.SelectDirDialogTitle = "Selecionar pasta de instalação de Cash Hunters Premium"
pt_BR.InstallButton = "&Instalar"
pt_BR.UninstallButton = "Desinstalar"
pt_BR.Installing = "Instalando..."
pt_BR.Uninstalling = "Desinstalando..."

; ---------------------------------------------------------------------------