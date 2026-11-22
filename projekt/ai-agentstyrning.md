# AI-agentstyrning i Microsoft 365

Projektet tar fram ett gemensamt arbetssätt för alla AI-agenter organisationen väljer att skapa, från idé och pilot till publicering, uppföljning och avveckling. Avtalsportalen och Projektportalen tar fram sina egna agenter och dokumenterar deras källor, konfiguration, provisionering och testresultat.

## Gemensamma leveranser

- **Agentregister.** Dokumentera syfte, verksamhetsägare, plattform, målgrupp, kunskapskällor, behörigheter, möjliga åtgärder, status och senaste granskning.
- **Riskbedömning och godkännande.** Låt verksamhetsägaren bedöma nyttan och svarskvaliteten. Låt IT granska åtkomst och drift. För agenter som ändrar data eller skickar information behövs också en granskning av köridentitet, tillåtna åtgärder och mänskligt godkännande där det krävs.
- **Publicering och uppföljning.** Dokumentera beslut, testresultat, målgrupp och publiceringsyta. Utse en ansvarig för incidenter, spärrning och ägarbyte. Granska om agenten när källor, behörigheter eller åtgärder ändras.
- **Provisionering.** Ta fram en gemensam mall för agentkonfiguration och verifiering som portalernas körplaner kan använda. Dokumentera manuella publiceringssteg och vilka steg som kan automatiseras på respektive plattform.

## Pilotcase

| Portalprojekt | Agent och status | Första verifiering |
|---|---|---|
| [Avtalsportalen](avtalsportalen.md) | **Avtalsagenten** är skapad i Copilot Agent Builder. Fiktiva avtal i portalen används som pilotunderlag. | Kontrollera rätt avtalslänk och skillnaden mellan slutdatum och sista uppsägningsdag. Testa med och utan dokumentåtkomst. Portalens chattintegration återstår att verifiera. |
| [Projektportalen](projektportalen.md) | **Projektagenten** är planerad. Pilotens statusrapporter och projektdokument är tänkta källor. | Kontrollera att svaret om nästa milstolpe har en daterad källa och att projektdokument bara används för behöriga användare. |

Första milstolpen är att registrera den befintliga Avtalsagenten och dokumentera dess åtkomstprov. Använd sedan samma mall för Projektagenten för att pröva hur arbetssättet fungerar när en ny agent tas fram.
