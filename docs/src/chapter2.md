# WiFi instellen

*De Raspberry Pi moet contact kunnen maken met het Internet, bijvoorbeeld om software te downloaden.*

### Contents

```@contents
Pages = ["chapter2.md"]
```

## Wat heb je nodig

Om een Raspberry Pi te gebruiken, heb je het volgende nodig:

- Een [Raspberry Pi 3B+](https://www.sossolutions.nl/raspberry-pi-3-model-b-plus) computer.
- Een klaargemaakt micro SD-kaartje voor de Raspberry Pi, zie vorige hoofdstuk.
- Een adapter om stroom aan de Raspberry Pi te geven.
- Een scherm met HDMI aansluiting, zoals een TV of de [UCtronics 7 Inch touchscreen](https://www.sossolutions.nl/uctronics-7-inch-ips-touchscreen-for-raspberry-pi-with-prop-stand-1024-600-capacitive-hdmi-lcd-monitor-portable-display-for-raspberry-pi-4-3-b-windows-10-8-7-free-driver).
- Een [USB-toetsenbord US](https://www.sossolutions.nl/officiele-raspberry-pi-toetsenbord-muis-zwart-grijs),
om te typen op de Raspberry Pi.
- Naam van je Wifi-netwerk.
- Wachtwoord van je Wifi-netwerk.


## Wat ga je doen

Stap 1: Stop het SD-kaartje in de Raspberry Pi.

Stap 2: Sluit het scherm en het toetsenbord aan op de Raspberry Pi.

Stap 3: Sluit de adapter voor de stroom aan op de Raspberry Pi.

Stap 4: Gebruik speciale bevelen om dingen te doen met de Raspberry Pi.

Stap 5: Maak verbinding met de Raspberry Pi vanaf een andere computer via SSH.


## Stap 1: Stop het SD-kaartje in de Raspberry Pi

![Raspberry Pi 3B+](https://upload.wikimedia.org/wikipedia/commons/thumb/9/97/Raspberry_Pi_3_B%2B_%2839906369025%29.png/390px-Raspberry_Pi_3_B%2B_%2839906369025%29.png)

Om een micro SD-kaartje te gebruiken in een Raspberry Pi 3B+, volg je deze stappen:

1. Zoek de SD-kaartlezer op de Raspberry Pi. Dit is een kleine rechthoekige opening links in het midden van de Raspberry Pi.

2. Neem het micro SD-kaartje en kijk naar beide kanten. Er zal op één kant iets gedrukt staan.

3. Houd het kaartje met de kant met de tekst naar beneden gericht en stop het in de SD-kaartlezer.

4. Duw het kaartje zachtjes in de kaartlezer totdat het op zijn plaats zit.

5. Als je het kaartje wilt verwijderen, trek je het kaartje naar buiten.

## Stap 2 - Sluit het scherm en het toetsenbord aan op de Raspberry Pi

![Raspberry Pi 3B+](https://upload.wikimedia.org/wikipedia/commons/thumb/9/97/Raspberry_Pi_3_B%2B_%2839906369025%29.png/390px-Raspberry_Pi_3_B%2B_%2839906369025%29.png)

De USB-poorten zitten aan de rechterkant van het Raspberry Pi 3B+ bord. Daar sluit je het toetsenbord aan.

De HDMI-poort is de grote connector onderaan in het midden van het bord. Daar sluit je de monitor of TV aan

## Stap 3 - Sluit de adapter voor de stroom aan op de Raspberry Pi

Om de Raspberry Pi 3B+ te laten werken, sluit je de adapter voor de stroom aan op de micro USB-aansluiting aan de linkerkant onderaan het bord. Steek vervolgens de stekker van de adapter in het stopcontact. Je zal op het scherm zien dat de Raspberry Pi opstart. Uiteindelijk zal het systeem je vragen om een gebruikersnaam. Tik de gebruikersnaam "ubuntu" in en druk op de Enter-toets.

Daarna zal het systeem je vragen om het wachtwoord. Voer ook hier "ubuntu" in en druk op de Enter-toets. Het systeem zal nu vragen of je het wachtwoord wilt wijzigen. Voer eerst het oude wachtwoord "ubuntu" in en daarna je nieuwe wachtwoord. Druk op de Enter-toets om de wijziging te bevestigen.

Om de Raspberry Pi opnieuw op te starten, geef je het volgende commando: 

```
sudo reboot
``` 
Druk op de Enter-toets om het commando uit te voeren.

Het scherm waar je op werkt, wordt de "terminal" genoemd.

### 50-cloud-init.yaml
```
# This file is generated from information provided by
# the datasource.  Changes to it will not persist across an instance.
# To disable cloud-init's network configuration capabilities, write a file
# /etc/cloud/cloud.cfg.d/99-disable-network-config.cfg with the following:
# network: {config: disabled}
network:
    version: 2
    ethernets:
        eth0:
            optional: true
            dhcp4: true
    # add wifi setup information here ...
    wifis:
        wlan0:
            optional: true
            access-points:
                "YOUR-SSID-NAME":
                    password: "YOUR-NETWORK-PASSWORD"
            dhcp4: true
```

## Stap 4 - Gebruik speciale bevelen om dingen te doen met de Raspberry Pi

De terminal is een programma op je computer waarmee je speciale opdrachten kunt geven aan het besturingssysteem van je computer. Als je bijvoorbeeld wilt dat je computer bestanden kan downloaden via WiFi, dan kan je een speciaal bestand aanpassen met behulp van de terminal.

```
sudo apt update && sudo apt full-upgrade

sudo reboot
```
Ubuntu is een besturingssysteem, zoals Windows of MacOS. Het helpt je om je computer te laten werken en om programma's te gebruiken.

Soms komen er nieuwe versies van programma's uit, of worden er fouten in programma's opgelost. Als je Ubuntu gebruikt, kan het handig zijn om deze nieuwe versies te installeren of om fouten te repareren. Dit kan je doen door een opdracht te geven aan Ubuntu met behulp van de terminal.

`sudo apt update` zorgt ervoor dat Ubuntu de lijst met beschikbare programma's en hun versies bijwerkt. Dit betekent dat Ubuntu kijkt naar welke nieuwe versies er zijn van programma's die je al hebt geïnstalleerd, of welke nieuwe programma's er beschikbaar zijn.

`sudo apt full-upgrade` zorgt ervoor dat Ubuntu de nieuwste versies van alle programma's installeert of bijwerkt. Dit is vergelijkbaar met sudo apt upgrade, maar apt full-upgrade handelt ook beter met afhankelijkheden. Dit betekent dat als een nieuwe versie van een programma afhankelijk is van een ander programma, dat apt full-upgrade ervoor zorgt dat het andere programma ook geïnstalleerd of bijgewerkt wordt. Het kan ook programma's verwijderen die niet meer nodig zijn en nieuwe programma's toevoegen om aan de afhankelijkheden van de nieuwe programma's te voldoen.

Dus, als je `sudo apt update && sudo apt full-upgrade` uitvoert, zal Ubuntu de lijst met beschikbare programma's bijwerken **en** alle programma's installeren of bijwerken naar hun nieuwste versies, terwijl het ook afhankelijkheden op een slimme manier afhandelt. Dit is een veelgebruikte manier om alle programma's op een Ubuntu-systeem bij te werken naar hun nieuwste versies.

We gebruiken vaak het programma `Nano` om bestanden te maken of te wijzigen. Als je het volgende opdrachtje intypt in de terminal en op Enter drukt, dan kan je het bestand openen om aan te passen: "sudo nano /etc/netplan/50-cloud-init.yaml".

```
sudo nano /etc/netplan/50-cloud-init.yaml
```

Om WiFi te laten werken, moet je de juiste gegevens invullen in het bestand dat heet 50-cloud-init.yaml. Helaas moet je alles zelf intypen, maar later als we vanuit onze eigen computer een verbinding maken met de Raspberry Pi kunnen we gebruik maken van het "copy-paste" commando om het gemakkelijker te maken, zie de volgende stap 5.

## Stap 5 - Maak verbinding met de Raspberry Pi vanaf een andere computer via SSH

Om verbinding te maken met een Raspberry Pi vanuit een andere computer met SSH, heb je eerst een aantal dingen nodig:

De Raspberry Pi moet aan het stroomnetwerk zijn aangesloten en aan staan.

Je moet weten wat het IP-adres is van de Raspberry Pi. Dit is een uniek nummer dat aan elke computer en elk apparaat op het internet is toegewezen. Je kan het IP-adres van de Raspberry Pi opzoeken door op de Raspberry Pi een terminalvenster te openen en het commando hostname -I uit te voeren.

Je moet ook weten wat het gebruikersnaam en wachtwoord zijn voor de Raspberry Pi. De standaardgebruikersnaam is ubuntu en het standaardwachtwoord is ubuntu. Als je dit hebt veranderd, moet je het juiste gebruikersnaam en wachtwoord gebruiken.

Je moet op de andere computer een programma hebben geïnstalleerd dat SSH ondersteunt, zoals PuTTY (voor Windows) of Terminal (voor MacOS en Linux).

Als je alle benodigdheden hebt, kan je de volgende stappen volgen om verbinding te maken met de Raspberry Pi vanuit een andere computer:

Open het programma dat je gebruikt om SSH te ondersteunen op de andere computer.

Voer het IP-adres van de Raspberry Pi in in het programma. Dit kan je vinden door het commando `hostname -I` uit te voeren op de Raspberry Pi.

```
hostname -I # haal het ip-adres van je Raspberry Pi 3B+ op
192.168.2.49
```

Klik op de knop "Connect" of voer het commando ssh ubuntu@<IP-adres Raspberry Pi> in in het programma.

```
ssh ubuntu@192.168.2.49
```

Voer de gebruikersnaam en het wachtwoord in dat je voor de Raspberry Pi hebt gebruikt.

Als alles goed is gegaan, zou je nu verbinding moeten hebben met de Raspberry Pi vanuit de andere computer. Je kan dan opdrachten geven aan de Raspberry Pi en bestanden uitwisselen tussen de twee computers.

## Samenvatting

Om WiFi in te stellen op een Raspberry Pi, heb je een Raspberry Pi computer, een micro SD-kaartje, een stroomadapter, een scherm met HDMI aansluiting, een USB-toetsenbord en de naam en het wachtwoord van je WiFi-netwerk nodig. Volg de stappen: stop het SD-kaartje in de Raspberry Pi, sluit het scherm en het toetsenbord aan op de Raspberry Pi, sluit de stroomadapter aan op de Raspberry Pi, gebruik speciale bevelen om dingen te doen met de Raspberry Pi en maak verbinding met de Raspberry Pi vanaf een andere computer via SSH. Gebruik de bevelen "sudo raspi-config" en "sudo nano /etc/wpa_supplicant/wpa_supplicant.conf" om de WiFi in te stellen. Voer het commando "sudo reboot" uit om de Raspberry Pi opnieuw op te starten met de nieuwe WiFi-instellingen.