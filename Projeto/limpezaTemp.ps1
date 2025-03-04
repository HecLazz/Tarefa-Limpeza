# Caminho da pasta de arquivos temporários
# Para achar essa pasta de arquivos temporários aperte Win+R e digite %temp%
$temPath = "C:\caminho-da-pasta-temp"

# Comando para remover todos os itens
Remove-Item -Path $temPath -Force -Recurse

Write-Host "Arquivos temporários excluidos com sucesso!"