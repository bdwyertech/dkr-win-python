FROM mcr.microsoft.com/powershell:lts-nanoserver-2004
# FROM mcr.microsoft.com/windows/servercore:2004

RUN pwsh -Command "Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))"
