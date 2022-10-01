# connections_winps1
Pequeno script em powershell para verificar as conexões locais e buscar informações do seu endereço ip externo. Executável em sistemas Windows.

<h4>1. Altere a politica de execução do powershell. Execute o powershell como administrador.</h4>

```
Get-ExecutionPolicy -List
Set-ExecutionPolicy -ExecutionPolicy Unrestricted
```

<h4>2. Executando o script</h4>
` .\verificar_conexoes.ps1 `
