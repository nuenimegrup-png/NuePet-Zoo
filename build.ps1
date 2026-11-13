# ==============================================================================
# NuePet Zoo - Build & Deployment Shortcut Script
# ==============================================================================

param (
    [switch]$Build,
    [switch]$Push,
    [switch]$Lint,
    [switch]$Dev,
    [switch]$Preview,
    [string]$CommitMessage = ""
)

$scriptPath = Join-Path $PSScriptRoot "..\build-nuepet.ps1"
if (Test-Path $scriptPath) {
    & $scriptPath @PSBoundParameters
} else {
    Write-Host "[ERROR] Script build-nuepet.ps1 tidak ditemukan di root." -ForegroundColor Red
}

