#requires -Version 7.4
<#
Fristående portfolioexempel. Endast lokal plan, ingen anslutning eller provisionering.
#>
[CmdletBinding()]
param(
    [Parameter(Mandatory)][ValidateNotNullOrEmpty()][string]$ProjectName,
    [Parameter(Mandatory)][ValidateSet('Internprojekt','Kundprojekt')][string]$ProjectType
)
Set-StrictMode -Version Latest
$ErrorActionPreference='Stop'

# Exempelkonfiguration: kundval hålls åtskilda från körlogiken.
$templates=@{
    Internprojekt=@{
        Channels=@('Allmänt','Planering','Genomförande')
        Libraries=@('Projektdokument','Leveranser')
        PlannerBuckets=@('Uppstart','Planering','Genomförande','Avslut')
    }
    Kundprojekt=@{
        Channels=@('Allmänt','Planering','Genomförande','Kundleverans')
        Libraries=@('Projektdokument','Leveranser')
        PlannerBuckets=@('Uppstart','Planering','Genomförande','Avslut')
    }
}
$template=$templates[$ProjectType]
if([string]::IsNullOrWhiteSpace($ProjectName)){throw 'Ange ett projektnamn.'}

[pscustomobject]@{
    ProjectName=$ProjectName.Trim()
    ProjectType=$ProjectType
    Channels=$template.Channels
    Libraries=$template.Libraries
    PlannerBuckets=$template.PlannerBuckets
    Steps=@('Kontrollera beställning','Skapa grupp och Team','Konfigurera SharePoint','Skapa Planner','Verifiera','Återrapportera')
    ExternalSharing='Kräver separat beslut och konfiguration'
    RemoteChanges=$false
}
