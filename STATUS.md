# Status och verifiering

Status avser pilotarbetet den 16 november 2026. Piloterna är inte produktionsgodkända kundlösningar.

| Område | Byggt och installerat | Verifiering och avgränsning |
|---|---|---|
| Avtalsportalens grund | Hubb, åtta avdelningssajter, elva avtalsbibliotek och dokumentmodell | Provisionering körd, mallar och pilotinnehåll provade. Fullständiga rolltester återstår. |
| Avtalssökning | Separat SPFx-app och söksida | Autentiserat prov ger fyra träffar för anställning i HR-biblioteket. Automatisk stavfelsrättning ingår inte. |
| Avtalsöversikt | Separat SPFx-app på hubbens startsida | Läser biblioteksmetadata och visar uppföljningsvyer. Inga automatiska påminnelser eller avtalsändringar. |
| Projektregister | Register, vyer, metadata och formaterad dashboardknapp | Schema och vyer verifierade. Knappen öppnar rätt projekt. |
| Projektarbetsytor | Teams, SharePoint, Planner och pilotinnehåll | Första projektet och 15 ytterligare projekt levererade. De 15 har 60 dokument och åtta Planner-aktiviteter per projekt. |
| Projektdashboard | SPFx-app och gemensam dashboardsida | Autentiserad läsning verifierad. Skrivflöden provade i lokal testkopia; verkliga skrivprov och rolltester återstår. |
| Projektstatistik | Separat SPFx-app och statistiksida | Autentiserad läsning av 16 pilotprojekt. Nyckeltalen är testdata, inte uppmätta kundresultat. |
| Produktionsdrift i Azure | Azure Functions med PowerShell vald som målarkitektur för båda portalerna | Ännu inte implementerad eller driftsatt. Piloterna körs lokalt. |
| Automatiserat godkännande | Beskrivet som framtida steg | Inte implementerat i Projektportalens pilot. |
| Automatisk avtalsidentitet | Beslutat tillägg med Power Automate | Inte byggt. |
| Arkivering och extern samverkan | Dokumenterade behov | Fullständig arkiveringsfunktion och verifierad gästmodell återstår. |

## Hur kvaliteten prövas

Lokala tester täcker bland annat informationsmodeller, datumregler, konfigurationskrav, installationslogik och servicebeteende. Byggkontroller, återläsning av Microsoft 365-resurser och webbläsarprov kompletterar testerna.

Lokal preview, autentiserad läsning, verkliga skrivprov och rolltester är olika verifieringsnivåer. Ett lyckat test på en nivå innebär inte att alla nivåer är godkända.
