# LaTeX-Projekt Setup

## Voraussetzungen

### 1. Ubuntu (WSL) installieren

1. PowerShell als Administrator öffnen
2. Ausführen:
   ```
   wsl --install
   ```
3. PC neu starten
4. Beim ersten Start einen Benutzernamen und Passwort festlegen

### 2. TeX Live in Ubuntu installieren

Terminal in Ubuntu öffnen und ausführen:

```bash
sudo apt update
sudo apt install texlive-full
```

> ⚠️ Die Installation dauert eine Weile (~5 GB).

### 3. Projekt in VS Code öffnen

1. VS Code öffnen
2. Die Extensions installieren (falls nicht vorhanden):
   - **WSL** 
   - **LaTeX Workshop** (`james-yu.latex-workshop`)
3. `F1` → `WSL: Open Folder in WSL...` wählen
4. Den Projektordner auswählen

Danach läuft LaTeX Workshop automatisch über die WSL-Installation.

## Zusammenarbeit im Team

### Workflow

1. Neuen Branch vom `main` erstellen (z.B. `feature/kapitel-einleitung`)
2. Änderungen committen und pushen
3. Pull Request erstellen → Build wird automatisch geprüft
4. Nach Review wird der PR in `main` gemergt → Release wird aktualisiert

### Regeln

- **Nie direkt auf `main` pushen** – immer über Pull Requests
- **Ein Satz pro Zeile** – damit Git-Diffs lesbar bleiben und Reviews möglich sind
- **Kapitel in separaten Dateien** bearbeiten (Ordner `content/`) – weniger Merge-Konflikte
- **Referenzen**: Neue Quellen in `references.bib` eintragen

### PDF herunterladen

Die aktuelle Version ist immer als [GitHub Release](../../releases/latest) verfügbar.

## Video-Anleitung

▶️ [Setup-Video auf YouTube](https://www.youtube.com/watch?v=Mty0vHb0knI)
