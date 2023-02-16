# MQTT broker installeren

*Een MQTT broker is een programma waarmee we gegevens kunnen uitwisselen tussen verschillende computers of sensoren.*

### Inhoud

```@contents
Pages = ["chapter7.md"]
```

## Wat je nodig hebt

- Een Raspberry Pi 3B+ met het besturingssysteem Ubuntu Server 22.04.
- Docker, Portainer en Node-RED zijn geinstalleerd.

## Wat je gaat doen

Stap 1: ChatGPT om docker-compose.yml bestand vragen.

Stap 2: Installeren Mosquittto.

## Stap 1 - ChatGPT om docker-compose.yml bestand vragen

Stel de volgende vraag aan chatGPT: maak een docker-compose.yml bestand voor mosquitto.

Ik kreeg als antwoord:

### docker-compose.yml
```
version: '3'
services:
  mosquitto:
    image: eclipse-mosquitto
    ports:
      - "1883:1883"
    volumes:
      - mosquitto-data:/mosquitto/data
      - mosquitto-config:/mosquitto/config
    restart: unless-stopped

volumes:
  mosquitto-data:
  mosquitto-config:
```

Deze configuratie maakt gebruik van de officiële Eclipse Mosquitto Docker-afbeelding (image) en maakt verbinding op poort 1883. Het configureert ook twee Docker-volumes voor de gegevens en configuratie van Mosquitto, zodat deze na het verwijderen van de container behouden blijven.

## Stap 2 - Installeren Mosquittto

|Stap        | Actie      |
|:---------- | :---------- |
| 1 | Kopieeer de gegevens uit [docker-compose.yml](#docker-compose.yml) naar het klembord. |
| 2 | Open de browser en type in de adresbalk: `IP-adres_Raspberry_Pi:9000`. Dit zorgt dat je Portainer in je browser opent. |
| 3 | Zoek in de browser naar "stacks" en klik erop. Hierdoor opent het menu. ``\\``![fig_7_1](assets/fig_7_1.png)|
| 4 | Klik in het menu op "Stacks" om een overzicht te zien. ``\\``![fig_7_2](assets/fig_7_2.png) |
| 5 | Klik op de knop "Add Stack". ``\\``![fig_7_3](assets/fig_7_3.png) |
| 6 | Geef de Stack een naam door `mosquittto` in het veld "Name" te typen.| 
| 7 | Klik op de eerste regel in het veld "Web-editor" en plak de tekst van het klembord door Ctrl+V te drukken. |
| 8 | Klik op de knop "Deploy the stack" die onderaan de pagina staat.``\\``![fig_7_4](assets/fig_7_4.png) |
| 9 | Ga naar het menu "containers" en kijk of de container begint .|
||

En dat is het! Je zou nu een werkende Mosquitto MQTT-broker moeten hebben binnen een Docker stack die beheerd wordt door Portainer. 

## Samenvatting

Je gaat een MQTT broker installeren op je Raspberry Pi computer die Ubuntu Server 22.04 als besturingssysteem heeft. Hiermee kun je gegevens uitwisselen tussen verschillende computers of sensoren. Je gaat dit doen door eerst een bestand te maken (door ChatGPT te vragen om hulp) dat "docker-compose.yml" heet en daarna Mosquitto installeren met behulp van Portainer. Dit alles zorgt ervoor dat je een werkende MQTT broker krijgt.