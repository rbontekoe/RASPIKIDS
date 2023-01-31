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

Je hebt 3 knooppunten (nodes) nodig om een eenvoudige website te maken:
- http in
- template (staat in functie, 1 sectie hoger)
- http response

Met "http in" vertel je hoe mensen naar een specifieke pagina op je website kunnen gaan. De pagina is te vinden op het adres IP_adres_raspberry_pi:1880/naam\_pagina. "http response" zorgt ervoor dat de pagina er mooi uitziet door middel van iets watHTML-code heet. In "template" kun je zien hoe de HTML-code eruit ziet.

**Voer de volgende stappen uit:**

1. Sleep de knooppunten (nodes) naar je werkblad (canvas). Zie ook [Inleiding NodeRed](https://eelcodijkstra.github.io/iot-0/html/inleiding/nodered-inleiding.html) van Eelco Dijkstra.
    
   ![fig 1](assets/fig_1.png)

2. Verbind de knooppunten met de muis aan elkaar. Steeds een eindpunt met een beginpunt. Als je alle knooppunten aan elkaar hebt geplakt, heb je een "Flow". Dit is een soort programma.
3. Dubbelklik op het `http in` knooppunt en geef als URL op: `/hallo`.
4. Dubbelklik op template en tik `<h1>Hallo wereld!</h1>` op de eerste regel van het veld "template".
   
   ![fig 2](assets/fig_2.png)
   
5. Klik op de knop "Deploy" boven aan rechts om de code te maken voor je website.

   ![fig_3](assets/fig_3.png)

5. Typ in de zoekbalk van je internet browser: `IP_adres_Raspberry_Pi:1880/hallo`. Als alles goed is gegaan, zie je 'Hallo wereld!' in vette letters verschijnen op het scherm.
    
   ![fig_4](assets/fig_4.png)

6. Voeg meer tekst toe aan de website door ze tussen de `<p>` en `</p>` tags te zetten.

### Stap 2: Werken met API's

Een API is een manier voor computers om met elkaar te praten en informatie uit te wisselen. Ze doen dit door verzoeken en antwoorden uit te wisselen. JSON is een manier om informatie op te slaan en uit te wisselen die zowel door computers als door mensen begrepen wordt.

Zo is er de website [Dogs](https://dog.ceo/api/breeds/image/random) die steeds de URL van een ander plaatje van een hand geeft als JSON-object:

```
{
  "status":"success",
  "message":"https://images.dog.ceo/breeds/segugio-italian/n02090722_002.jpg"
}
```

Er is een website die een link geeft naar willekeurige foto's van honden. Als je op de website klikt, krijg je een plaatje van een willekeurige hond te zien. Dit doe je door deze code te gebruiken: `<img src="{{payload}}.message">`

Je moet ook deze code gebruiken om een [echte website](https://www.w3schools.com/html/html_intro.asp) te maken:

```
<!DOCTYPE html>
<html>
<head>
  <title>Dogs</title>
</head>
<body>

  <img src="{{payload}}.message">

</body>
</html>
```

In de `<head>` sectie kun je de titel van je website kiezen. In de `<body>` sectie kun je de website zelf opbouwen.

Klik [hier](https://mixedanalytics.com/blog/list-actually-free-open-no-auth-needed-apis/) voor een lijst met API's.


**Voer de volgende stappen uit:**

1. Sleep de volgende knooppunten naar je werkblad
   - `http in`
   - `http request`
   - `template`
   - `http response`
   - `debug`

   `http request` gebruiken we om een verbinding met de honden website te maken en het JSON object op te halen.

2. Verbind de knoopunten zoals in het plaatje staat weeregegeven:
   
   ![fig_5](assets/fig_5.png)

3. Geef voor `http in` de volgende url op: `/toon`.

4. Geef in `http request de url van de API op:

5. Plaats in het template de HTML-code voor de website:
   
```
<!DOCTYPE html>
<html>
  <head>
    <title>Bootstrap Example</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  </head>
  <body>
  
    <div class="container">
      <button onclick="location.reload();">Volgende plaatje</button>
      <h1 style="text-align:center">Mijn Eerste Hondenpagina</h1>
      <img src="{{payload.message}}" width="100%"/>          
    </div>

  </body>
</html>
```

6. Test het resultaat in de browser: `IP_adres_raspberry_pi:1880/toon`.

### Stap 3: Personaliseer je website

Tegenwoordig moet je website in elke omstandigheid er goed uitzien. [Bootstrap](https://www.w3schools.com/bootstrap/bootstrap_ver.asp) is een populaire manier om websites en web-apps te maken. Het maakt het makkelijker voor ontwikkelaars om mooie en goed werkende dingen te maken door hen te voorzien van dingen die ze kunnen gebruiken:

```
<!DOCTYPE html>
<html>
  <head>
    <title>Bootstrap Example</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  </head>
  <body>
  
    <div class="container">
      <button onclick="location.reload();">Volgende plaatje</button>
      <h1 stype="text-align:center;">Mijn Honden Pagina</h1>
      <img src="{{payload.message}}" width="100%" />           
    </div>

  </body>
</html>
```

## Samenvatting

We gaan een website maken met Node-RED. We moeten hiervoor onze computer of telefoon verbinden met ons WiFi-netwerk. Tijdens het maken van de website leren we ook werken met HTML-code. De taal waarmee we websites maken. We moeten ervoor zorgen dat we een verbinding hebben met de Raspberry Pi en dat er bepaalde programma's geinstalleerd zijn. We gaan stap voor stap de website maken, de eerste stap is om een "Hallo wereld!" voorbeeld te maken. We gebruiken hiervoor 3 nodes en we verbinden deze met elkaar. Tenslotte drukken we op de knop "Deploy". Als alles goed is gegaan, kun je in de browser `IP_adres_Raspberry_Pi:1880/hallo` intypen en zie je "Hallo wereld" verschijnen.




