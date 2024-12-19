# Bijlage

!!! info
    Zorg ervoor dat je toestemming hebt van een ouder of verantwoordelijke volwassene voordat je iets downloadt op je computer. Als je hulp nodig hebt tijdens het downloaden en installeren, vraag dan aan een ouder of verantwoordelijke volwassene om je te helpen.

# Introduction

Ik heb zelf een Lenovo Legion Y520 Windows 10 laptop met Ubuntu 22.04 geïnstalleerd op een [Samsung portable SSD T5](#Install-Ubuntu-on-Samsung-T5-and-Lemovo-Legion-Y520-with-Windows-10) schijf. Ik start mijn machine op vanaf deze schijf.


# Voordelen en nadelen van containerisatie

### Nadelen
Er zijn een aantal nadelen verbonden aan containerisatie, waaronder:

1. Complexiteit: Containerisatie kan de complexiteit van een systeem verhogen, vooral als er veel verschillende containers worden gebruikt.

2. Beveiliging: Containerisatie kan beveiligingsrisico's introduceren, vooral als containers niet goed worden beheerd en geconfigureerd.

3. Prestaties: In sommige gevallen kunnen containers de prestaties van een systeem beïnvloeden, vooral als er veel containers op dezelfde fysieke server worden uitgevoerd.

4. Opslag: Containerisatie kan leiden tot een grotere opslagbehoefte voor het opslaan van de containerafbeeldingen.

5. Beheer: Containerbeheer kan complex zijn en vereist specifieke vaardigheden en tools.

6. Netwerk: In sommige gevallen kan de netwerkconfiguratie van de containerisatie-omgeving complex zijn.

### Voordelen

Er zijn een aantal voordelen verbonden aan containerisatie, waaronder:

1. Portabiliteit: Containers zorgen voor een hoge graad van portabiliteit, waardoor applicaties gemakkelijk tussen verschillende omgevingen kunnen worden verplaatst.

2. Isolatie: Containers bieden een aantal voordelen voor de isolatie van applicaties, waardoor het risico van conflicten tussen verschillende applicaties wordt verminderd.

3. Schaalbaarheid: Containerisatie maakt het gemakkelijker om applicaties te schalen, aangezien containers gemakkelijk kunnen worden toegevoegd of verwijderd als er meer of minder capaciteit nodig is.

4. Kostenefficiëntie: Containerisatie kan leiden tot kostenefficiëntie, aangezien containers minder middelen verbruiken dan traditionele virtuele machines.

5. Continu integratie en deployment: De containerisatie-technologie kan gebruikt worden voor continu integratie en deployment, waardoor het gemakkelijker is om updates en nieuwe versies van applicaties te implementeren.

6. Beheer: Containerisatie kan het beheer van applicaties vergemakkelijken, omdat containers gemakkelijk kunnen worden gestart, gestopt en verwijderd.

Nog even bewaren!

########################

Deze code gaat over twee services die "Grafana" en "InfluxDB" heten.

Laten we beginnen met Grafana. De "services" sectie vertelt ons dat we een service hebben die Grafana heet. Het gebruikt een "image" genaamd "grafana/grafana", wat betekent dat het Grafana-pakket van Docker Hub zal worden gebruikt.

De "restart" sectie vertelt de container om opnieuw op te starten tenzij er een specifieke stopopdracht wordt gegeven. De "user" sectie stelt de gebruiker in de container in op 0, wat betekent dat het als de rootgebruiker wordt uitgevoerd.

Dan hebben we de "ports" sectie die ons vertelt dat we de poorten 3000:3000 moeten openen, wat betekent dat verkeer naar de poort 3000 van de container zal worden omgeleid naar poort 3000 op de hostmachine.

De "environment" sectie vertelt ons welke omgevingsvariabelen we moeten instellen. "TZ" is de tijdzone en "GF_PATHS_DATA" en "GF_PATHS_LOGS" zijn de paden naar de gegevens- en logbestanden van Grafana. De "volumes" sectie vertelt ons dat we lokale mappen moeten koppelen aan mappen in de container.

Ten slotte hebben we de "healthcheck" sectie die ons vertelt hoe we kunnen controleren of Grafana correct werkt. Het test de container elke 30 seconden door een opdracht uit te voeren en als de test niet slaagt, zal het nog twee keer proberen voordat het de container als niet-gezond beschouwt.

InfluxDB volgt een vergelijkbaar formaat als Grafana. We hebben een container genaamd "influxdb" die de "influxdb:1.8" image gebruikt. Het opent poort 8086, stelt enkele omgevingsvariabelen in en koppelt mappen.

Net als Grafana heeft InfluxDB ook een "healthcheck" sectie die test of de container correct werkt door het elke 30 seconden te testen.

########################
