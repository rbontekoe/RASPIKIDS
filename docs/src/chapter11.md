# Slimme meter aansluiten

*We gaan een slimme meter aansluiten. Een slimme meter is een meter die we gebruiken om te meten hoeveel stroom en gas we verbruiken in huis. We gaan dit doen met behulp van een Domoticz container. We leren ook hoe we de gegevens als MQTT bericht naar de Node-red broker kunnen versturen.*

### Contents

```@contents
Pages = ["chapter10.md"]
```

## Wat je nodig hebt
- Een Raspberry Pi installatie die staat in sectie 1.
- De Raspberry Pi heeft verbiding met het Internet.
- [P1 Slimme meter kabel](https://www.sossolutions.nl/slimme-meter-kabel).

!!! info
    Controleer of je slimme meter die je thuis gebruikt in het lijstje staat van de kabel en wat de snelheid van de omzetting moet zijn (9600 of 115200). Zelf heb ik een Kaifa MC304 die met een snelheid van 115200 Baud seriele gegevens naar parallel omzet. De kabel heeft aan de ene kant een USB aansluiting en aan de andere kant een telefoonaansluiting (rj11-connector).

## Wat je gaat doen
- Stap 1 - USB van de kabel op de Raspberry Pi aansluiten.
- Stap 2 - Voeding aanzetten van de Raspberry Pi.
- Stap 3 - Ander gedeelte van de kabel aansluiten op je Slimme Meter.
- Stap 4 - Maak een device aan voor power en voor gas.

### Stap 1 - USB van de kabel op de Raspberry Pi aansluiten

De P1-kabel wordt gebruikt om de gegevens van de slimme meter naar de Raspberry Pi te verzenden, zodat je in Domoticz kunt zien hoeveel elektriciteit of gas je hebt verbruikt.

### Stap 2 - Voeding aanzetten van de Raspberry Pi

Sluit de voeding aan op de Raspery Pi en steek de voeding in het stopcontact. 

### Stap 3 - Ander gedeelte van de kabel aansluiten op je Slimme Meter

Even wachten totdat de Raspberry Pi is opgestart en steek vervolgens de andere kant van de P1 kabel in de Slimme Meter.

Ga naar je internet browser en typ <ip-adres van de Raspberry Pi>:8081.

Klik op het tabblad **Setup** en kies **Hardware**.

Maak dan een P1 verbinding met de volgende informatie:

- Enabled schakelaar: Aan (=groen)
- Naam: p1
- Log level/Info/Status/Error scakelaars: Aan
- Type: Smart Meter P1
- Serial Port: /dev/ttyUSB0
- Data Timeout: disabled
- Baudrate: 9600 of 115200
- CRC message validation schakelaar: Aan
- Rate Limit: 0

Druk op de toets **Add**.

### Stap 4 - Maak een device aan voor power en voor gas

Kies op de **Setup** tab voor **Devices**.

Activeer **Power** en **Gas** door op het groene pijltje naar rechts te klikken.

De pijltjes worden vervolgens zwart en wijzen naar links als teken dat ze geactiveerd zijn.

Uitgebreide gegevens ziet je onder de tab **Utility** en **Dashboard**.

Onder **Utlity**  verschijnen grafieken als je op de toets **log** klikt.

## Samenvatting

Als je weet hoe je iets moet instellen, wordt het super makkelijk. Ik heb geprobeerd genoeg informatie te geven zodat je kan slagen.