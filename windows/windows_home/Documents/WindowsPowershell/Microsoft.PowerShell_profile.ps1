# Make core utils like find/grep available.
$Env:Path = "C:\Program Files\Git\usr\bin\;${Env:Path}"

New-Alias -Name "g" git
New-Alias -Name "v" nvim

Set-PSReadlineKeyHandler -K ctrl+d -Function ViExit
