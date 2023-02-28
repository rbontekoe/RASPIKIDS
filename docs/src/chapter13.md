# Grafana en InfluxDB containers installeren

*Grafana is een programma dat je kunt gebruiken om gegevens te visualiseren. Stel je voor dat je een lijst hebt met getallen, zoals de temperatuur in een kamer gedurende een dag. Met Grafana kun je deze getallen op een grafiek zetten, zodat je gemakkelijk kunt zien hoe de temperatuur is veranderd gedurende de dag. Zo kun je bijvoorbeeld zien of de temperatuur is gestegen of gedaald, en hoeveel.

InfluxDB is een programma waarmee je gegevens kunt opslaan en beheren. Stel je voor dat je een lijst hebt met getallen, zoals de temperatuur in een kamer gedurende een week. Met InfluxDB kun je deze getallen opslaan, zodat je ze later weer kunt bekijken. Zo kun je bijvoorbeeld zien hoe de temperatuur is veranderd gedurende een week, en hoeveel.

Grafana en InfluxDB worden vaak samen gebruikt. Met Grafana kun je de gegevens die in InfluxDB zijn opgeslagen visualiseren, zodat je ze gemakkelijk kunt begrijpen en analyseren. Bijvoorbeeld, als je de temperatuur in een kamer wilt bekijken gedurende een week, kun je de gegevens van de temperatuur in InfluxDB opslaan.*

### Inhoud

```@contents
Pages = ["chapter13.md"]
```

## Wat je nodig hebt

- Een Raspberry Pi 3B+ met het besturingssysteem Ubuntu Server 22.04.
- Docker, Portainer en Node-RED zijn geinstalleerd.
- De Raspberry Pi heeft verbinding met het Internet.

## Wat je gaat doen

Stap 1: Stack met Grafana en Influxdb maken.

Stap 2: Wachtwoord Grafana wijzigen.

Stap 3: Grafana aan InfluxDB koppelen.

Stap 4: Sensor_data database maken.

Stap 5: Data naar database wegschrijven

## Stap 1 - Stack met Grafana en Influxdb maken

### docker-compose.yml
```
version: '3.6'

services:
  grafana:
    container_name: grafana
    image: grafana/grafana
    restart: unless-stopped
    user: "0"
    ports:
    - "3000:3000"
    environment:
    - TZ=Etc/UTC
    - GF_PATHS_DATA=/var/lib/grafana
    - GF_PATHS_LOGS=/var/log/grafana
    volumes:
    - ./volumes/grafana/data:/var/lib/grafana
    - ./volumes/grafana/log:/var/log/grafana
    healthcheck:
      test: ["CMD", "wget", "-O", "/dev/null", "http://localhost:3000"]
      interval: 30s
      timeout: 10s
      retries: 3
      start_period: 30s

  influxdb:
    container_name: influxdb
    image: "influxdb:1.8"
    restart: unless-stopped
    ports:
    - "8086:8086"
    environment:
    - TZ=Etc/UTC
    - INFLUXDB_HTTP_FLUX_ENABLED=false
    - INFLUXDB_REPORTING_DISABLED=false
    - INFLUXDB_HTTP_AUTH_ENABLED=false
    - INFLUXDB_MONITOR_STORE_ENABLED=FALSE
  # - INFLUX_USERNAME=dba
  # - INFLUX_PASSWORD=supremo
  # - INFLUXDB_UDP_ENABLED=false
  # - INFLUXDB_UDP_BIND_ADDRESS=0.0.0.0:8086
  # - INFLUXDB_UDP_DATABASE=udp
    volumes:
    - ./volumes/influxdb/data:/var/lib/influxdb
    - ./backups/influxdb/db:/var/lib/influxdb/backup
    healthcheck:
      test: ["CMD", "curl", "http://localhost:8086"]
      interval: 30s
      timeout: 10s
      retries: 3

      start_period: 30s
```

Deze code gaat over twee services die "Grafana" en "InfluxDB" heten.

Laten we beginnen met Grafana. De "services" sectie vertelt ons dat we een service hebben die Grafana heet. Het gebruikt een "image" genaamd "grafana/grafana", wat betekent dat het Grafana-pakket van Docker Hub zal worden gebruikt.

De "restart" sectie vertelt de container om opnieuw op te starten tenzij er een specifieke stopopdracht wordt gegeven. De "user" sectie stelt de gebruiker in de container in op 0, wat betekent dat het als de rootgebruiker wordt uitgevoerd.

Dan hebben we de "ports" sectie die ons vertelt dat we de poorten 3000:3000 moeten openen, wat betekent dat verkeer naar de poort 3000 van de container zal worden omgeleid naar poort 3000 op de hostmachine.

De "environment" sectie vertelt ons welke omgevingsvariabelen we moeten instellen. "TZ" is de tijdzone en "GF_PATHS_DATA" en "GF_PATHS_LOGS" zijn de paden naar de gegevens- en logbestanden van Grafana. De "volumes" sectie vertelt ons dat we lokale mappen moeten koppelen aan mappen in de container.

Ten slotte hebben we de "healthcheck" sectie die ons vertelt hoe we kunnen controleren of Grafana correct werkt. Het test de container elke 30 seconden door een opdracht uit te voeren en als de test niet slaagt, zal het nog twee keer proberen voordat het de container als niet-gezond beschouwt.

InfluxDB volgt een vergelijkbaar formaat als Grafana. We hebben een container genaamd "influxdb" die de "influxdb:1.8" image gebruikt. Het opent poort 8086, stelt enkele omgevingsvariabelen in en koppelt mappen.

Net als Grafana heeft InfluxDB ook een "healthcheck" sectie die test of de container correct werkt door het elke 30 seconden te testen.

## Stap 2 - Wachtwoord Grafana wijzigen

De standaard gebruikers naam en het wachtwoord zijn respectievelijk admin/admin. Als je daarmee inlogt wordt er gevraag of je wachtwoord wilt veranderen.

![fig_13_1](assets/fig_13_1.png)

## Stap 3 - Grafana aan InfluxDB koppelen

![fig_13_2](assets/fig_13_2.png)

![fig_13_3](assets/fig_13_3.png)

![fig_13_4](assets/fig_13_4.png)



## Samenvatting
