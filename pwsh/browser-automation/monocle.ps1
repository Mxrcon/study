#!/usr/bin/pwsh
# This is a small script to open a firefox tab logged in my sigaa acount
# in a specific semester

$semester = '2022.2'
Import-Module -Name Monocle
$browser = New-MonocleBrowser -Type Firefox
Set-MonocleUrl -Url 'https://sigaa.ufpa.br/sigaa/verTelaLogin.do'
Start-MonocleFlow -Name 'Sigaa Login' -Browser $browser -ScriptBlock {
    Get-MonocleElement -Id 'user.login' | Set-MonocleElementValue -Value $env:SIGAA_LOGIN
    Get-MonocleElement -Id 'user.senha' | Set-MonocleElementValue -Value $env:SIGAA_PASSWORD
    Get-MonocleElement -Selector 'input[value=Entrar]' | Invoke-MonocleElementClick
    Set-MonocleUrl -Url 'https://sigaa.ufpa.br/sigaa/verPortalDiscente.do'
    Get-MonocleElement -Id 'selectCalendarios' | Set-MonocleElementValue -Value $semester 
    Wait-MonocleUrl -Url "https://sigaa.ufpa.br/sigaa/verMenuPrincipal.do"
    Set-MonocleUrl "https://sigaa.ufpa.br/sigaa/verPortalDiscente.do"

# Emitir Calendário Acadêmico
    Get-MonocleElement -Selector 'portalDiscente.historico' | Invoke-MonocleElementClick
    #Invoke-MonocleJavaScript -Script 'portalDiscente.atestadoMatricula'
    #ThemeOfficeMenuItemText
#Emitir Atestado de Matrícula
}

Start-Sleep -s 20
Close-MonocleBrowser -Browser $browser
