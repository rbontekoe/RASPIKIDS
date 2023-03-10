# Slimme meter aansluitengeïnstalleerd

*We gaan een slimme meter aansluiten. Een slimme meter is een meter die we gebruiken om te meten hoeveel stroom en gas we verbruiken in huis. We gaan dit doen met behulp van een Domoticz container. We leren ook hoe we de gegevens als MQTT bericht naar de Node-red broker kunnen versturen.*

### Inhoud

```@contents
Pages = ["chapter10.md"]
```

## Wat je nodig hebt
- Een Raspberry Pi 3B+ met het besturingssysteem Ubuntu Server 22.04.
- Docker, Portainer en Domoticz zijn geïnstalleerd.
- De Raspberry Pi heeft verbinding met het Internet.
- [P1 Slimme meter kabel](https://www.sossolutions.nl/slimme-meter-kabel).

!!! info
    Controleer of je slimme meter die je thuis gebruikt in het lijstje staat van de kabel en wat de snelheid van de omzetting moet zijn (9600 of 115200). Zelf heb ik een Kaifa MC304 die met een snelheid van 115200 Baud seriele gegevens naar parallel omzet. De kabel heeft aan de ene kant een USB aansluiting en aan de andere kant een telefoonaansluiting (rj11-connector).

## Wat je gaat doen

Stap 1 - USB van de kabel op de Raspberry Pi aansluiten.

Stap 2 - Voeding aanzetten van de Raspberry Pi.

Stap 3 - Ander gedeelte van de kabel aansluiten op je Slimme Meter.

Stap 4 - Maak een device aan voor power en voor gas.

De P1-kabel wordt gebruikt om de gegevens van de slimme meter naar de Raspberry Pi te verzenden, zodat je in Domoticz kunt zien hoeveel elektriciteit of gas je hebt verbruikt.

### Stap 1 - USB van de kabel op de Raspberry Pi aansluiten

Sluit de P1 kabel aan op de Raspberry Pi.

### Stap 2 - Voeding aanzetten van de Raspberry Pi

Sluit de voeding aan op de Raspery Pi en steek de stekker van de voeding in het stopcontact. 

### Stap 3 - Ander gedeelte van de kabel aansluiten op je Slimme Meter

1. Even wachten totdat de Raspberry Pi is opgestart en steek vervolgens de andere kant van de P1 kabel in de Slimme Meter.

2. Ga naar je internet browser en typ `IP-adres_Raspberry_Pi:8081`.

3. Klik op het tabblad **Setup** en kies **Hardware**.

4. Maak dan een P1 verbinding met de volgende informatie:

![fig_11_1](assets/fig_11_1.png)
      
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

1. Kies op de **Setup** tab voor **Devices**. ``\\``![fig_11_1](assets/fig_11_2.png)

2. Activeer **Power** en **Gas** door op het groene pijltje naar rechts te klikken.

3. De pijltjes worden vervolgens zwart en wijzen naar links als teken dat ze geactiveerd zijn.

4. Uitgebreide gegevens ziet je onder de tab **Utility** en **Dashboard**.

5. Onder **Utlity**  verschijnen grafieken als je op de toets **log** klikt.

## Samenvatting

We gaan een slimme meter aansluiten, die meet hoeveel stroom en gas we gebruiken in huis. Dit doen we met een Domoticz container en sturen de gegevens als MQTT bericht naar de Node-red broker. Om dit te doen hebben we een Raspberry Pi nodig die verbinding heeft met het internet en een P1 slimme meter kabel. Voordat we beginnen, moeten we controleren of onze slimme meter in de lijst van kabels staat en wat de snelheid van de omzetting moet zijn (9600 of 115200). We gebruiken een kabel met een USB-aansluiting aan de ene kant en een telefoonaansluiting (rj11-connector) aan de andere kant. Als we dit hebben, kunnen we beginnen met het installeren van Domoticz en het aansluiten van de slimme meter op de Raspberry Pi. Daarna kunnen we de gegevens naar de Node-red broker sturen en bekijken hoeveel stroom en gas we gebruiken in ons huis.