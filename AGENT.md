# Agent-Stilregeln für dieses LaTeX-Projekt

## Doppelpunkt-Regel

Doppelpunkte sind **nur erlaubt** bei:
- **Aufzählungs-Labels** in `\item`: `\item \textbf{Begriff:} Erklärung...`
- **Vor `\begin{enumerate}` / `\begin{itemize}`** als Ankündigung einer Liste
- **Vor Gleichungen** (`\begin{equation}`)
- **Nach "lautet"** o.ä. wenn eine Forschungsfrage/Definition folgt

Doppelpunkte sind **verboten** in:
- Fließtext, wo ein Hauptsatz einen Folgesatz einleitet (stattdessen Punkt oder Nebensatz verwenden)
- Konstruktionen wie "Der Grund ist folgender: ..." (→ "Der Grund liegt in ...")
- "X ist aus zwei Gründen relevant: Erstens..." (→ "X ist aus zwei Gründen relevant. Erstens...")

## Gedankenstriche (--) 

Nicht verwenden. Alternativen:
- Apposition → Komma: "die Hamming-Distanz, also die Anzahl..."
- Einschub → Nebensatz: "also die nachträgliche Kompression eines bestehenden Float-Raums, ist..."
- Nachgestellte Erklärung → eigener Satz

## Allgemeiner Stil

- Keine "Erstens/Zweitens"-Aufzählungen im Fließtext → "Zum einen / zum anderen" oder eigene Sätze
- Keine rhetorischen Fragen als Überleitung (z.B. "Was bedeutet das?")
- Vermeide repetitive Satzmuster (Hauptsatz + Doppelpunkt + Erklärung)
- Ein Satz pro Zeile (für Git-Diffs)
- Sprache: Deutsch, wissenschaftlich, aber nicht gestelzt

## LaTeX-Konventionen

- `\textbf{Label:}` mit Doppelpunkt in Aufzählungen
- `%` zwischen Absätzen für visuelle Trennung
- Referenzen: `\cite{key}`, Querverweise: `\ref{label}`
- Zahlen mit `\,` als Tausendertrenner: `10\,000`
