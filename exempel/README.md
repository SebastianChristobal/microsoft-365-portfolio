# Fristående kodexempel

Exemplen illustrerar två mönster från portalernas utveckling. De innehåller inga verkliga kundinställningar och installerar inte de fullständiga lösningarna.

## Formaterad dashboardlänk

`dashboardknapp.json` är SharePoint-kolumnformatering för ett textfält. Länken använder listobjektets `ID`. Sökvägen `/sites/project-portal/` är ett generiskt exempel som måste anpassas till den egna portalen. Sidan och webbdelen måste finnas separat.

Fältet placeras efter Projektnamn i vyerna. Länken ger inga nya rättigheter. Den fullständiga pilotprovisioneringen löser portaladressen från kundkonfiguration; exemplet visar endast formatteringen.

## Konfigurationsstyrd körplan

`Visa-Provisioneringsplan.ps1` visar hur interna projekt och kundprojekt kan få olika standardkanaler och gemensamma dokumentbibliotek och Planner-buckets.

```powershell
./Visa-Provisioneringsplan.ps1 -ProjectName 'Intern introduktion' -ProjectType Internprojekt
./Visa-Provisioneringsplan.ps1 -ProjectName 'Kundens projekt' -ProjectType Kundprojekt
```

Skriptet returnerar endast en plan. Det ansluter inte till Microsoft 365 och skapar inga resurser. Den riktiga provisioneringsmotorn har dessutom autentisering, behörighetskontroller, API-anrop, resursjournal och verifiering.
