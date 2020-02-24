# Modular-PS-Prompt

A Modular PowerShell CLI Prompt forked from [https://github.com/Namorzyny/PSLittleTrain](https://github.com/Namorzyny/PSLittleTrain).

_The original maintainer has removed and no longer maintains the source repository._

## Dependencies

Prior to installation, ensure the PSReadline module is installed. PowerShell >= 6.x already includes this. 

Optionally, install [posh-git](https://chocolatey.org/packages/poshgit) for git command completion. The quickest way to do this is with Chocolatey `choco install poshgit`.

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
