# Modular-PS-Prompt

A Modular PowerShell CLI Prompt forked from https://github.com/Namorzyny/PSLittleTrain

## Dependencies

Prior to installation, ensure PSReadline is installed. This quickest way to do this is with Chocolatey.

## Installation

Source this module and set PSReadLine options with the following snippet in your `Microsoft.Powershell_profile.ps1` file:

```powershell
Import-Module LittleTrainPrompt

$PSReadLineOptions = @{
  HistoryNoDuplicates = $true
  HistorySaveStyle = "SaveIncrementally"
  HistorySearchCursorMovesToEnd = $true
}

Set-PSReadLineOption @PSReadLineOptions
```
