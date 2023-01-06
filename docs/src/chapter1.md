# SD-kaartje klaarmaken voor de Raspberry Pi 3B+

*We gaan een SSD-kaartje klaarmaken voor de Raspberry Pi 3B+ met het besturingssysteem Ubuntu Server erop. Dit betekent dat we een speciaal soort computerprogramma op het kaartje gaan installeren. Dit programma heet Ubuntu Server en we kunnen het gebruiken op de Raspberry Pi. Ubuntu Server is gemaakt om te helpen bij het uitvoeren van taken op een computer.*

```@contents
Pages = ["chapter1.md"]
```

## Wat heb je nodig

Om een Micro SD kaartje te maken voor een Raspberry Pi 3B+, heb je het volgende nodig:

- Een computer met een slot voor een Micro SD kaarthouder.
- Een [Micro SD](https://elektronicavoorjou.nl/product/transcend-micro-sd-rpi-os/) kaartje, bijvoorbeeld een van 32GB. Dit kaartje al klaar als je deelneemt aan een Coder Dojo in Leusden.
- Een Micro SD-kaarthouder, die meestal wordt deze meegeleverd met het Micro SD kaartje.
- Het Raspberry Pi Imager programma.

## Wat ga je doen

Om Ubuntu Server te installeren op je Raspberry Pi, volg je deze stappen:

Stap 1: Installeer het Imager programma op je computer.

Stap 2: Maak het Micro SD kaartje klaar met Ubuntu Server.

## Stap 1 - Installeer het Imager programma op je computer

- Ga naar [https://www.raspberrypi.com/software/](https://www.raspberrypi.com/software/) en download het programma.

- Installeer het programma.

## Stap 2 - Maak het Micro SD kaartje klaar met Ubuntu Server

- Kijk of je een **32 bit** of **64 bit** Raspberry Pi 3B+ Hebt.

!!! info
    Om te zien hoeveel "bits" je Raspberry Pi heeft, kun je het volgende doen:

    Kijk op het printplaatje van je Raspberry Pi naar het modelnummer. Dit staat meestal naast de microprocessor.
    Als het modelnummer eindigt op "v7", "v7l" of "v7b", betekent dit dat je Raspberry Pi een 32 bit processor heeft. Als het modelnummer eindigt op "v8" of "v8l", betekent dit dat je Raspberry Pi een 64 bit processor heeft.

- Doe het Micro SD-kaartje in de kaarthouder.

- Doe de kaarthouder in je laptop.

- Start het programma.

```@raw html
<img src="https://assets.raspberrypi.com/static/md-bfd602be71b2c1099b91877aed3b41f0.png" alt="MicroPython logo" width="400">
```

- Klik op de toets **Choose OS**.

- Kies **Other general-purpose OS**.

- Kies **Ubuntu**.

- Kies **Ubuntu Server 22.04.1 LTS (32 bit** als je Raspberry Pi een 32 bit processor heeft, of **Ubuntu Server 22.04.1 LTS (64 bit)** als je Raspberry Pi een 64 bit processor heeft.

```@raw html
<img src="https://assets.raspberrypi.com/static/md-bfd602be71b2c1099b91877aed3b41f0.png" alt="MicroPython logo" width="400">
```

- Klik op de toets **Choose Storage**.

- Kies **Internal SD card reader**. Ubuntu Server wordt op je micro SD kaartje gezet. Als dat gebeurd is wordt het geheel nog een keer getest.

- Haal de kaarthouder uit je computer.

## Samenvatting

In dit hoofdstuk heb je geleerd hoe je het speciale computerprogramma genaamd Ubuntu kunt installeren op een Micro SD kaart voor je Raspberry Pi 3B+. Dit programma kan je gebruiken om je Raspberry Pi te laten werken. We gebruiken de versie 22.04 van Ubuntu, die speciaal gemaakt is voor de Raspberry Pi 3B+.