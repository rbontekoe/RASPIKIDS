# Toepassingen met de Raspberry Pi

*In deze cursus leert u werken met de Raspberry Pi en Docker containers.*

!!! info
    Kijk in de Blog voor de laatste opmerkingen!

## Inleiding

Ik heb een Raspberry Pi 3B+ thuis waarop verschillende programma's draaien. Zoals een programma om de temperatuur in de verschillende kamers in mijn huis te meten, een programma om gegevens over het weer op te halen van Visual Crossing, een programma om het stroom- en gasverbruik te bekijken en een receptendatabase met italiaanse recepten.

Daarnaast heb ik vroeger meegewerkt aan CoderDojo evenementen voor kinderen bij het Technisch Lab van LeusdenZet. Door Corona en mijn leeftijd ben ik hiermee gestopt, maar ik wil wel nog steeds graag een bijdrage leveren door middel van online cursusmateriaal.

In deze cursus laat ik zien hoe je programma's kunt maken die draaien op een Raspberry Pi, net als die van mij. Mijn programma's draaien in Docker containers. Een Docker container is een soort 'doos' waarin we programma's kunnen draaien, zodat ze elkaar niet beïnvloeden.

Ook werk ik graag met Node-RED. Dit is een programma waarmee we grafisch onze programma's kunnen opbouwen. Het is vergelijkbaar met programma's voor de BBC Micro-bit. Op YouTube zijn heel veel instructie-videos te vinden over Node-RED.

Ik gebruik verschillende sensors om dingen te meten, zoals de DHT22 om de temperatuur en luchtvochtigheid te meten. De ESP8266 en ESP32 zijn speciale computertjes die kunnen communiceren met andere computers via WiFi. Bijvoorbeeld met een MQTT broker.

Een MQTT broker is een programma dat helpt bij het uitwisselen van informatie tussen andere computers. Dit gebeurt meestal via een WiFi-netwerk.

MicroPython is een computerprogramma dat ik gebruik voor de ESP's.

Succes met de cursus,

Rob Bontekoe

### Voor wie is deze cursus bestemd?

De cursus is bestemd voor kinderen van 8 tot 16 jaar.

### Wat is een Raspberry Pi?

Een Raspberry Pi is een kleine computer die je kunt gebruiken om allerlei leuke dingen mee te doen, zoals je eigen website maken of een spel spelen. Er zijn een paar dingen die Raspberry Pi's aantrekkelijk maken om te gebruiken:
- Ze zijn goedkoop: je kunt al een Raspberry Pi kopen voor een paar tientjes.
- Ze zijn klein: je kunt een Raspberry Pi gemakkelijk meenemen in je tas of zak.
- Ze gebruiken weinig stroom: omdat ze klein en niet zo krachtig zijn, gebruiken ze niet zoveel stroom als gewone computers. Je kunt de Raspberry Pi dus dag en nacht aan laten staan zonder dat het veel stroom kost.
- Ze zijn goed voor het leren van computers: ze een goede manier om te leren hoe computers werken zonder dat je bang hoeft te zijn dat je iets kapot maakt.

### Wat is Docker?

Docker is een manier om software op verschillende computers te laten werken. Het is een soort doos waarin je al je software kunt stoppen, zodat het op elke computer werkt die Docker heeft. Het is net zoals een koffer waarin je al je spullen in stopt voordat je op vakantie gaat, zodat je alles bij je hebt. Zo werkt het ook met Docker, alleen dan met software in plaats van spullen.

### Wat is Portainer?

Portainer is een programma dat je kunt gebruiken om Docker te beheren. Als je Docker gebruikt, heb je misschien verschillende containers die je wilt starten, stoppen of verwijderen. Portainer maakt het makkelijker om deze taken uit te voeren door een gebruiksvriendelijke grafische interface te bieden waarmee je de containers kunt beheren.

Stel je voor dat je een doos met speelgoed hebt, en je wilt weten welke speelgoedjes erin zitten. Met Portainer is het net alsof je de doos kunt openen en de speelgoedjes kunt zien, en je kunt ook de speelgoedjes pakken en weer terugleggen in de doos als je wilt. Zo kun je gemakkelijk zien welke containers je hebt en wat ze doen, en kun je ze gemakkelijk beheren.

Portainer is dus een soort "beheerprogramma" voor Docker, dat ervoor zorgt dat het makkelijker is om Docker te gebruiken en te beheren. Als je veel containers hebt of als je nieuw bent met Docker, kan Portainer je helpen om alles beter te begrijpen en te gebruiken.

### Wat is Node-RED?

Node-RED is een programma dat je kunt gebruiken om eenvoudig kleine programma's, of "flows", te maken. Dit kun je doen door knoppen en andere elementen op een scherm te slepen en te plakken, en door ze met elkaar te verbinden met lijnen.

Stel je voor dat je een spel hebt waarbij je allerlei opdrachten moet doen. Met Node-RED is het net alsof je de opdrachten op een rijtje kunt leggen, en door middel van pijlen kunt aangeven wat er moet gebeuren als je een opdracht hebt voltooid. Zo kun je bijvoorbeeld aangeven dat als je klaar bent met opruimen, je een film mag kijken.

Node-RED wordt vaak gebruikt om dingen te automatiseren of om informatie van verschillende bronnen te verzamelen en te verwerken. Bijvoorbeeld, je kunt Node-RED gebruiken om te controleren of er nieuwe e-mails zijn, of om de temperatuur in huis te meten en de verwarming aan te zetten als het te koud wordt.

Node-RED draait in een container als het wordt gebruikt in combinatie met Docker. Een container is een soort kleine "verpakking" voor software, die ervoor zorgt dat het makkelijk is om te installeren en te gebruiken. Als Node-RED in een container draait, betekent dit dat het makkelijk is om te installeren en te gebruiken, omdat alle benodigde bestanden en instellingen bij de container horen.

### Wat is een MQTT-broker?

MQTT-broker is een programma dat wordt gebruikt om informatie tussen verschillende apparaten of programma's te verzenden en te ontvangen. Dit gebeurt via een protocol dat MQTT heet, dat staat voor "Message Queuing Telemetry Transport".

Stel je voor dat je een groep vrienden hebt die op verschillende plekken wonen. Als je iets wilt laten weten aan al je vrienden, kun je MQTT-broker gebruiken om een bericht te versturen. Het bericht wordt dan verzonden naar de MQTT-broker, die het vervolgens naar al je vrienden stuurt. Zo kun je gemakkelijk informatie verzenden naar al je vrienden, ongeacht waar ze zijn of wat ze aan het doen zijn.

MQTT-broker wordt vaak gebruikt in het "Internet of Things", oftewel het internet van dingen. Dit is een term die wordt gebruikt voor alle apparaten die zijn verbonden met het internet, zoals slimme thermostaten, beveiligingscamera's en koelkasten. Als deze apparaten met elkaar kunnen communiceren via een MQTT-broker, kun je bijvoorbeeld de temperatuur in huis op afstand controleren of een melding ontvangen als de koelkast opengaat.

MQTT-broker is dus een soort "postbode" die ervoor zorgt dat informatie tussen verschillende apparaten of programma's kan worden verzonden en ontvangen. Het maakt het makkelijk om informatie te verzenden naar verschillende plekken of om te communiceren met andere apparaten.

### Wat is een ESP8266 of ESP32?

ESP8266 en ESP32 zijn microcontrollers, wat betekent dat ze kleine computers zijn die zijn ontworpen om simpele taken uit te voeren. Ze worden vaak gebruikt in elektronische projecten, zoals het maken van een slimme thermostaat of het bouwen van een robot.

Stel je voor dat je een kleine legoblokjes-robot wilt maken die kan rijden en om obstakels heen kan navigeren. Je kunt dan een ESP8266 of ESP32 gebruiken om de robot te besturen. De microcontroller zorgt ervoor dat de robot kan bewegen en dat hij kan reageren op zijn omgeving, bijvoorbeeld door obstakels te ontwijken als hij ze tegenkomt.

ESP8266 en ESP32 zijn specifieke merken van microcontrollers. Ze hebben beide wifi-verbinding, wat betekent dat ze kunnen communiceren met andere apparaten via het internet. Dit maakt ze handig voor projecten waarbij je wilt dat de microcontroller met het internet kan communiceren, zoals bij het maken van een slimme thermostaat die je op afstand kunt bedienen.

ESP8266 en ESP32 zijn dus kleine computers die je kunt gebruiken om simpele taken uit te voeren in elektronische projecten. Ze kunnen met het internet communiceren en zijn handig voor projecten waarbij je wilt dat de microcontroller met het internet kan communiceren.

### Wat is een sensor en een slimme meter?

Een sensor is een apparaat dat informatie kan detecteren of meten, zoals temperatuur, licht of beweging. Sensoren worden vaak gebruikt in elektronische projecten of apparaten om informatie te verzamelen over de omgeving.

Stel je voor dat je een apparaat wilt maken dat aangeeft wanneer het te koud of te warm wordt in een kamer. Je kunt dan een temperatuursensor gebruiken om de temperatuur te meten en het apparaat aan te sturen om een melding te geven als het te koud of te warm wordt. Zo kun je gemakkelijk zien wanneer je de verwarming aan of uit moet zetten.

Een slimme meter is een specifiek soort sensor die wordt gebruikt om energieverbruik te meten. Slimme meters zijn verbonden met het internet, zodat je op afstand kunt zien hoeveel energie je verbruikt en hoeveel dit kost. Dit kan handig zijn als je wilt weten hoe je energieverbruik verminderen of als je wilt weten hoeveel geld je bespaart door energiezuinig te zijn.

Sensoren en slimme meters zijn dus apparaten die informatie kunnen detecteren of meten. Ze kunnen worden gebruikt om allerlei soorten informatie te verzamelen, zoals temperatuur of energieverbruik, en kunnen worden gebruikt in elektronische projecten of apparaten om de omgeving te monitoren.

### Wat is MicroPython?

MicroPython is een specifieke versie van de programmeertaal Python die is ontworpen om te draaien op kleine computers, zoals microcontrollers. MicroPython is handig als je wilt dat je programma's snel en efficiënt werken op een kleine computer, zoals een microcontroller.

Stel je voor dat je een robot wilt maken die zichzelf kan bewegen en obstakels kan ontwijken. Je kunt MicroPython gebruiken om de robot te programmeren, zodat hij weet hoe hij moet bewegen en hoe hij op obstakels moet reageren. Zo kun je gemakkelijk een programma maken dat de robot laat bewegen en navigeren.

MicroPython wordt vaak gebruikt in elektronische projecten waarbij een kleine computer, zoals een microcontroller, wordt gebruikt. Het is een handige manier om programma's te schrijven die efficiënt werken op een kleine computer en die gemakkelijk te begrijpen zijn.
