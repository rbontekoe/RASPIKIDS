# Toepassingen met de Raspberry Pi

*In deze cursus leert u werken met de Raspberry Pi en Docker containers.*

!!! info
    Kijk in de Blog voor de laatste opmerkingen!

## Inleiding

Ik heb een Raspberry Pi 3B+ thuis waarop verschillende programma's draaien. Zoals een programma om de temperatuur in de verschillende kamers in mijn huis te meten, een programma om gegevens over het weer op te halen van Visual Crossing, een programma om het stroom- en gasverbruik te bekijken en een receptendatabase met italiaanse recepten.

Daarnaast heb ik vroeger meegewerkt aan CoderDojo evenementen voor kinderen bij het Technisch Lab van LeusdenZet. Door Corona en mijn leeftijd ben ik hiermee gestopt, maar ik wil wel nog steeds graag een bijdrage leveren door middel van online cursusmateriaal.

In deze cursus laat ik zien hoe je programma's kunt maken die draaien op een Raspberry Pi, net als die van mij. Mijn programma's draaien in Docker containers. Een Docker container is een soort 'doos' waarin we programma's kunnen draaien, zodat ze elkaar niet beïnvloeden.

Ook werk ik graag met Node-RED. Dit is een programma waarmee we grafisch onze programma's kunnen opbouwen. Het is vergelijkbaar met programma's voor de BBC Micro-bit. Op YouTube zijn heel veel [instructie-videos](https://www.youtube.com/channel/UCQaB8NXBEPod7Ab8PPCLLAA) te vinden over Node-RED.

Ik gebruik verschillende sensors om dingen te meten, zoals de DHT22 om de temperatuur en luchtvochtigheid te meten. De ESP8266 en ESP32 zijn microcontrollers, hele kleine en goedkope computertjes die kunnen communiceren met andere computers via WiFi. Bijvoorbeeld met een MQTT broker.

Een MQTT broker is een programma dat helpt bij het uitwisselen van informatie tussen andere computers. Dit gebeurt meestal via een WiFi-netwerk.

MicroPython is een computerprogramma dat ik gebruik voor de ESP's.

Succes met de cursus,

Rob Bontekoe

!!! info
    Op deze cursus is de MIT licence van toepassing:

    De MIT-licentie is een soort regel die zegt dat mensen het mogen gebruiken, kopiëren, wijzigen en delen van een bepaald programma op hun computer of andere apparaat, zolang ze de maker ervan duidelijk vermelden en het programma niet verkopen zonder toestemming. Dit is een handige manier om ervoor te zorgen dat mensen het programma kunnen gebruiken om te leren of om er dingen mee te maken, zonder dat ze daar geld voor hoeven te betalen.


## Voor wie is deze cursus bestemd?

De cursus is bestemd voor kinderen van 8 tot 14 jaar.

## Wat is een Raspberry Pi?

Een Raspberry Pi is een kleine computer die je kunt gebruiken om allerlei leuke dingen mee te doen, zoals je eigen website maken of een spel spelen. Er zijn een paar dingen die Raspberry Pi's aantrekkelijk maken om te gebruiken:
- Ze zijn goedkoop: je kunt al een Raspberry Pi kopen voor een paar tientjes.
- Ze zijn klein: je kunt een Raspberry Pi gemakkelijk meenemen in je tas of zak.
- Ze gebruiken weinig stroom: omdat ze klein en niet zo krachtig zijn, gebruiken ze niet zoveel stroom als gewone computers. Je kunt de Raspberry Pi dus dag en nacht aan laten staan zonder dat het veel stroom kost.
- Ze zijn goed voor het leren van computers: een goede manier om te leren hoe computers werken zonder dat je bang hoeft te zijn dat je iets kapot maakt.

![Raspberry Pi 3B+](https://upload.wikimedia.org/wikipedia/commons/thumb/9/97/Raspberry_Pi_3_B%2B_%2839906369025%29.png/390px-Raspberry_Pi_3_B%2B_%2839906369025%29.png)

**Raspberry Pi 3B+**

Deze cursus is gemaakt om te werken op een [Raspberry Pi 3B+](https://nl.wikipedia.org/wiki/Raspberry_Pi#:~:text=Raspberry%20Pi%203,-De%20RPi%203&text=Op%20Pi%2Ddag%202018%20verscheen,(100%20Mbit%2Fs).). We hebben het getest om ervoor te zorgen dat alles goed werkt op die computer.

```@raw html
<img src="https://seeklogo.com/images/R/raspberry-pi-logo-8240ABBDFE-seeklogo.com.png" alt="Raspberry Pi logo" width="100">
```

## Wat is Docker?

[Docker](https://nl.wikipedia.org/wiki/Docker_(software)) is een programma dat helpt om software op verschillende computers te laten werken. Het maakt gebruik van containers, die zijn als kleine pakketjes software die alles bevatten wat nodig is om een programma te laten werken. Het is net zoals een koffer waarin je al je spullen in stopt voordat je op vakantie gaat, zodat je alles bij je hebt. Zo werkt het ook met Docker, alleen dan met software in plaats van spullen.

Er zijn twee soorten processoren, of "hersenen", waar computers mee werken: ARM-processoren en X86-processoren. Een Raspberry Pi heeft een ARM-processor. PC's hebben meestal een X86-processor.

Een container moet aangepast zijn aan het type processor waarop je het wilt gebruiken. Dus als je bijvoorbeeld een website hebt gemaakt die je op een Raspberry Pi wilt laten werken, moet je een container hebben die is aangepast aan de ARM-processor van de Raspberry Pi. Als je diezelfde website op een PC wilt laten werken, moet je een container hebben die aangepast is aan de X86-processor van de PC.

Met Docker kan de ontwikkelaar ervoor zorgen dat de container automatisch wordt aangepast aan het type processor waarop het wordt uitgevoerd. Zo hoef je geen zorgen te maken dat het programma niet goed werkt, omdat Docker ervoor zorgt dat het wél goed werkt.

```@raw html
<img src="https://seeklogo.com/images/D/docker-logo-6D6F987702-seeklogo.com.png" alt="Docker logo" width="120">
```

## Wat is Portainer?

Portainer is een programma dat je kunt gebruiken om Docker te beheren. Als je Docker gebruikt, heb je misschien verschillende containers die je wilt starten, stoppen of verwijderen. Portainer maakt het makkelijker om deze taken uit te voeren door een gebruiksvriendelijke grafische interface te bieden waarmee je de containers kunt beheren.

Stel je voor dat je een doos met speelgoed hebt, en je wilt weten welke speelgoedjes erin zitten. Met Portainer is het net alsof je de doos kunt openen en de speelgoedjes kunt zien, en je kunt ook de speelgoedjes pakken en weer terugleggen in de doos als je wilt. Zo kun je gemakkelijk zien welke containers je hebt en wat ze doen, en kun je ze gemakkelijk beheren.

Portainer is dus een soort "beheerprogramma" voor Docker, dat ervoor zorgt dat het makkelijker is om Docker te gebruiken en te beheren. Als je veel containers hebt of als je nieuw bent met Docker, kan Portainer je helpen om alles beter te begrijpen en te gebruiken.

```@raw html
<img src="https://seeklogo.com/images/P/portainer-wordmark-logo-9C4DA30483-seeklogo.com.png" alt="Portainer logo" width="300">
```

## Wat is Node-RED?

[Node-RED](https://www.compusers.nl/sites/default/files/swb-jaargangen/2019/2019-2/SwB20192_IoT_Domotica_en_NodeRED.pdf) is een programma dat je kunt gebruiken om eenvoudig kleine programma's, of "flows", te maken. Dit kun je doen door knoppen en andere elementen op een scherm te slepen en te plakken, en door ze met elkaar te verbinden met lijnen.

Stel je voor dat je een spel hebt waarbij je allerlei opdrachten moet doen. Met Node-RED is het net alsof je de opdrachten op een rijtje kunt leggen, en door middel van pijlen kunt aangeven wat er moet gebeuren als je een opdracht hebt voltooid. Zo kun je bijvoorbeeld aangeven dat als je klaar bent met opruimen, je een film mag kijken.

Node-RED wordt vaak gebruikt om dingen te automatiseren of om informatie van verschillende bronnen te verzamelen en te verwerken. Bijvoorbeeld, je kunt Node-RED gebruiken om te controleren of er nieuwe e-mails zijn, of om de temperatuur in huis te meten en de verwarming aan te zetten als het te koud wordt.

```@raw html
<img src="https://seeklogo.com/images/N/node-red-logo-03ED3C7805-seeklogo.com.png" alt="Node-RED logo" width="100">
```

## Wat is een MQTT-broker?

[MQTT-broker](https://nl.wikipedia.org/wiki/MQTT) is een programma dat gebruikt wordt om informatie te versturen en ontvangen via wifi. Het gebeurt via een protocol dat MQTT heet, dat staat voor "Message Queuing Telemetry Transport".

Alle apparaten die willen communiceren met de MQTT-broker moeten zich eerst "registreren". Dit betekent dat ze zich aanmelden bij de MQTT-broker en laten weten dat ze informatie willen verzenden of ontvangen.

Node-RED is een programma dat makkelijk te gebruiken is om te communiceren met een MQTT-broker via wifi. Het heeft speciaal ontworpen voorzieningen om dit te doen.

```@raw html
<img src="https://seeklogo.com/images/M/mqtt-logo-C92D58AA94-seeklogo.com.png" alt="MQTT logo" width="200">
```

## Wat is een ESP8266 of een ESP32?

De ESP8266 en de [ESP32](https://nl.wikipedia.org/wiki/ESP32) zijn microcontrollers, wat betekent dat het kleine computers zijn die zijn ontworpen om simpele taken uit te voeren.

```@raw html
<img src="https://elektronicavoorjou.nl/wp-content/uploads/2019/12/NodeMcu-Lua-WIFI-Board-ESP8266-CP2102-1.jpg" alt="ESP8266" width="300">
```

**ESP8266 van [elektronicavoorjou.nl](https://elektronicavoorjou.nl/product/nodemcu-esp8266-wifi-board/) die ik gebruik om de output van een DHT22 naar mijn Raspberry Pi te sturen**

Ze hebben beide een wifi-verbinding, wat betekent dat ze kunnen communiceren met andere apparaten. Dit maakt ze handig voor projecten waarbij je wilt dat de microcontroller via wifi kan communiceren. Ze worden vaak gebruikt in elektronische projecten bijvoorbeeld in combinatie met een DHT22, om de temperatuur in een ruimte te meten en door te geven aan een MQTT-broker.

```@raw html
<img src="https://elektronicavoorjou.nl/wp-content/uploads/2021/01/DHT22-1.jpg" alt="DHT22" width="300">
```

**DHT22 van [elektronicavoorjou.nl](https://elektronicavoorjou.nl/product/dht22-temp-vocht-sensor/) die de temperatuur en de luchtvochtigheidsgad meet**

## Wat is een sensor en een slimme meter?

Een sensor is een apparaat dat informatie kan detecteren of meten, zoals temperatuur, licht of beweging. Sensoren worden vaak gebruikt in elektronische projecten of apparaten om informatie te verzamelen over de omgeving.

Stel je voor dat je een apparaat wilt maken dat aangeeft wanneer het te koud of te warm wordt in een kamer. Je kunt dan een temperatuursensor gebruiken om de temperatuur te meten en het apparaat aan te sturen om een melding te geven als het te koud of te warm wordt. Zo kun je gemakkelijk zien wanneer je de verwarming aan of uit moet zetten.

Een slimme meter is een specifiek soort sensor die wordt gebruikt om energieverbruik te meten. Slimme meters zijn verbonden met het internet, zodat je op afstand kunt zien hoeveel energie je verbruikt en hoeveel dit kost. Dit kan handig zijn als je wilt weten hoe je energieverbruik verminderen of als je wilt weten hoeveel geld je bespaart door energiezuinig te zijn.

Sensoren en slimme meters zijn dus apparaten die informatie kunnen detecteren of meten. Ze kunnen worden gebruikt om allerlei soorten informatie te verzamelen, zoals temperatuur of energieverbruik, en kunnen worden gebruikt in elektronische projecten of apparaten om de omgeving te monitoren.

```@raw html
<img src="https://www.sossolutions.nl/media/catalog/product/cache/5df5c040ed8cd3972c59a8e190e44350/1/_/1.8m_kabel.png" alt="P1 kabel" width="300">
```

**P1 Kabel van [www.sossolutions.nl](https://www.sossolutions.nl/slimme-meter-kabel) die ik gebruik om mijn Slimme Meter met mijn Raspberry Pi te koppelen**

## Wat is MicroPython?

MicroPython is een specifieke versie van de programmeertaal Python die is ontworpen om te draaien op kleine computers, zoals microcontrollers. MicroPython is handig als je wilt dat je programma's snel en efficiënt werken op een kleine computer, zoals een microcontroller.

Stel je voor dat je een robot wilt maken die zichzelf kan bewegen en obstakels kan ontwijken. Je kunt MicroPython gebruiken om de robot te programmeren, zodat hij weet hoe hij moet bewegen en hoe hij op obstakels moet reageren. Zo kun je gemakkelijk een programma maken dat de robot laat bewegen en navigeren.

MicroPython wordt vaak gebruikt in elektronische projecten waarbij een kleine computer, zoals een microcontroller, wordt gebruikt. Het is een handige manier om programma's te schrijven die efficiënt werken op een kleine computer en die gemakkelijk te begrijpen zijn.

Tijdens de cursus gebruiken we het programma Thonny om MicroPython code te maken.

```@raw html
<img src="https://seeklogo.com/images/M/micropython-logo-6255D51390-seeklogo.com.png" alt="MicroPython logo" width="80">
```