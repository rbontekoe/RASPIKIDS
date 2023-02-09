# Domoticz installeren

*Domoticz is een programma dat je kunt gebruiken om het "slimme" huis te beheren. Als je een slimme meter hebt, is het handig om Domoticz te gebruiken om het energieverbruik in huis te bekijken en om op afstand het energieverbruik te controleren. Domoticz is een programma dat je kunt gebruiken om het "slimme" huis te beheren. Als je een slimme meter hebt, is het handig om Domoticz te gebruiken om het energieverbruik in huis te bekijken en om op afstand het energieverbruik te controleren.*

### Inhoud

```@contents
Pages = ["chapter10.md"]
```

## Wat je nodig hebt

- Een Raspberry Pi installatie die staat in sectie 1.
- De Raspberry Pi heeft verbiding met het Internet.
- PC die een SSH verbinding heeft met de Raspberry Pi.

## Wat je gaat doen

- Stap 1: Je computer met SSH verbinden met de Raspberry Pi.
- Stap 2: Container starten met docker-compose.
- Stap 3: Domoticz benaderem met een browser.

### Stap 1 - Je computer met SSH verbinden met de Raspberry Pi

Verbind je compoter met de Raspberry Pi en log in.
```
ssh ubuntu@<ip-adres van de Raspberry Pi>
```

### docker-compose.yml
```
version: '3.3'

services:
  domoticz:
    image: domoticz/domoticz
    container_name: domoticz
    restart: unless-stopped
    # Pass devices to container
    devices:
      - "/dev/ttyUSB0:/dev/ttyUSB0"
    ports:
      - "8081:8080"
    volumes:
      - ./config:/opt/domoticz/userdata
    environment:
      - TZ=Europe/Amsterdam
      #- LOG_PATH=/opt/domoticz/userdata/domoticz.log
```


### Stap 2 - Container starten met docker-compose

Maak een folder aan onder de folder projects met de naam domoticz.
```
cd projects
mkdir domoticz
cd domoticz
```

Maak een leeg bestand en open het bestand met de nano editor. Selecteer de code de docker-compose.yml sectie [hierboven](#docker-compose.yml) en plak het in de editor met Ctrl-v. Bewaar het bestand vervolgens met Ctrl-o en verlaat de editor met Ctr-x.
```
touch docker-compose.yml
nano docker-compose.yml
```

### Stap 3 - Domoticz via een browser

Tik het volgende commando in de adresbalk van je browser.
```
<adres raspberry pi>:8081

# bijvoorbeeld
# 192.168.2.49:8081

```

## Samenvatting

In deze les leer je hoe je Domoticz installeert. We gebruiken een Docker container dat Domoticz al heeft. We hebben hiervoor een bestand nodig dat docker-compose.yml heeft. Dit bestand stelt ons in staat om de Domoticz container te installeren op onze Raspberry Pi. In het bestand staat ook hoe we een verbinding kunnen maken met onze USB-stick via - /dev/ttyUSB0:/dev/ttyUSB0.