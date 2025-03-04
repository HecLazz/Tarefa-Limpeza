# Tarefa-Limpeza
É um script no poweshell para automatizar a limpeza de arquivos temporários.
---
#### Explicação:
No arquivo limpezaTemp.ps1 temos um script que armazena o caminho da pasta onde estão os arquivos temporários. Logo abaixo vem o comando Remove-Item que tem como caminho a variável citada juntamente com dois parâmetros -Force -Recurse. <br>
-Force: Ignora confirmações, permissões e restrições (por exemplo, arquivos ocultos ou somente leitura). Se você tentar excluir um arquivo protegido, ele pode ignorar esse bloqueio.<br>
-Recurse: Permite excluir pastas e seus conteúdos (arquivos e subpastas). Sem esse parâmetro, o PowerShell não excluirá pastas que contêm arquivos dentro.<br><br>

Já no arquivo Projeto01.ps1 a primeira váriavel $scriptPath é justamente a localização do script de limpeza. As outras variáveis são como a configuração da tarefa agendada.<br><br>
$action: Cria uma ação no Agendador de Tarefas / -Execute: Especifica o programa ou comando que será executado. No caso o powershell.exe / -Argument: Define os argumentos passados para o programa. Aqui, dizemos para o PowerShell executar uma script específico usando -File.<br><br>
$trigger: Vai definir quando será executado essa tarefa. Nesse caso sempre que o computador ligar (-AtStartup).<br><br>
$settings: Define quando e como a tarefa será executada / -AllowStartIfOnBatteries: permite que a tarefa rodar em notebooks / -StartWhenAvailable: Se o PC estava desligado na hora programada, a tarefa será executada assim que ele for ligado.

