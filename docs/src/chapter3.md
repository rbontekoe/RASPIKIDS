# Docker installeren

*Docker is een programma waarmee we verschillende computerprogramma's op een gemakkelijke manier kunnen draaien. Het is een soort 'doos' waarin we de programma's kunnen zetten, zodat we ze gemakkelijk kunnen starten en gebruiken.*

### Contents

```@contents
Pages = ["chapter3.md"]
```

## Wat je nodig hebt

- Een Raspberry Pi 3B+ met het besturingssysteem Ubunti 22.04 (zie het vorige hoofdstuk).
- SSH verbinding met de Raspberry Pi

## Wat je gaat doen

Stap 1: curl installeren.

Stap 2: Docker installeren

## Stap 1 - curl installeren

Oké, dus soms hebben we een programma nodig om dingen op het internet te doen. Het heet 'curl'. Als je wilt weten of het al op je computer staat, kun je dat controleren door `curl -h` te typen. Als het niet op je computer staat, dan kun je het installeren door dit te typen: `sudo apt install curl`.

## Stap 2 - Docker installeren

Je kan Docker op een Raspberry Pi 3B+ met Ubuntu Server 22.04 installeren door de volgende stappen te volgen:

We willen een programma op onze computer gebruiken dat 'Docker' heet. Op onze Raspberry Pi 3B+ draait 'Ubuntu Server 22.04'. We doen dat door de volgende stappen te volgen:

|Stap        | Actie      | Opmerking |
|:---------- | :---------- |:---------- |
| 1 | ssh ubuntu@<ip-adres Raspberry pi> | Maak verbinding met de Raspberry Pi. |
| 2 | sudo apt-get update | Software lijst updaten en naar de nieuwste versie upgraden. |
| 3 | sudo apt-get remove docker docker-engine docker.io | VOudere versions van Docker verwijderen. |
| 4 | curl -sSL https://get.docker.com \| sh| Docker installeren. |
| 5 | sudo systemctl start docker | Docker te starten. |
| 6 | sudo systemctl enable docker | Docker automatisch starten als de computer opstart |
| 4 | sudo docker version | Versie van Docker te controleren. |
||

Nu is Docker geïnstalleerd en gestart op je Raspberry Pi 3B+ met Ubuntu Server 22.04. Je kan het installeren van Docker-images en -containers beginnen door de docker commando's te gebruiken.

## Samenvattig

Docker is een tool waarmee we gemakkelijk programma's op een computer kunnen draaien. We kunnen het installeren op een Raspberry Pi met het besturingssysteem Ubuntu 22.04 door verbinding te maken met de Raspberry Pi via SSH en het commando `curl -sSL https://get.docker.com | sh` te gebruiken. Als we de Raspberry Pi opstarten, kunnen we Docker starten met het programma `systemctl`. We kunnen ook de versie van Docker controleren met het commando: `docker version`. Het is een soort 'doos' waarin we programma's kunnen zetten om ze gemakkelijk te starten en gebruiken.