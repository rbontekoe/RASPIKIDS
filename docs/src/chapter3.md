# Docker installeren

*[Docker](https://nl.wikipedia.org/wiki/Docker_(software)) is een programma waarmee we verschillende computerprogramma's op een gemakkelijke manier kunnen draaien. Het is een soort 'doos' waarin we de programma's kunnen zetten, zodat we ze gemakkelijk kunnen starten en gebruiken.*

### Inhoud

```@contents
Pages = ["chapter3.md"]
```

## Wat je nodig hebt

- Een Raspberry Pi 3B+ met het programma Ubuntu 22.04. 
- SSH verbinding met de Raspberry Pi.

## Wat je gaat doen

Stap 1: curl installeren.

Stap 2: docker installeren.

Stap 3: Benader de Raspberry Pi vanuit je laptop. 

## Stap 1 - curl installeren

Oké, dus soms hebben we een programma nodig om dingen van het internet af te halen. Het heet 'curl'. Als je wilt weten of het al op je computer staat, kun je dat controleren door `curl -h` te typen. Als het niet op je computer staat, dan kun je het installeren door dit te typen: `sudo apt install curl`.

## Stap 2 - docker installeren

We willen een programma op onze computer gebruiken dat 'Docker' heet. Op onze Raspberry Pi 3B+ draait 'Ubuntu Server 22.04'. We doen dat door de volgende stappen te volgen:

|Stap        | Actie      |
|:---------- | :---------- |
| 1 | Maak verbinding met je Raspberry Pi-computer door dit commando te typen: ssh ubuntu@<ip-adres Raspberry pi>. Je moet het internetadres van je Raspberry Pi weten, dus kijk in stap 3 van het vorige hoofdstuk om te zien hoe je dat kunt vinden. |
| 2 | Zorg dat de softwarelijst up-to-date is door dit commando te typen: `sudo apt-get update`. |
| 3 | Verwijder oudere versies van Docker door dit commando te typen: `sudo apt-get remove docker docker-engine docker.io`. |
| 4 | Installeer Docker door dit commando te typen: `curl -sSL https://get.docker.com | sh`. |
| 5 | Maak zeker dat je computer weet dat jij mag werken met Docker door dit commando te typen: `sudo usermod -aG docker $USER`. |
| 6 | Controleer de versie van [Docker Engine](https://docs.docker.com/engine/release-notes/) door dit commando te typen: `sudo docker version`. Het moet versie 20.10.22 of hoger zijn. |
| 7 | Herstart je Raspberry Pi door dit commando te typen: `sudo reboot`. |
||

Nu is Docker geïnstalleerd en gestart op je Raspberry Pi 3B+ met Ubuntu Server 22.04. Je kan met het installeren van Docker-images en -containers beginnen door de docker commando's te gebruiken.

## Stap 3 - Benader de Raspberry Pi vanuit je laptop

Een manier is om te werken met de Raspberry Pi is met SSH. Met het programma Portainer kunt je ook via een webbrowser met Docker kunt werken. We leren meer over Portainer in het volgende hoofdstuk.

### Windows

Windows Subsystem for Linux (WSL) is een tool waarmee je Linux-programma's op je Windows-computer kunt gebruiken. Je hebt Windows 10 of hoger nodig om met WSL te gebruiken. Met de WSL kun je heel gemakkelijk het Linux commando `ssh` gebruiken. 

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
# Open een terminal sessie met Ctrl+Alt-T en type:
ssh ubuntu@<ipadres Raspberry Pi>

# Test de connectie
docker version
```

### Ubuntu (Linux)

```
# Open een terminal sessie met Ctrl+Alt-T en type:
ssh ubuntu@<ipadres Raspberry Pi>

# Test de connectie
docker version
```

## Samenvattig

Docker is een tool waarmee we gemakkelijk programma's op een computer kunnen draaien. We kunnen het installeren op een Raspberry Pi met het besturingssysteem Ubuntu 22.04 door verbinding te maken met de Raspberry Pi via SSH en het commando `curl -sSL https://get.docker.com | sh` te gebruiken. We kunnen de versie van Docker controleren met het commando: `docker version`.