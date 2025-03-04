# Execute esse script no powershell como administrador
$scriptPath = "C:\caminho-onde-está-o-arquivo\limpezaTemp.ps1"

$action = New-ScheduledTaskAction -Execute "powershell.exe" -Argument "-file $scriptPath"

$trigger = New-ScheduledTaskTrigger -AtStartup

$settings = New-ScheduledTaskSettingsSet -AllowStartIfOnBatteries -StartWhenAvailable

Register-ScheduledTask -taskname "LimpezaTemp" -action $action -Trigger $trigger -Settings $settings -Description "Limpa os arquivos temporários sempre quando ligar o PC"
