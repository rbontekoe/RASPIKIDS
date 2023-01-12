# Docker installeren

*[Docker](https://nl.wikipedia.org/wiki/Docker_(software)) is een programma waarmee we verschillende computerprogramma's op een gemakkelijke manier kunnen draaien. Het is een soort 'doos' waarin we de programma's kunnen zetten, zodat we ze gemakkelijk kunnen starten en gebruiken.*

### Contents

```@contents
Pages = ["chapter3.md"]
```

## Wat je nodig hebt

- Een Raspberry Pi 3B+ met het besturingssysteem Ubunti 22.04 (zie het vorige hoofdstuk).
- SSH verbinding met de Raspberry Pi

## Wat je gaat doen

Stap 1: curl installeren.

Stap 2: docker installeren.

Stap 3: docker-compose eventueel installeren.

Stap 4: Benader de Raspberry Pi vanuit je laptop. 

## Stap 1 - curl installeren

Oké, dus soms hebben we een programma nodig om dingen op het internet te doen. Het heet 'curl'. Als je wilt weten of het al op je computer staat, kun je dat controleren door `curl -h` te typen. Als het niet op je computer staat, dan kun je het installeren door dit te typen: `sudo apt install curl`.

## Stap 2 - docker installeren

We willen een programma op onze computer gebruiken dat 'Docker' heet. Op onze Raspberry Pi 3B+ draait 'Ubuntu Server 22.04'. We doen dat door de volgende stappen te volgen:

|Stap        | Actie      | Opmerking |
|:---------- | :---------- |:---------- |
| 1 | ssh ubuntu@<ip-adres Raspberry pi> | Maak verbinding met de Raspberry Pi. |
| 2 | sudo apt-get update | Software lijst updaten naar de nieuwste versies. |
| 3 | sudo apt-get remove docker docker-engine docker.io | Oudere versions van Docker verwijderen. |
| 4 | curl -sSL https://get.docker.com \| sh| Docker installeren met officieel online script. |
| 5 | sudo usermod -aG docker \$USER | voeg de omgevingsvariabele USER (= ubuntu, contoleer het met `echo $USER`) toe aan de docker groep. |
| 6 | sudo docker version | Controleer  de versie van [Docker Engine](https://docs.docker.com/engine/release-notes/). Zou versie 20.10.22 of hoger moeten zijn. |
| 7 | sudo reboot | Herstart de Raspberry Pi. |
||

Nu is Docker geïnstalleerd en gestart op je Raspberry Pi 3B+ met Ubuntu Server 22.04. Je kan met het installeren van Docker-images en -containers beginnen door de docker commando's te gebruiken.

## Stap 3 - docker-compose eventueel installeren

Docker Compose is een programma dat helpt bij het opzetten van meerdere containers tegelijkertijd. Je zet de instellingen van al je containers in een enkel bestand: 'docker-compose.yml'. Dan hoef je maar één opdracht te geven om alle containers te starten, stoppen of opnieuw te starten. Dit maakt het gemakkelijker om complexe programma's op te zetten die uit meerdere onderdelen bestaan, zoals bijvoorbeeld een database, op de achtergrond en een web-interface.

Als je al Docker engine op je Ubuntu 22.04 computer hebt geïnstalleerd (wat je in stap 2 hebt gedaan), dan hoef je Docker Compose niet apart te installeren. Het zit al in de Docker engine. Je kunt controleren of je het al hebt door een commando in de computer te typen.

|Stap        | Actie      | Opmerking |
|:---------- | :---------- |:---------- |
| 1 | docker compose version | Als Docker Compose krijg je het versie nummer te zien: Docker Compose version v2.14.1 of hoger. |
| 2 | sudo apt install docker-compose | Installer docker-compose als het nog niet geinstalleerd blijkt te zijn. Let op het verschil tussen beide comando's: docker compose of docker-compose (met koppelteken). |

## Stap 4 - Benader de Raspberry Pi vanuit je laptop
LETOP! Onderstaande commano's zijn niet getest door mij!

Er zijn twee manieren om op afstand met de Raspberry Pi te werken met je laptop. Een manier is om het te doen direct op de Raspberry Pi zelf met SSH. De andere manier is om het te doen via je laptop door de Docker-Client te installeren. Met het programma Portainer kunt je ook via een webbrowser met Docker kunt werken. We leren meer over Portainer in het volgende hoofdstuk.

### Windows

Windows Subsystem for Linux (WSL) is een tool waarmee je Linux-programma's op je Windows-computer kunt gebruiken. Je hebt Windows 10 nodig om WSL te gebruiken. Met de WSL kun je heel gemakkelijk het Linux commando `ssh` gebruiken. 

```
# Open een WSL venster en tik het ssh commando in. Er wordt
# de eerste keer gevraagd of je verder wilt gaan, tik 'yes' in. 
# Daarna wordt er gevraagd om het wachtwoord van de Raspberry Pi.
ssh ubuntu@<ipadres Raspberry Pi>
```

!!! info
    In Windows 10 kun je een WSL (Windows Subsystem for Linux) venster openen door de volgende stappen te volgen:

    2.  Klik op de startknop in de taakbalk of druk op de Windows toets op je toetsenbord.
    3.  Zoek naar "Windows PowerShell" en klik erop om het te openen.
    4.  Typ in het PowerShell venster het volgende commando en druk op Enter:

    ```
    wsl
    ```
    
    Dit zal een WSL-venster openen waarmee je toegang hebt tot de Linux commandoregel.

### Mac

Mac OS is een soort software die je computer laat werken, net zoals Linux. Er zijn veel dingen die hetzelfde zijn tussen Mac OS en Linux. Dit betekent dat je veel van dezelfde opdrachten kunt geven op een Mac als op Linux. Maar er zijn ook dingen die anders zijn tussen Mac OS en Linux, dus sommige opdrachten die je op een Linux computer kunt geven, werken niet op een Mac.

```
# Open een terminal sessie met Ctrl-Alt-T en type:
ssh ubuntu@<ipadres Raspberry Pi>

# Of installeer Docker Client CLI (Command Line Interface)
brew install docker

# Zet de environment variable DOCKER_HOST
# export DOCKER_HOST=ssh://<ip-adres Raspberry Pi>, bijvoorbeeld:
export DOCKER_HOST=ssh://ubuntu@192.168.2.49

# Test de connectie
docker version

```

### Ubuntu (Linux)

```
# Installeer Docker Client CLI (Command Line Interface)
sudo apt install docker-ce-cli

# Maak een set Private/Public keys aan
# ssh-keygen -t rsa -b 4096 -C "your_email@domain.com", bijvoorbeeld:
ssh-keygen -t rsa -b 4096 -C "rbontekoe@appligate.nl"

# Kopieer je public key naar de Raspberry Pi
ssh-copy-id ubuntu@192.168.2.49

# Zet de (tijdelijk) environment variable DOCKER_HOST
# export DOCKER_HOST=ssh://<ip-adres Raspberry Pi> bijvoorbeeld:
export DOCKER_HOST=ssh://ubuntu@192.168.2.49

# Test de environment variable DOCKER_HOST
echo $DOCKER_HOST

# Toon het versie nummer van Docker Engine op Raspberry Pi vanuit je laptop
docker version

```

## Samenvattig

Docker is een tool waarmee we gemakkelijk programma's op een computer kunnen draaien. We kunnen het installeren op een Raspberry Pi met het besturingssysteem Ubuntu 22.04 door verbinding te maken met de Raspberry Pi via SSH en het commando `curl -sSL https://get.docker.com | sh` te gebruiken. We kunnen de versie van Docker controleren met het commando: `docker version`.