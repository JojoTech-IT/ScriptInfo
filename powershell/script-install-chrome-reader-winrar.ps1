#Script powershell permettant d'installer quelques logiciels (Chrome, adobe reader & winrar)

# Récupérer le nom de l'utilisateur actuel
$nomUtilisateur = $env:USERNAME

# Définir le chemin du dossier de téléchargement
$dossierTelechargement = "C:\Users\$nomUtilisateur\Downloads\logiciel_pc_bureautique"

# Définir le chemin du fichier log
$fichierLog = "C:\Users\$nomUtilisateur\Downloads\logiciel_pc_bureautique\installation_log.txt"

# Installer Google Chrome
$chromeInstaller = Join-Path $dossierTelechargement "chrome_setup.exe"
Start-Process -FilePath $chromeInstaller -Wait -ErrorAction SilentlyContinue

# Vérifier si l'installation de Chrome a réussi
if ($LASTEXITCODE -eq 0) {
    Write-Output "Google Chrome a été installé avec succès." | Out-File -Append -FilePath $fichierLog
} else {
    Write-Output "Erreur lors de l'installation de Google Chrome." | Out-File -Append -FilePath $fichierLog
}

# Installer Adobe Reader
$adobeInstaller = Join-Path $dossierTelechargement "adobe_reader_setup.exe"
Start-Process -FilePath $adobeInstaller -Wait -ErrorAction SilentlyContinue

# Vérifier si l'installation d'Adobe Reader a réussi
if ($LASTEXITCODE -eq 0) {
    Write-Output "Adobe Reader a été installé avec succès." | Out-File -Append -FilePath $fichierLog
} else {
    Write-Output "Erreur lors de l'installation d'Adobe Reader." | Out-File -Append -FilePath $fichierLog
}


