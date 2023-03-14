# Micro SD-kaartje klaarmaken voor de Raspberry Pi 3B+

*We gaan een Micro SD-kaartje klaarmaken voor de Raspberry Pi 3B+ met het besturingssysteem Ubuntu Server erop. Dit betekent dat we een speciaal soort computerprogramma op het kaartje gaan installeren. Ubuntu Server is gemaakt om te helpen bij het uitvoeren van taken op een computer.*

### Inhoud

```@contents
Pages = ["chapter1.md"]
```

## Wat je nodig hebt

Om een Micro SD kaartje te maken voor een Raspberry Pi 3B+, heb je het volgende nodig:

- Een computer met een slot voor een Micro SD kaarthouder.
- Een [Micro SD](https://elektronicavoorjou.nl/product/transcend-micro-sd-rpi-os/) kaartje, bijvoorbeeld een van 32GB.
- Een Micro SD-kaarthouder, meestal wordt deze meegeleverd met het Micro SD kaartje.
- Het Raspberry Pi Imager programma.
- Naam van je Wifi-netwerk.
- Wachtwoord van je Wifi-netwerk.

## Wat je gaat doen

Om Ubuntu Server te installeren op je Raspberry Pi, volg je deze stappen:

Stap 1: Installeer het Raspberry Pi Imager programma op je computer.

Stap 2: Maak het Micro SD kaartje klaar met Ubuntu Server.

## Stap 1 - Installeer het Raspberry Pi Imager programma op je computer

|Stap        | Actie      |
|:---------- | :---------- |
| 1 | Ga naar [https://www.raspberrypi.com/software/](https://www.raspberrypi.com/software/) en download het programma Imager. |
| 2 | Installeer het programma. |
||

## Stap 2 - Maak het Micro SD kaartje klaar met Ubuntu Server

|Stap        | Actie      |
|:---------- | :---------- |
| 1 | Kijk of je een **32 bit** of **64 bit** Raspberry Pi 3B+ Hebt. ``\\``Om te zien hoeveel "bits" je Raspberry Pi heeft, kun je het volgende doen:``\\``Kijk op het printplaatje van je Raspberry Pi naar het modelnummer. Dit staat meestal naast de microprocessor. Als het modelnummer eindigt op "**v7**", "**v7l**" of "**v7b**", betekent dit dat je Raspberry Pi een 32 bit processor heeft. Als het modelnummer eindigt op "**v8**" of "**v8l**", betekent dit dat je Raspberry Pi een 64 bit processor heeft. |
| 2 | Doe het Micro SD-kaartje in de kaarthouder. |
| 3 | Doe de kaarthouder in je laptop. |
| 4 | Start het programma Imager. ``\\``![fig_1_1](https://assets.raspberrypi.com/static/md-bfd602be71b2c1099b91877aed3b41f0.png) |
| 5 | Druk op de knop **CHOOSE OS**. |
| 6 | Kies **Other general-purpose OS**. |
| 7 | Kies **Ubuntu**. |
| 8 | Kies **Ubuntu Server 22.04.1 LTS (32 bit** als je Raspberry Pi een 32 bit processor heeft, of **Ubuntu Server 22.04.1 LTS (64 bit)** als je Raspberry Pi een 64 bit processor heeft. |
| 9 | We gaan naar een plek waar we kunnen veranderen hoe onze computer werkt. We komen daar door op een knop met een tandwiel erop te drukken. Daar kunnen we bijvoorbeeld WiFi istellen, de naam van onze computer veranderen en een wachtwoord instellen zodat we vanaf een andere plek op onze computer kunnen werken. ``\\``![fig_1_2](https://ubuntucommunity.s3.dualstack.us-east-2.amazonaws.com/optimized/3X/3/f/3f95678d7eef60678d413adff5a41836e4437b4c_2_690x448.png) |
| 10 | Druk op de knop met het tandwiel (rechts onderin). |
| 11 | Klik op het keuzevakje dat voor 'Set hostname' en verander de naam in 'ubuntu'. |
| 12 | Klik op het keuzevakje dat voor 'SSH' staat. |
| 13 | Klik op het keuzerondje 'Use password authentication'. |
| 14 | Scrol verder naar beneden en klik op het keuzevakje 'Set username and password'. |
| 15 | Verander de naam in: `ubuntu`. |
| 16 | En geef een wachtwoord op. Noteer het wachtwoord op een papiertje voor het geval je het vergeet. |
| 17 | Klik op het keuzevakje 'Configure wireless wan'. |
| 18 | Verander de naam in de naam van je WiFi netwerk. |
| 19 | Geef ook het wachtwoord op. |
| 20 | Klik op het keuzevakje 'Show password' en controleer of het juist is. |
| 21 | Verander de landcode in 'NL'. |
| 22 | Klik op het keuzevakje 'Set local setting'. |
| 23 | Verander 'Time Zone' in `Europe/Amsterdam`. |
| 24 | Druk op knop "SAVE". |
| 25 | Nu zijn we klaar om Ubuntu op een Micro SD kaart te zetten. Dit programma zorgt ervoor dat onze computer werkt. |
| 26 | Druk op de knop **CHOOSE STORAGE**. |
| 27 | Kies **Internal SD card reader**.  |
| 28 | Druk op de knop "WRITE" en dan op "YES". ``\\``Ubuntu Server wordt op je micro SD kaartje gezet. Als dat gebeurd is wordt het geheel nog een keer getest. |
| 29 | Haal de kaarthouder met de Micro SD kaart uit je computer. |
||

## Samenvatting

Dit hoofdstuk gaat over het voorbereiden van een Micro SD-kaartje voor de Raspberry Pi 3B+ met het besturingssysteem Ubuntu Server erop. Ubuntu Server is gemaakt om te helpen bij het uitvoeren van taken op een computer. Om het kaartje klaar te maken, heb je een computer nodig met een Micro SD kaarthouder, een Micro SD kaartje van 32GB, en het Raspberry Pi Imager programma. Je hebt ook de naam en het wachtwoord van je wifi-netwerk nodig.

Om Ubuntu Server te installeren, moet je het Raspberry Pi Imager programma op je computer installeren. Vervolgens moet je het Micro SD kaartje klaarmaken met Ubuntu Server. Om dit te doen, moet je het kaartje in de kaarthouder schuiven en deze in je laptop plaatsen. Daarna moet je het Imager-programma starten en de stappen volgen om Ubuntu Server op het kaartje te zetten.

Je moet ook enkele instellingen wijzigen om ervoor te zorgen dat Ubuntu Server correct werkt. Dit omvat het veranderen van de naam van je computer naar 'ubuntu', het instellen van een wachtwoord en het configureren van je wifi-netwerk. Als je deze stappen hebt voltooid en Ubuntu Server op het Micro SD kaartje is geïnstalleerd, haal je de kaarthouder uit je computer en ben je klaar om je Raspberry Pi 3B+ te gebruiken.