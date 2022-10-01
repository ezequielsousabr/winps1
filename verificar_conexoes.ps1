# Script para verificar conexões locais e ip externo com a internet.
$adapter_status=Get-NetAdapter | Select-Object -Unique "Status";
$adapter_connection=Get-NetTCPConnection -State Established;

if ( $adapter_connection )
{
    echo ( "Mostrando todas as conexões locais estabelecidas!" );
    echo "";
    sleep 2;
    Get-NetTCPConnection -State Established;
    echo "";
    echo ("Buscando informações de ip externo no ipinfo.io detalhadamente");
    sleep 4;
    echo "";
    Invoke-webRequest -Uri ipinfo.io/ip;
    sleep 2;
    echo ("Seu ip externo");
    echo "";
    Invoke-WebRequest -Uri ipinfo.io/ip | Select-Object -Unique "Content";
}
else
{
    echo ( "Verifique o estado do seu adaptador / roteador!" );
    sleep 2;
    echo "";
    echo ( "Ative sua conexão com a internet!" );
    Get-NetAdapter -Verbose | Select-Object -Unique "Status";
    sleep 2;
    echo "";
    echo ("Abra o painel de controle > redes e internet > Central de rede e Compartilhamento > Alterar denifições de rede")
}