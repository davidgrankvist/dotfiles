# Make core utils like find/grep available.
$Env:Path = "C:\Program Files\Git\usr\bin\;${Env:Path}"

New-Alias -Name "g" git
New-Alias -Name "v" nvim
New-Alias -Name "devshell" Run-Dev-Shell

Set-PSReadlineKeyHandler -K ctrl+d -Function ViExit

function Run-Dev-Shell {
    & "C:\Program Files\Microsoft Visual Studio\2022\Community\Common7\Tools\Launch-VsDevShell.ps1"
}
