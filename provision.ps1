$UserLanguageList = New-WinUserLanguageList -Language fr-FR
$UserLanguageList[0].Handwriting = $True
#Set-WinUserLanguageList -LanguageList $UserLanguageList -Confirm:$false -Force
Set-WinUserLanguageList fr-FR,en-US -Confirm:$false -Force

