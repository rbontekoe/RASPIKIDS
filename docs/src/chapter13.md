# Grafana en InfluxDB containers installeren

*Grafana is een programma dat je kunt gebruiken om gegevens te visualiseren. Stel je voor dat je een lijst hebt met getallen, zoals de temperatuur in een kamer gedurende een dag. Met Grafana kun je deze getallen op een grafiek zetten, zodat je gemakkelijk kunt zien hoe de temperatuur is veranderd gedurende de dag. Zo kun je bijvoorbeeld zien of de temperatuur is gestegen of gedaald, en hoeveel.

InfluxDB is een programma waarmee je gegevens kunt opslaan en beheren. Stel je voor dat je een lijst hebt met getallen, zoals de temperatuur in een kamer gedurende een week. Met InfluxDB kun je deze getallen opslaan, zodat je ze later weer kunt bekijken. Zo kun je bijvoorbeeld zien hoe de temperatuur is veranderd gedurende een week, en hoeveel.

Grafana en InfluxDB worden vaak samen gebruikt. Met Grafana kun je de gegevens die in InfluxDB zijn opgeslagen visualiseren, zodat je ze gemakkelijk kunt begrijpen en analyseren. Bijvoorbeeld, als je de temperatuur in een kamer wilt bekijken gedurende een week, kun je de gegevens van de temperatuur in InfluxDB opslaan.*

### Inhoud

```@contents
Pages = ["chapter13.md"]
```

## Wat je nodig hebt

## Wat je gaat doen

Stap 1: Stack met Grafana en Influxdb maken.

Stap 2: Wachtwoord Grafana wijzigen.

Stap 3: Grafana aan InfluxDB koppelen.

Stap 4: Influxdb module in Node-RED maken.

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
## Stap 2 - Wachtwoord Grafana wijzigen

De standaard gebruikers naam en het wachtwoord zijn respectievelijk admin/admin. Als je daarmee inlogt wordt er gevraag of je wachtwoord wilt veranderen.

![fig_13_1](assets/fig_13_1.png)

## Stap 3 - Grafana aan InfluxDB koppelen

![fig_13_2](assets/fig_13_2.png)

![fig_13_3](assets/fig_13_3.png)

![fig_13_4](assets/fig_13_4.png)

## Stap 3 - InfluxDB module in Node-RED maken


## Samenvatting
