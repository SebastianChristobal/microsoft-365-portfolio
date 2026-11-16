# Arkitektur och designval

[Till portföljens startsida](README.md)

Diagrammen visar piloternas uppbyggnad. Produktionsalternativen längst ned är en målbild och är inte driftsatta.

## Avtalsportalen i piloten

```mermaid
flowchart TD
    C["Kundkonfiguration och dokumentmallar"] --> PS["PowerShell och PnP-moduler"]
    PS --> H["SharePoint-hubb"]
    PS --> D["Åtta avdelningssajter"]
    H -->|"Navigation och samlade nyheter"| D
    D --> B["Elva avtalsbibliotek"]
    B --> M["Innehållstyper, metadata och versioner"]
    B --> I["SharePoints sökindex"]
    I --> S["SPFx avtalssökning via Search REST"]
    B -->|"Direkt läsning via REST"| O["SPFx avtalsöversikt"]
```

Sökningen använder indexet för fritext och filtrering. Översikten läser metadata direkt för uppföljning av ansvar, slutdatum och uppsägningsdag. Båda följer den inloggade användarens åtkomst.

## Projektportalen i piloten

```mermaid
flowchart TD
    R["Projektregister i SharePoint-hubben"] -->|"Beställd"| P["Operatör startar PowerShell"]
    C["Kundkonfiguration och projektmallar"] --> P
    P --> G["Microsoft 365-grupp och Team"]
    P --> S["Projektsajt, bibliotek och dokumentmallar"]
    P --> PL["Planner-plan och aktiviteter"]
    G --> V["Verifiering och körjournal"]
    S --> V
    PL --> V
    V -->|"ID:n, länkar och leveransstatus"| R
    R --> K["Formaterad knapp Öppna projekt"]
    K --> D["Gemensam projektdashboard med projectId"]
    D -->|"SharePoint REST"| R
    D -->|"Microsoft Graph"| PL
    R --> ST["Separat SPFx-app för statistik"]
```

## Principer i utvecklingen

- **Konfiguration före kopierad kod.** Bibliotek, metadata och projektmallar kan anpassas per kund genom konfiguration.
- **Avgränsade ändringar.** Befintliga resurser och ägarmarkörer kontrolleras innan ändring. Journal och resurs-ID:n stödjer kontrollerad återupptagning.
- **Olika ansvar för klient och körmotor.** SPFx använder användarens kontext. Administrativa provisioneringsoperationer körs separat, utan administratörshemligheter i klientkoden.
- **Verifiering efter skapande.** En returnerad API-respons är inte ensam ett kvitto på en färdig arbetsyta. Resurser och konfiguration läses tillbaka.
- **Separata apppaket.** Sökning, avtalsöversikt, projektdashboard och statistik kan byggas och uppdateras oberoende.

## Målbild för obevakad projektprovisionering

```mermaid
flowchart TD
    A["Projektbeställning"] --> B["Godkännande och beständig beställningslagring"]
    B --> C{"Val av körmiljö"}
    C --> D["Alternativ A Azure Automation med PowerShell-runbook"]
    C --> E["Alternativ B Azure Functions och vid behov Durable Functions"]
    D --> F["Provisioneringssteg via Graph och SharePoint"]
    E --> F
    F --> G["Verifiering, journal och återrapportering"]
    G --> H["Samma projektregister och dashboard"]
```

Automation och Functions är alternativa körmiljöer, inte två obligatoriska tjänster. Power Automate kan användas för godkännande och jobbstart. Piloten använder inget av dessa bakgrundsflöden.

Före produktion behöver API-stöd för obevakad identitet verifieras per operation. Beständig lagring, köhantering, samtidighet, övervakning, återförsök, licenser och driftansvar behöver fastställas. Dagens delegerade inloggning kan inte utan vidare ersättas med samma behörighetsmodell i ett bakgrundsjobb.
