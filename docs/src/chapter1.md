# Micro SD-kaartje klaarmaken voor de Raspberry Pi 3B+

*We gaan een Micro SD-kaartje klaarmaken voor de Raspberry Pi 3B+ met het besturingssysteem Ubuntu Server erop. Dit betekent dat we een speciaal soort computerprogramma op het kaartje gaan installeren. Ubuntu Server is gemaakt om te helpen bij het uitvoeren van taken op een computer.*

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

Stap 1: Installeer het Imager programma op je computer.

Stap 2: Maak het Micro SD kaartje klaar met Ubuntu Server.

## Stap 1 - Installeer het Imager programma op je computer

- Ga naar [https://www.raspberrypi.com/software/](https://www.raspberrypi.com/software/) en download het programma Imager.

- Installeer het programma.

## Stap 2 - Maak het Micro SD kaartje klaar met Ubuntu Server

- Kijk of je een **32 bit** of **64 bit** Raspberry Pi 3B+ Hebt.

!!! info
    Om te zien hoeveel "bits" je Raspberry Pi heeft, kun je het volgende doen:

    Kijk op het printplaatje van je Raspberry Pi naar het modelnummer. Dit staat meestal naast de microprocessor.
    Als het modelnummer eindigt op "v7", "v7l" of "v7b", betekent dit dat je Raspberry Pi een 32 bit processor heeft. Als het modelnummer eindigt op "v8" of "v8l", betekent dit dat je Raspberry Pi een 64 bit processor heeft.

- Doe het Micro SD-kaartje in de kaarthouder.

- Doe de kaarthouder in je laptop.

- Start het programma Imager.

```@raw html
<img src="https://assets.raspberrypi.com/static/md-bfd602be71b2c1099b91877aed3b41f0.png" alt="MicroPython logo" width="400">
```

- Klik op de toets **Choose OS**.

- Kies **Other general-purpose OS**.

- Kies **Ubuntu**.

- Kies **Ubuntu Server 22.04.1 LTS (32 bit** als je Raspberry Pi een 32 bit processor heeft, of **Ubuntu Server 22.04.1 LTS (64 bit)** als je Raspberry Pi een 64 bit processor heeft.

```@raw html
<img src="https://ubuntucommunity.s3.dualstack.us-east-2.amazonaws.com/optimized/3X/3/f/3f95678d7eef60678d413adff5a41836e4437b4c_2_690x448.png" alt="MicroPython logo" width="400">
```
We gaan naar een plek waar we kunnen veranderen hoe onze computer werkt. We komen daar door op een knop met een tandwiel erop te drukken. Daar kunnen we bijvoorbeeld WiFi istellen, de naam van onze computer veranderen en een wachtwoord instellen zodat we vanaf een andere plek op onze computer kunnen werken.

- Klik op de knop met het tandwiel.
- Klik op het keuzevakje dat voor 'Set hostname' en verander de naam in 'ubuntu'.
- Klik op het keuzevakje dat voor 'SSH' staat.
- Klik op het keuzerondje 'Use password authentication'.

- Scrol verder naar beneden en klik op het keuzevakje 'Set username and password'.
- Verander de naam in: `ubuntu`
- En geef een wachtwoord op. Noteer het wachtwoord op een papiertje voor het geval je het vergeet.

- Klik op het keuzevakje 'Configure wireless wan'.
- Verander de naam in de naam van je WiFi netwerk.
- Geef ook het wachtwoord op.
- Klik op het keuzevakje 'Show password' en controleer of het juist is.

- Verander de landcode in 'NL'.
- Klik op het keuzevakje 'Set local setting'.
- Verander 'Time Zone' in `Europe/Amsterdam`.
- Klik op de `SAVE' toets.

Nu zijn we klaar om Ubuntu op een Micro SD kaart te zetten. Dit programma zorgt ervoor dat onze computer werkt.

- Klik op de toets **Choose Storage**.

- Kies **Internal SD card reader**. Ubuntu Server wordt op je micro SD kaartje gezet. Als dat gebeurd is wordt het geheel nog een keer getest.

- Haal de kaarthouder met de Micro SD kaart uit je computer.

## Samenvatting

We gaan naar de Raspberry Pi website, downloaden het programma Imager en installeren het. Daarna gaan we ons Micro SD kaartje klaarmaken met Ubuntu Server. We gebruiken de versie 22.04 van Ubuntu, die speciaal gemaakt is voor de Raspberry Pi. Vooraf kijken we of we een 32 bit of 64 bit Raspberry Pi 3B+ hebben. Als we dat weten, doen we het Micro SD kaartje in de kaarthouder en in onze laptop. We starten het programma, kiezen Ubuntu als ons besturingssysteem, en kiezen de juiste versie voor onze Raspberry Pi. Dan stellen we WiFi in en slaan we alles op.