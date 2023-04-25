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

Oké, dus soms hebben we een programma nodig om dingen van het internet af te halen. Het heet 'curl'. Als je wilt weten of het al op je computer staat, kun je dat controleren door `curl -h` te typen. Als het niet op je computer staat, dan kun je het installeren door dit te typen (commentaarregels die beginnen met een # hoef je niet te typen): 
```
# Maak verbinding met je Raspberry Pi en stel dat het IP-adres 192.168.2.49 is. Zie stap 3 uit de vorige les!
ssh ubuntu@192.168.2.49

# Maak softwarelijst up-to-date en update Ubuntu server software
sudo apt update && sudo apt full-upgrade

# Installeer curl
sudo apt install curl
```

!!! info
    "sudo apt update && sudo apt full-upgrade" is eigenlijk een combinatie van twee commando's die je kunt gebruiken op een computer die Linux gebruikt, zoals de Raspberry Pi.

    Het eerste commando, "sudo apt update", zorgt ervoor dat de computer kan controleren of er nieuwe programma's beschikbaar zijn om te downloaden en te gebruiken. Het is alsof je jouw speelgoeddoos up-to-date houdt met nieuwe speeltjes.

    Het tweede commando, "sudo apt full-upgrade", is als het upgraden van je speelgoed. Het zorgt ervoor dat alle programma's die je hebt gedownload worden bijgewerkt naar de nieuwste versies.

    Dus, door het uitvoeren van deze twee commando's samen, kun je ervoor zorgen dat je altijd toegang hebt tot de nieuwste en beste programma's die beschikbaar zijn, en dat deze programma's ook worden bijgewerkt naar de nieuwste versies. Het is als het hebben van een bijgewerkte speelgoeddoos met de nieuwste en beste speeltjes die je kunt gebruiken om te spelen en te leren!

## Stap 2 - docker installeren

We willen een programma op onze computer gebruiken dat 'Docker' heet. Op onze Raspberry Pi 3B+ draait 'Ubuntu Server 22.04'. We doen dat door de volgende stappen te volgen:

|Stap        | Actie      |
|:---------- | :---------- |
| 1 | Maak verbinding met je Raspberry Pi-computer door dit commando te typen: `ssh ubuntu@IP_adres_Raspberry_pi`. Je moet het internetadres van je Raspberry Pi weten, dus kijk in [stap 3 van het vorige hoofdstuk](../chapter2/#Stap-3-Maak-verbinding-met-de-Raspberry-Pi-vanaf-een-andere-computer-via-SSH) om te zien hoe je dat kunt vinden. |
| 2 | Zorg dat de softwarelijst up-to-date is door dit commando te typen: `sudo apt update`. |
| 3 | Verwijder oudere versies van Docker door dit commando te typen: `sudo apt remove docker docker-engine docker.io`. |
| 4 | Installeer Docker door dit commando te typen: `curl -sSL https://get.docker.com \| sh`. |
| 5 | Zorg dat je computer weet dat jij mag werken met Docker door dit commando te typen: `sudo usermod -aG docker $USER`. |
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
# de eerste keer gevraagd of je verder wilt gaan, tik "yes" in. 
# Daarna wordt er gevraagd om het wachtwoord van de Raspberry Pi.
ssh ubuntu@IP_adres_Raspberry_Pi
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
# Open een terminal sessie met Ctrl + Alt + T.
# de eerste keer gevraagd of je verder wilt gaan, tik "yes" in. 
# Daarna wordt er gevraagd om het wachtwoord van de Raspberry Pi.
ssh ubuntu@IP_adres_Raspberry_Pi

# Test de connectie
docker version
```

### Ubuntu (Linux)

```
# Open een terminal sessie met Ctrl + Alt + T.
# de eerste keer gevraagd of je verder wilt gaan, tik "yes" in. 
# Daarna wordt er gevraagd om het wachtwoord van de Raspberry Pi.
ssh ubuntu@IP_adres_Raspberry_Pi

# Test de connectie
docker version
```

## Samenvattig

Dit hoofdstuk gaat over het installeren van Docker op een Raspberry Pi-computer met Ubuntu 22.04. Docker is een programma dat het mogelijk maakt om verschillende computerprogramma's op een gemakkelijke manier te draaien. Dit wordt gedaan door de programma's in een soort "doos" te plaatsen, zodat ze gemakkelijk kunnen worden gestart en gebruikt. Om Docker te installeren, heb je een Raspberry Pi 3B+ met Ubuntu 22.04 en een SSH-verbinding met de Raspberry Pi nodig. In stap 1 wordt uitgelegd hoe je curl installeert, een programma om bestanden van het internet te downloaden. In stap 2 wordt uitgelegd hoe je Docker installeert door verschillende commando's in de terminal in te typen, zoals het updaten van de softwarelijst, het verwijderen van oudere versies van Docker en het installeren van de nieuwste versie. Ook wordt uitgelegd hoe je de versie van Docker kunt controleren en hoe je de Raspberry Pi kunt herstarten. In stap 3 wordt uitgelegd hoe je de Raspberry Pi vanuit je laptop kunt benaderen via SSH of met het programma Portainer. Voor Windows-gebruikers wordt uitgelegd hoe je Windows Subsystem for Linux kunt gebruiken en hoe je een WSL-venster opent. Voor Mac-gebruikers wordt uitgelegd hoe je een terminalsessie opent en hoe je verbinding maakt met de Raspberry Pi via SSH. Voor Ubuntu-gebruikers wordt uitgelegd hoe je een terminalsessie opent en hoe je verbinding maakt met de Raspberry Pi via SSH.