Set-ItemProperty -Path "Registry::HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" ProxyEnable -value 1


set-itemproperty 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings'  -name ProxyEnable -value (-not ([bool](get-itemproperty 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings'  -name ProxyEnable).proxyenable))
