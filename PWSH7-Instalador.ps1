#Vai instalar pwsh 7.5
$console = $Host.UI.RawUI
$console.BackgroundColor = 'Black'
$console.ForegroundColor = 'White'
Clear-Host
[Console]::SetWindowSize(80, 30)
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
Write-Host "PowerShell 7.5" -ForegroundColor Magenta
Write-Host "1 | Instalar"
Write-Host "2 | Sair"
Write-Host ""
Write-Host ""
Write-Host ""
Write-Host "Escolha uma opcao no seu teclado [1,2]" -ForegroundColor Green
Write-Host ""
Write-Host ""
$tecla = [Console]::ReadKey($true)
$escolha = $tecla.KeyChar
    switch ($escolha) {
        "1" {
            $ProgressPreference = 'SilentlyContinue'
            Invoke-WebRequest -Uri "https://github.com/PowerShell/PowerShell/releases/download/v7.5.2/PowerShell-7.5.2-win-x64.exe" -OutFile "$env:TEMP\PowerShell-7.5.2-win-x64.exe"
            Start-Process -FilePath "$env:TEMP\PowerShell-7.5.2-win-x64.exe" -ArgumentList "/S" -Wait
            exit
        }
        "2" {
            exit
        }
    }
