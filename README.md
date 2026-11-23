# Microsoft 365 Portfolio

**Sebastian Pavez · SharePoint · SPFx · PowerShell · Microsoft Graph**

Jag utvecklar återanvändbara lösningar för avtals- och projekthantering samt medarbetarservice i Microsoft 365. Här visar jag hur jag kopplar verksamhetsbehov till informationsarkitektur, provisioneringskod och anpassade användargränssnitt.

Portföljen omfattar tre egenutvecklade portalpiloter och ett projekt för gemensam AI-agentstyrning. Arbetet omfattar krav och workshopunderlag, informationsmodellering, utveckling, installation, testning och teknisk dokumentation. Verksamhetsdata är fiktiva och piloterna genomförs i egen miljö.

## Fyra projektcase

| Projekt | Verksamhetsbehov | Lösning |
|---|---|---|
| [Avtalsportalen](projekt/avtalsportalen.md) | Hitta rätt avtal och följa upp ansvar och datum | SharePoint-hubb, avdelningsbibliotek, metadata, dokumentmallar, sökning och avtalsöversikt. Arbetsguider planeras. |
| [Projektportalen](projekt/projektportalen.md) | Samla projektbeställning, samarbete och uppföljning | Projektregister, Teams-ytor, SharePoint, Planner, projektdashboard och portföljstatistik. Arbetsguider planeras. |
| [AI-agentstyrning i Microsoft 365](projekt/ai-agentstyrning.md) | Ha kontroll över vilka agenter organisationen skapar, vad de får göra och vem som ansvarar | Gemensamma krav för registrering, riskbedömning, godkännande och uppföljning. IT-hjälpen är första pilotcase. |
| [Medarbetarservice](projekt/medarbetarservice.md) | Samla interna beställningar, support och onboarding på en plats | SharePoint-listor styr ingångar, tjänster och produktutbud. SPFx tar medarbetaren från produktval till beställning. |

### Avtalsportalen

En gemensam avtalsöversikt ger användaren en ingång till sina avtal, kommande slutdatum och sista uppsägningsdagar. Avtalen ligger kvar i respektive avdelningsbibliotek.

![SPFx-avtalsöversikt med uppföljning över avdelningar](bilder/avtalsportalen/avtalsoversikt.jpg)

### Projektportalen

En gemensam dashboard visar valt projekt. Bilden visar pilotprojektet **Gemensam onboarding för nya kollegor**, med två projektledare, ansvarig, projektperiod och senaste statusrapport.

![Projektkort och flikar i projektdashboarden](bilder/projektportalen/dashboard.jpg)

En separat statistikapp sammanställer portföljen och gör det möjligt att följa leveransprecision och projektens fördelning.

![Projektfördelning och leveransprecision för pilotens projekt](bilder/projektportalen/statistik-diagram.jpg)

*Bilderna visar installerade piloter med testdata. Namn på projekt och verksamheter är fiktiva. Sebastian Pavez förekommer som projektansvarig och författare; övriga personnamn avser testkonton. Kontomenyer och adressfält ingår inte i bilderna.*

### Medarbetarservice

Medarbetaren hittar **Beställningar**, **Support och hjälp** och **Onboarding** på samma startsida. IT-utrustning beställs direkt i SPFx-webbdelen. Katalogansvariga kan ändra vilka produkter som visas och portalansvariga kan administrera ingångar och tjänster i SharePoint. [Projektcase och pilotstatus](projekt/medarbetarservice.md)

## Teknik och arbetssätt

- **SharePoint Online:** kommunikationssajter, hubbar, listor, dokumentbibliotek, innehållstyper, metadata, versionshantering, vyer och OOTB-webbdelar.
- **PowerShell 7 och PnP.PowerShell:** moduluppdelad provisionering, kundkonfiguration, installation, verifiering och återupptagning.
- **SPFx, React och TypeScript:** separata lösningspaket för sökning, avtalsöversikt, projektdashboard, statistik och ett liststyrt beställningsformulär. Fluent UI används i Projektportalens gränssnitt.
- **SharePoint REST och Microsoft Graph:** register- och dokumentdata, sökning samt integration med Microsoft 365-grupper, Teams och Planner.
- **Entra ID:** appregistreringar, användaridentitet, roller och granskade API-medgivanden.
- **Git och GitHub:** versionshantering, separata paket och dokumenterad leveransordning.

Jag använder SharePoints standardfunktioner där de uppfyller behovet och bygger egna webbdelar för de sammanhållna gränssnitt som portalerna behöver. Konfiguration och provisioneringslogik hålls åtskilda för att kunna anpassas per kund.

## Arkitektur och leveransstatus

[Arkitekturdiagram och designval](ARKITEKTUR.md) visar dagens pilotlösningar och den planerade produktionsarkitekturen. [Status och verifiering](STATUS.md) skiljer mellan installerat, testat och fortsatt utveckling.

**Azure Functions är den valda målarkitekturen för att köra PowerShell-baserad provisionering för både Avtalsportalen och Projektportalen.** Återanvändbara PowerShell-moduler ska köras som bakgrundsjobb med beständig kö, journal och verifiering. Piloterna körs fortfarande från lokal PowerShell; Azure-körmiljön är planerad och ännu inte implementerad. Power Automate kan komplettera beställning och godkännande, men är inte förutsättningen för dagens dashboard.

## Dokument och exempel

- [Avtalsportalen och Projektportalen som PDF med arkitektur, teknik och bilder](dokument/projektcase-microsoft-365.pdf)
- [Exempel på formaterad dashboardlänk](exempel/dashboardknapp.json)
- [Konfigurationsstyrd körplan i PowerShell](exempel/Visa-Provisioneringsplan.ps1)
- [Vad exemplen visar](exempel/README.md)

Detta är ett presentationsrepo. Fullständig produktkod, kundkonfiguration, körjournaler och säkerhetskopior ingår inte. Kodexemplen är fristående, generiska exempel och utgör inte ett installationspaket för portalerna.

## Om arbetet

Mitt fokus är att skapa en sammanhängande lösning från krav och informationsmodell till användargränssnitt och förvaltning. Det inkluderar workshopmallar, tekniska beslut, testunderlag och körinstruktioner som stödjer ett framtida kundinförande.

[Min GitHub-profil](https://github.com/SebastianChristobal)

Materialet är granskat för publicering utan tenantadresser, e-postadresser, åtkomsttoken eller interna konfigurationsfiler. Se [publiceringsavgränsningen](PUBLICERING.md) och [rättigheter](RATTIGHETER.md).

Senast uppdaterad 23 november 2026.
