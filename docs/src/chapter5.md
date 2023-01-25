# 5. Node-RED installeren

*Node-RED is een computerprogramma waarbij we dingen kunnen aanmaken door blokjes aan elkaar te koppelen, bijvoorbeeld om een website te maken. Dit noemen we grafisch programmeren, wat betekent dat we dingen kunnen maken met blokjjes in plaats van lange lijsten met code te schrijven.*

### Contents

```@contents
Pages = ["chapter5.md"]
```

## Wat je nodig hebt

- Een Raspberry Pi 3B+ met het besturingssysteem Ubunti 22.04
- Docker en Portainer geinstalleerd.
- SSH verbinding met de Raspberry Pi.

## Wat je gaat doen

We gaan gebruikmaken van Portainer om Node-RED te installeren. Dat doen we door een stack te maken met een docker-compose.yml bestand. Een docker-compose.yml file bevat de instructies voor Docker om een container te maken. 

Het voordeel van een docker-compose file is dat je makkelijk voorbeelden kan vinden op het Internet.

Stap 1: Inloggen op Portainer en naar Stacks gaan.

Stap 2: De docker-compose.yml gegevens naar het klembord kopieren.

Stap 3: De docker-compose.yml in de stack plakken.

Stap 4: De container gegevens verversen en bekijken.

### docker-compose.yml
```
################################################################################
# https://nodered.org/docs/getting-started/docker
# Node-RED Stack or Compose
################################################################################
# docker stack deploy node-red --compose-file docker-compose.yml
# docker compose -f docker-compose.yml -p nodered up
################################################################################
version: "3.7"

services:
  node-red:
    image: nodered/node-red:latest
    environment:
      - TZ=Europe/Amsterdam
    ports:
      - "1880:1880"
    networks:
      - node-red-net
    volumes:
      - node-red-data:/data

volumes:
  node-red-data:

networks:
  node-red-net:
```

Dit is een bestand dat Docker gebruikt om een container met Node-RED te maken. Het haalt het image (=nodered/node-red:latest) van het internet van [Docker Hub](https://hub.docker.com/). `latest` geeft aan dat we altijd de nieuwste versie gebruiken. We zetten het programma aan in de tijdzone van Amsterdam. We geven ook toegang tot het programma vanaf de computer via poort 1880. Ook maken we een plek om gegevens op te slaan op de Raspberry Pi dat node-red-data heet.

## Stap 1: Inloggen op Portainer en naar Stacks gaan

Je gaat met behulp van Portainer een stack maken voor de Node-RED container. Een stack is een beschrijving van wat Docker moet doen om een container te maken. Een stack staat beschreven in een bestand wat meestal docker-compose.yml heet. Het beschrijft wat het image is dat gebruikt moet worden. Een image is te vergelijken met een template. Veel images met name van bekende programma's vind je op [Docker Hub](https://hub.docker.com/) een soort algemene bibliotheek. 

|Stap        | Actie      | Opmerking |
|:---------- | :---------- |:---------- |
| 1 | http://<ip-adres Raspberry Pi>:9000 | Open portainer in je browser. |
| 2 | Klik op 'stacks" | Het menu wordt geopend. |
| 3 | Klik in het menu op Stack | Het stacks overzicht wordt getoond. |
||

## Stap 2: De docker-compose.yml gegevens naar het klembord kopieren

Je gaat de inhoud van het bestand docker-compose.yml uit het voorbeeld hier boven naar het klembord kopieren.

|Stap        | Actie      | Opmerking |
|:---------- | :---------- |:---------- |
| 1 | Ga naar [docker-compose.yml](#docker-compose.yml)|  |
| 2 | Selecteer alle tekst met je muis | Regels met "#" zijn commentaarregels en hoef je niet mee te kopieren. |
| 3 | Ctrl-C | Kopieer de tekst naar het klembord. |
||

## Stap 3: De docker-compose.yml in de stack plakken

In deze stap maak je een pagina aan waarin je de naam van de stack opgeeft en de gegevens van de docker-compose.yml

|Stap        | Actie      | Opmerking |
|:---------- | :---------- |:---------- |
| 1 | Klik in het stacks overzicht op de toets "Add stack" |  |
| 2 | In het veld name tik: nodered |  |
| 3 | Plaats de cursor in het veld "Web editor" | Klik op de eerste regel. |
| 5 | Ctrl-V | Plak de tekst van het klembord naar het veld. |
| 6 | klik op de toets "Deploy the stack" | De toets staat helemaal onderaan de pagina. |
||

## Samenvatting

Node-RED is een computerprogramma dat je kunt gebruiken om dingen te maken door blokjes aan elkaar te koppelen. Zo kun je bijvoorbeeld een website maken zonder dat je veel code hoeft te schrijven. We gebruiken een programma genaamd Portainer om Node-RED te installeren op een Raspberry Pi met Ubuntu. We maken een stack (een beschrijving voor Docker) en kopiëren deze in een bestand genaamd docker-compose.yml. Hierin staat beschreven hoe de container gemaakt moet worden. Zo kun je makkelijk Node-RED gebruiken zonder veel technische kennis.