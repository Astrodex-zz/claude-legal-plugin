# Legal Assistant Plugin Installer for Claude Code (Windows PowerShell)

$ErrorActionPreference = "Stop"

$PluginName = "legal-assistant"
$PluginVersion = "0.1.0"
$ClaudeDir = Join-Path $env:USERPROFILE ".claude"
$PluginsDir = Join-Path $ClaudeDir "plugins"
$InstallDir = Join-Path $PluginsDir $PluginName
$InstalledJson = Join-Path $PluginsDir "installed_plugins.json"
$SettingsJson = Join-Path $ClaudeDir "settings.json"
$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path

Write-Host "Installing $PluginName plugin for Claude Code..."

# 1. Copy plugin files if not already in place
if ($ScriptDir -ne $InstallDir) {
    Write-Host "Copying plugin to $InstallDir..."
    if (-not (Test-Path $InstallDir)) {
        New-Item -ItemType Directory -Path $InstallDir -Force | Out-Null
    }
    Copy-Item -Path "$ScriptDir\*" -Destination $InstallDir -Recurse -Force
    if (Test-Path "$ScriptDir\.claude-plugin") {
        Copy-Item -Path "$ScriptDir\.claude-plugin" -Destination $InstallDir -Recurse -Force
    }
    if (Test-Path "$ScriptDir\.gitignore") {
        Copy-Item -Path "$ScriptDir\.gitignore" -Destination $InstallDir -Force
    }
} else {
    Write-Host "Plugin already at $InstallDir, skipping copy."
}

# 2. Register in installed_plugins.json
if (-not (Test-Path $InstalledJson)) {
    Write-Host "Creating $InstalledJson..."
    @{
        version = 2
        plugins = @{}
    } | ConvertTo-Json -Depth 10 | Set-Content -Path $InstalledJson -Encoding UTF8
}

$installedData = Get-Content $InstalledJson -Raw | ConvertFrom-Json

# Check if already registered
$alreadyRegistered = $false
if ($installedData.plugins.PSObject.Properties.Name -contains $PluginName) {
    $alreadyRegistered = $true
    Write-Host "Plugin already registered in installed_plugins.json."
}

if (-not $alreadyRegistered) {
    Write-Host "Registering plugin in installed_plugins.json..."
    $timestamp = (Get-Date).ToUniversalTime().ToString("yyyy-MM-ddTHH:mm:ss.000Z")
    $installPathEscaped = $InstallDir -replace '\\', '\\'

    $entry = @(
        @{
            scope = "user"
            installPath = $InstallDir
            version = $PluginVersion
            installedAt = $timestamp
            lastUpdated = $timestamp
        }
    )

    $installedData.plugins | Add-Member -NotePropertyName $PluginName -NotePropertyValue $entry -Force
    $installedData | ConvertTo-Json -Depth 10 | Set-Content -Path $InstalledJson -Encoding UTF8
    Write-Host "Registered."
}

# 3. Enable in settings.json
if (-not (Test-Path $SettingsJson)) {
    Write-Host "Creating $SettingsJson..."
    @{
        enabledPlugins = @{}
    } | ConvertTo-Json -Depth 10 | Set-Content -Path $SettingsJson -Encoding UTF8
}

$settingsData = Get-Content $SettingsJson -Raw | ConvertFrom-Json

$alreadyEnabled = $false
if ($settingsData.PSObject.Properties.Name -contains "enabledPlugins") {
    if ($settingsData.enabledPlugins.PSObject.Properties.Name -contains $PluginName) {
        $alreadyEnabled = $true
        Write-Host "Plugin already enabled in settings.json."
    }
} else {
    $settingsData | Add-Member -NotePropertyName "enabledPlugins" -NotePropertyValue ([PSCustomObject]@{}) -Force
}

if (-not $alreadyEnabled) {
    Write-Host "Enabling plugin in settings.json..."
    $settingsData.enabledPlugins | Add-Member -NotePropertyName $PluginName -NotePropertyValue $true -Force
    $settingsData | ConvertTo-Json -Depth 10 | Set-Content -Path $SettingsJson -Encoding UTF8
    Write-Host "Enabled."
}

Write-Host ""
Write-Host "Installation complete!" -ForegroundColor Green
Write-Host "Please restart Claude Code for the legal-assistant plugin to take effect."
Write-Host "Skills available: legal-adviser, legal-researcher, legal-reviewer"
Write-Host "Agent available: citation-verifier"
