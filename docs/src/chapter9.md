# Node-RED dashboard programma maken

Deze module geeft je een set knooppunten in [Node-RED](https://flows.nodered.org/node/node-red-dashboard) waarmee je snel een live data dashboard kunt maken.

Je gaat een dashboard maken dat de volgende dingen laat zien:
- Hoe warm het is en hoe vochtig de lucht in huis is.
- Hoe de temperatuur buiten verandert.
- Hoe hard de wind waait en vanuit welke richting.

![UI](assets/fig_9_2.png)

### Inhoud

```@contents
Pages = ["chapter9.md"]
```

## Wat je nodig hebt

- Een Raspberry Pi 3B+ met het besturingssysteem Ubuntu Server 22.04.
- Docker, Portainer, Node-RED en MQTT broker zijn geinstalleerd.
- Een ESP8266 met een DHT22 die gegevens stuurt naar de MQTT broker.
- Een wifi netwerk waar de hierboven genoemde delen op zijn aangesloten.

## Wat je gaat doen

Stap 1: De Node-RED Dashboard module downloaden.

Stap 2: Het dashboard samenstellen.

Stap 3: Weergegevens ophalen en op dashboard weergeven.

## Stap 1 - De Node-RED Dashboard module downloaden

Node-RED heeft al veel verschillende knooppunten om te gebruiken, maar soms wil je nog meer. Dan kun je nieuwe onderdelen toevoegen. Een handige toevoeging is de [dashboard](https://flows.nodered.org/node/node-red-dashboard) module. Deze module bestaat uit verschillende onderdelen die speciaal zijn gemaakt om een dashboard te maken. Bijvoorbeeld, er is een onderdeel om een metertje te maken of om gegevens in een grafiek te laten zien. Ook is er een onderdeel om gegevens als tekst weer te geven. Je moet de module wel zelf toevoegen, want het zit niet automatisch al in Node-RED.

|Stap        | Actie      |
|:---------- | :---------- |
| 1 | Als je naar "Manage Palette" wilt gaan, kun je op het menu klikken dat in de rechterbovenhoek van het scherm staat. Of je kunt de toetsen Shift + Alt + P indrukken. |
| 2 | Ga naar de "Install" tab en zoek naar "node-red-dashboard" in de zoekbalk.  |
| 3 | Als je de dashboard onderdelen wilt krijgen, moet je op de witte knop met "Install" erop klikken. ``\\``![fig_9_22](assets/fig_9_28.png) |
| 4 | Je ziet een berichtje op je scherm. Druk op de rode knop waar "Install" op staat om de dashboard onderdelen te krijgen. ``\\``![fig_9_22](assets/fig_9_27.png) |
| 5 | Als je de dashboard onderdelen hebt geïnstalleerd, kun je ze vinden in het linkermenu onder het kopje "dashboard". |
||

## Stap 2 - Het dashboard samenstellen

Als je het adres `IP_adres_raspberry_pi:1880/ui` intypt in je web browser, kan je gegevens zien van de "dashboard module". We zullen verwijzen naar de MQTT broker met het onderwerp (topic) "temperatuur2".
![UI](assets/fig_9_3.png).

Volg deze stappen om het werk te doen:
 
|Stap        | Actie      |
|:---------- | :---------- |
| 1 | Pak de 2x de "mqtt in", 1x de "gauge" en 1x de "text" knooppunt(en) en zet ze op je werkblad. |
| 2 | Verbind de "mqtt in" knooppunt met het "gauge" knooppunt en de andere "mqtt in" knooppunt met het "text" knooppunt. |
| 3 | Dubbelklik op "mqtt in" en typ het IP adres van je Raspberry Pi in het vak "Server". Het poortnummer "1883" wordt automatisch toegevoegd. ``\\``![fig_9_22](assets/fig_9_22.png) |
| 4 | Typ `temperature2` in het "Topic" vak van het "mqtt in" knooppunt. |
| 5 | Typ `Temp huiskamer` in het "Label" vak van het "gauge" knooppunt. ``\\``![fig_9_22](assets/fig_9_23.png)|
| 6 | Pak opnieuw een "mqtt in" en een "text" knooppunt en zet ze op je werkblad. |
| 7 | Verbind de "mqtt in" knooppunt met het "text" knooppunt. |
| 8 | Typ het IP adres van je Raspberry Pi in het "Server" vak van de "mqtt in" knooppunt. |
| 9 | Typ `humidity2` in het "Topic" vak van de "mqtt in" blok. |
| 10 | Typ `Hum huiskamer` in het "Name" vak van de "text" blok. |
| 11 | Dubbelklik op "Text" en typ in het vak "Value format" `{{msg.payload}} %`. |
| 12 | Kies het vierde voorbeeld bij "Layout". ``\\``![fig_9_24](assets/fig_9_24.png) |
| 13 | Klik op de "Deploy" knop om alles in te stellen. |  
| 14 | Typ `IP_adres_raspberry_pi:1880/ui` in de adresbalk van je browser en druk op Enter om de informatie te zien. ``\\``![fig_9_22](assets/fig_9_25.png) |
||


## Stap 3 - Weergegevens ophalen en op dashboard weergeven

We gaan weergegevens over Leusden ophalen van een website die "Visual Crossing" heet. Hiervoor moeten we eerst een account maken op de website. Als we een account hebben, krijgen we een "API key". Dit is een soort code die we nodig hebben om de informatie op te halen. We hebben in onze les "Website bouwen met Node-RED" al geleerd hoe je met een API omgaat. We mogen de informatie gratis opvragen, maar we moeten er wel voor zorgen dat we niet te vaak op een dag informatie opvragen. Als we het opvragen van informatie onder de 1000 keer per dag houden, is het gratis. Ik vraag zelf de informatie elke 15 minuten op, dus ik vraag het in totaal 4 x 24 = 96 keer per dag op, dus veel minder dan het maximum.

!!! info
    Zorg dat je je persoonlijke "API key" klaar hebt liggen voordat je de steppen gaat uitvoeren.

|Stap        | Actie      |
|:---------- | :---------- |
| 1 | Sleep de knooppunten "timestamp", "http request", "debug", 3x "function" en uit de groep dashboard "chart" en 3x "text". Confiugreer de knooppunten volgens onderstaand schema. ``\\``![schema](assets/fig_9_4.png) |
| 2 | Dubbelkik op "timestamp" ``\\``![fig_9_5 timestamp](assets/fig_9_5.png)|
| 3 | Klik op het keuzevakje `once after`. |
| 4 | Kies bij de Repeat groep voor: `interval`. |
| 5 | Type in het veld "every": `30`. | 
| 6 | Kies als eenheid: `minutes`. |
| 7 | Druk op de toets "Done". |
| 8 | Dubbelklik op "http request". ``\\``![fig_9_6 visual crossing](assets/fig_9_6.png)|
| 9 | Type in het veld "URL": https://weather.visualcrossing.com/VisualCrossingWebServices/rest/services/timeline/Leusden?unitGroup=metric&key=**JOUW\_API\_KEY**&contentType=json
| 10 | Kies in het keuze veld "Return" voor: `a parsed JSON object`.
| 11 | Druk op de toets "Done". |
| 12 | Debug ontvangt van het knooppunt "visualcrossing" een JSON object zodra je op het meest linkse grijze vierkantje klikt van timestamp. Een subgroep is "currentConditions". Dit bevat de gegevens die we willen gebruiken op het dashboard. Je krijgt ze te zien als je in het venster geheel rechts kies voor de tweede tab van rechts "Debug messages". ``\\``![fig_9_16](assets/fig_9_16.png)``\\``*Klik op het driehoekjes om het volledige JSON object te bekijken.*|
| 13 | Dubbelklik op de eerste "functie" en geef het de naam: `buitentemp`. ``\\``![get_actual_temp](assets/fig_9_7.png) ``\\``*Wat je hier ziet is JavaScript code. Elke uitdukking eindigt met een ";". Iets ingesloten door accolades {...} verwijst naar een JSON-object.* |
| 14 | Typ op de eerste regel: `return { payload : "msg.payload.currentConditions.temp };`. "temp" is de buitentemperatuur. ``\\``Een payload is een belangrijk onderdeel van computers en technologie. Het is een term die gebruikt wordt om iets te beschrijven dat wordt verstuurd via internet, een computer-netwerk of in ons geval in een Node-RED flow. Denk bijvoorbeeld aan het versturen van een e-mail naar iemand. De boodschap die je verstuurt, bijvoorbeeld je tekst en eventuele afbeeldingen, is de payload. Het wordt verzonden via het internet naar de ontvanger, zoals jij wilt dat het wordt ontvangen. ``\\``Met "msg.payload" wordt verwezen naar het bericht dat Visual Crossing verzendt. Het vervolg ".currentConditions.temp" verwijst naar de buitentemperatuur. ``\\``![fig_9_17](assets/fig_9_17.png) |
| 14 | Druk op de toets "Done". |
| 15 | Dubbelklik op de tweede "functie" en geef het de naam: "windrichting". ``\\``![windrichting](assets/fig_9_8.png) |
| 16 | Kopieer de tekst uit ["Javascript code windrichting"](#Javascript-code-windrichting) naar het code blok.
| 17 | Druk op de toets "Done". |
| 18 | Dubbelklik op de derde "functie" en geef het de naam: "windsnelheid".  ``\\``![fig_9_9](assets/fig_9_9.png)| |
| 19 | Kopieer de tekst uit [Javascript code windsnelheid in Beaufort](#Javascript-code-windsnelheid-in-Beaufort). Hiermee converteren we de windsnelheid (km/uur) naar Beaufort. De tabel vind je [hier](https://www.kuijntjes.nl/weer/windsnelheid.htm).
| 20 | Druk op de toets "Done". |
| 21 | Druk op de knop "Deploy". |
| 22 | Druk op de laatste tab rechts en kies voor "Dashboard". ``\\``![fig_9_18](assets/fig_9_18.png) |
| 23 | Klik in de groep "Tab & Links" op de tab "+tab". ``\\``![fig_9_19](assets/fig_9_19.png) |
| 24 | Druk op de "edit" knop om de tab te openen. ``\\``![fig_9_20](assets/fig_9_21.png) |
| 25 | Verander de naam van de tab in: "Cursus". |
| 26 | Druk op de toets "Update". |
| 27 | Klik op de tab en je ziet alle Dashboard items. ``\\``![fig_9_21](assets/fig_9_20.png) |
| 28 | Verschuif de items in de volgorde zoals je ze wilt zien. |
||

Ga naar `IP_adres_raspberry_pi:1880/ui` om het resultaat te bekijken. ``\\``![fig_9_21](assets/fig_9_2.png)

### Javascript code windrichting
```
let test = msg.payload.currentConditions.winddir;
let windrichting = '';

if (test >= 360 - 22.5) {
    windrichting = 'N';
} else if (test < 22.5) {
    windrichting = 'N';
} else if (test >= 325 - 22.5 && test <= 325 + 22.5) {
    windrichting = 'NW';
} else if (test >= 270 - 22.5 && test <= 270 + 22.5) {
    windrichting = 'W'
} else if (test >= 225 - 22.5 && test <= 225 + 22.5) {
    windrichting = 'ZW';
} else if (test >= 180 - 22.5 && test <= 180 + 22.5) {
    windrichting = 'Z';
} else if (test >= 135 - 22.5 && test <= 135 + 22.5) {
    windrichting = 'ZO';
} else if (test >= 90 - 22.5 && test <= 90 + 22.5) {
    windrichting = 'O';
} else if (test >= 45 - 22.5 && test <= 45 + 22.5) {
    windrichting = 'NO';
}

return { payload: windrichting };
```

Deze code doet net alsof het een windwijzer is. Het krijgt een nummer dat vertelt waar de wind vandaan komt en geeft dan een letter die past bij die richting.

Bijvoorbeeld, als de wind uit het noorden komt, zal de code de letter "N" teruggeven.

De code bekijkt het nummer om te zien welke richting het dichtstbij ligt en kiest dan de letter voor die richting. Tot slot geeft het de letter terug, zodat we die ergens anders kunnen gebruiken.


### Javascript code windsnelheid in Beaufort
```
let test = msg.payload.currentConditions.winddir;
let windsnelheid = '';

if (test <= 1) {
    windsnelheid = '0';
} else if (test > 1 && test <= 5) {
    windsnelheid = '1';
} else if (test > 5 && test <= 11) {
    windsnelheid = '2'
} else if (test > 11 && test <= 19) {
    windsnelheid = '3';
} else if (test > 19 && test <= 28) {
    windsnelheid = '4';
} else if (test > 28 && test <= 38) {
    windsnelheid = '5';
} else if (test > 38  && test <= 49) {
    windsnelheid = '6';
} else if (test > 49  && test <= 61) {
    windsnelheid = '7';
} else if (test > 61  && test <= 74) {
    windsnelheid = '8';
} else if (test > 74  && test <= 88) {
    windsnelheid = '9';
} else if (test > 88  && test <= 102) {
    windsnelheid = '10';
} else if (test > 102  && test <= 117) {
    windsnelheid = '11';
} else if (test > 117 ) {
    windsnelheid = '12';
}

return { payload : windsnelheid };
```

Deze code laat zien hoe hard de wind waait. Het krijgt een nummer dat vertelt hoe de wind waait in km/uur en geeft dan een cijfer dat past bij de kracht van de wind uitgedrukt in Beaufort.

Bijvoorbeeld, als de wind heel zachtjes waait, zal de code het cijfer "0" teruggeven. "0" beteket windstil. Als de wind heel hard waait, kan het het cijfer "12" teruggeven. "12" betekent orkaankracht. 

Tot slot geeft het dat cijfer terug, zodat we dat ergens anders kunnen gebruiken.

Hoe hard de wind waait heb ik bepaald met de gegevens uit deze [tabel](https://www.kuijntjes.nl/weer/windsnelheid.htm). 

## Samenvatting

Met Node-RED Dashboard module kun je een dashboard maken om live data te visualiseren. Het dashboard kan informatie over de temperatuur, vochtigheid en windrichting binnen en buiten tonen. Om dit te doen, heb je een Raspberry Pi 3B+ met Ubuntu Server 22.04 nodig, evenals geïnstalleerde Docker, Portainer, Node-RED en MQTT broker. Je hebt ook een ESP8266 met een DHT22-sensor nodig die gegevens naar de MQTT broker stuurt. Om het dashboard te maken, download je de Node-RED Dashboard module en stel je vervolgens het dashboard samen door de mqtt in- en gauge-knooppunten te slepen, de IP-adressen van de Raspberry Pi in te voeren en de juiste gegevens en namen in te voeren. Je kunt ook weergegevens van Visual Crossing ophalen met een API-sleutel en de informatie visualiseren.In dit hoofdstuk leer je hoe je met Node-RED snel een live data dashboard kunt maken. Dit dashboard kan informatie laten zien zoals de temperatuur, luchtvochtigheid, windrichting en -snelheid. Om dit te doen, heb je een Raspberry Pi 3B+ nodig met Ubuntu Server 22.04, geïnstalleerde Docker, Portainer, Node-RED en MQTT broker, een ESP8266 met een DHT22 die gegevens stuurt naar de MQTT broker en een wifi-netwerk waar alle onderdelen op aangesloten zijn.

Stap 1: De Node-RED Dashboard module downloaden. Deze module biedt verschillende onderdelen, zoals een metertje, een grafiek en tekstweergave, die speciaal zijn ontworpen om een dashboard te maken. Je moet deze module zelf toevoegen aan Node-RED.

Stap 2: Het dashboard samenstellen. Hier leer je hoe je verschillende onderdelen kunt toevoegen aan je dashboard en hoe je deze kunt verbinden met de MQTT broker. Je voegt bijvoorbeeld een "mqtt in", "gauge" en "text" knooppunt toe om de temperatuur en luchtvochtigheid weer te geven.

Stap 3: Weergegevens ophalen en op dashboard weergeven. Je leert hoe je gegevens over het weer in Leusden kunt ophalen van een website en deze kunt integreren in je dashboard. Om je dashboard te bekijken, typ je het IP-adres van je Raspberry Pi in je webbrowser, gevolgd door /ui.

Met deze stappen kun je snel en gemakkelijk een dashboard maken om live data te visualiseren en te monitoren.