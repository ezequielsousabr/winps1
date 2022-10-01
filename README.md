# connections winps1
![ps1](https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fi1.wp.com%2Fwww.i-tecnico.pt%2Fwp-content%2Fuploads%2F2018%2F01%2FPowerShell.png&f=1&nofb=1&ipt=a9ef9b22d0445a2c3c5f6d5ad85f9b6798452e8c9dc310da2930f29f14b9dc0a&ipo=images)

Pequeno script em powershell para verificar as conexões locais e buscar informações do seu endereço ip externo. Executável em sistemas Windows.

<h4>1. Altere a politica de execução do powershell. Execute o powershell como administrador.</h4>

```
Get-ExecutionPolicy -List
Set-ExecutionPolicy -ExecutionPolicy Unrestricted
```

<h4>2. Executando o script</h4>

```
.\verificar_conexoes.ps1
```
