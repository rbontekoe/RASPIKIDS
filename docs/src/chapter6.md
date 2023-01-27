# Website bouwen met Node-RED

*We gaan een website maken met Node-RED. De website werkt alleen op het WiFi-netwerk waar we op zijn aangesloten. Dit betekent dat we de website alleen kunnen bekijken als we met onze computer of telefoon verbonden zijn met het WiFi-netwerk. Tijdens het maken van de website leer je ook werken met HTML-code. HTML is een soort taal waarmee we websites kunnen maken.*

### Contents

```@contents
Pages = ["chapter6.md"]
```

## Wat je nodig hebt

- Een Raspberry Pi 3B+ met het besturingssysteem Ubuntu Server 22.04.
- Docker, Portainer en Node-RED zijn geinstalleerd.
- Een SSH verbinding met de Raspberry Pi vanuit je laptop.

## Wat je gaat doen

- Stap 1: Introductie tot Node-RED en een "Hallo wereld!" voorbeeld.
- Stap 2: Adressen en telefoonnummers tabel voorbeeld.
- Stap 3: Personaliseer je website.

### Stap 1: Introductie tot Node-RED en een "Hallo wereld!" voorbeeld

Je hebt 3 nodes nodig om een eenvoudige website te maken:
- http in
- template (staat 1 sectie hoger)
- http response

Voer de volgende stappen uit:

- Sleep de nodes naar het canvas.

![fig 1](assets/fig_1.png)

- Verbind de nodes met de muis aan elkaar door een eindpunt met een beginpunt te verbinden.
- Dubbelklik op de http in node en geef als URL op `/hallo`.
- Dubbelklik op template en tik `<h1>Hallo wereld!</h1>` op de eerste regel van het veld "template".

![fig 2](assets/fig_2.png)

- Genereer de code door op de toets "Deploy" (rechtsbovenin) te klikken.

![fig_3](assets/fig_3.png)

- Typ in de zoekbalk van je internet browser: `IP_adres_Raspberry_Pi:1880/hallo`. Als alles goed is gegaan, zie je 'Hallo wereld' in vette letters verschijnen op het scherm.

![fig_4](assets/fig_4.png)

- Voeg meer tekst toe aan de website door ze tussen de `<p>` en `</p>` tags te zetten.

### Stap 2: Adressen en telefoonnummers tabel


### Stap 3: Personaliseer je website


## Samenvatting

We gaan een website maken met Node-RED. We moeten hiervoor onze computer of telefoon verbinden met ons WiFi-netwerk. Tijdens het maken van de website leren we ook werken met HTML-code. De taal waarmee we websites maken. We moeten ervoor zorgen dat we een verbinding hebben met de Raspberry Pi en dat er bepaalde programma's geinstalleerd zijn. We gaan stap voor stap de website maken, de eerste stap is om een "Hallo wereld!" voorbeeld te maken. We gebruiken hiervoor 3 nodes en we verbinden deze met elkaar. Tenslotte drukken we op de knop "Deploy". Als alles goed is gegaan, kun je in de browser `IP_adres_Raspberry_Pi:1880/hallo` intypen en zie je "Hallo wereld" verschijnen.

---

Stap 1: Introductie tot Node-RED en een "Hallo wereld!" voorbeeld

Wat is Node-RED en waarom is het handig om te gebruiken?
Hoe installeer je Node-RED op je computer?
Laten we een eenvoudige "Hallo wereld!" website maken met Node-RED
Oefening: probeer zelf een andere zin te maken in je "Hallo wereld!" website.

Stap 2: Adressen en telefoonnummers tabel

Laten we een tabel maken met adressen en telefoonnummers
Hoe voeg je nieuwe rijen toe aan de tabel?
Oefening: probeer zelf een nieuwe rij toe te voegen aan de tabel
Bonus oefening: kun je de tabel ook sorteren op bijvoorbeeld postcode?

Stap 3: Personaliseer je website

Laten we kijken hoe je je website kunt personaliseren met kleuren en afbeeldingen
Hoe voeg je links toe naar andere pagina's of websites?
Oefening: maak je website uniek door jouw eigen kleuren en afbeeldingen toe te voegen.

Stap 4: Publiceer je website

Laten we kijken hoe je je website kunt publiceren zodat anderen hem kunnen zien
Hoe kun je je website bijwerken nadat hij is gepubliceerd?
Oefening: publiceer je website en deel de link met je vrienden en familie.
Let op: deze les is alleen een voorbeeld, afhankelijk van de kennis van kinderen kan het nodig zijn om meer of minder uitleg te geven.



