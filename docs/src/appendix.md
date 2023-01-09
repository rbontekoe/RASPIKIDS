# Installation Instructions

## Introduction

Ik heb een Lenovo Legion Y520 Windows 10 laptop met Ubuntu 22.04 geïnstalleerd op een [Samsung portable SSD T5](#Install-Ubuntu-on-Samsung-T5-and-Lemovo-Legion-Y520-with-Windows-10) schijf. Ik start mijn machine op vanaf deze schijf.

## Installeren van PuTTYop Windows

Om PuTTY te downloaden en te installeren, moet je de volgende stappen volgen:

1.  Ga naar de website van PuTTY: https://www.putty.org/
2.  Klik op de link 'Download PuTTY' om het installatieprogramma te downloaden.
3.  Zoek het installatieprogramma in je downloads en open het.
4.  Volg de stappen in het installatieprogramma om PuTTY te installeren op je computer.

Zorg ervoor dat je toestemming hebt van een ouder of verantwoordelijke volwassene voordat je iets downloadt op je computer. Als je hulp nodig hebt tijdens het downloaden en installeren, vraag dan aan een ouder of verantwoordelijke volwassene om je te helpen.

## Install Git

Git is een vrij en open source gedistribueerd versiebeheersysteem, ontworpen om alles van kleine tot zeer grote projecten met snelheid en efficiëntie af te handelen.

##### Prerequisites
- Je computer OS is Ubuntu 22.04 64 bit.
- Je hebt een [GitHub account](https://github.com/).

Stap        | Actie      | Opmerking |
| :---------- | :---------- | :---------- |
| 1 | sudo apt install git | |
| 2 | git config --global user.email "<your email address>" |  |
| 3 | git config --global user.name "<your first and last name>" | Bijvoorbeeld: "Rob Bontekoe" |
| 4 | git config --global github.user "<yout git hub name>" | Bijvoorbeeld: "rbontekoe" |
| 5 | cat .gitconfig | Laat je git data zien. |
||

## Installeren Thonny

Om Thonny te installeren op Ubuntu 22.04, volg je de volgende stappen:

|Stap        | Actie      | Opmerking |
|:---------- | :---------- |:---------- |
| 1 | Ctrl + Alt + T| Open het terminalvenster. |
| 2 | sudo apt-get install thonny | Thonny installeren. |
||

## Installeren Docker op Raspberry Pi

Docker is een open containerplatform voor het ontwikkelen, verschepen en uitvoeren van toepassingen.

##### Voorwaarden
- Je computer besturingssysteem is Ubuntu 22.04 of hoger.
- Je hebt `curl` geinstallleerd: `sudo apt install curl`.

##### Installeren
|Stap        | Actie      | Opmerking |
|:---------- | :---------- |:---------- |
| 1 | sudo apt-get update | Update Software Repositories. |
| 2 | sudo apt-get remove docker docker-engine docker.io | Verwijder oudere versions van Docker |
| 3 | curl -sSL https://get.docker.com \| sh| Installeer Docker |
| 4 | sudo systemctl start docker |  |
| 5 | sudo systemctl enable docker |  |
| 6 | sudo docker version | Check Docker Version |
||

## Installeren van Ubuntu op een Samsung T5 en Lemovo Legion Y520 met Windows 10

The stappen die ik heb gevolgd.

|Stap        | Actie/Response | Opmerking |
|:---------- | :---------- |:---------- |
| 1 | Download ISO-image van de Ubuntu 22.04. website |  |
| 2 | Kopieer met Rufus naar een [USB-stick](https://github.com/kfechter/LegionY530Ubuntu/blob/master/Sections/CreateBootDrive.md) |  |
| 3 | Start de machine en druk op F2 | Verander de Bios van Lenovo |
||
```
Onder de Boot tab:
Fast Boot disabled
Onder de Security tab:
Secureboot disabled
Zie ook:
https://github.com/kfechter/LegionY530Ubuntu/blob/master/Sections/InstallUbuntu.md
```

|Stap        | Action/Response | Omerking |
|:---------- | :---------- |:---------- |
| 4 | Start Y520 met Windows 10 and druk op F12 |  |
| 5 | Choose Ubuntu | Herstart via USB. |
| 6 | Na herstart kies voor `install Ubuntu on 500GB portable disk` |  |
| 7 | sudo apt update |  |
| 8 | sudo do-release-upgrade -d | [Upgrade to Ubuntu 20.04](https://ubuntu.com/blog/how-to-upgrade-from-ubuntu-18-04-lts-to-20-04-lts-today). |
||
