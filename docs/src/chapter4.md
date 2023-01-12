# Portainer installeren

*Portainer is een programma waarmee we onze Docker-omgeving gemakkelijker kunnen beheren. Dit betekent dat we een overzicht krijgen van alle computerprogramma's die we in Docker hebben staan en dat we deze programma's gemakkelijker kunnen starten en beheren.*

### Contents

```@contents
Pages = ["chapter4.md"]
```

## Wat je nodig hebt

- Een Raspberry Pi 3B+ met het besturingssysteem Ubunti 22.04 (zie het vorige hoofdstuk).
- SSH verbinding met de Raspberry Pi

## Wat je gaat doen

Je hebt geen account nodig als je 'images' van containers wilt downloaden. De image van Portainer heet portainer/portainer-ce en gaan we gebuiken om een container op de Raspberry Pi te maken.

[Docker Hub](https://hub.docker.com/) is een website waar veel software zit in kleine stukjes die images heten. Een image is een soort mal of patroon dat je kunt gebruiken als basis voor iets dat je wilt maken, bijvoorbeeld een container. Zo hoef je niet alles opnieuw te bedenken of te maken, maar kun je snel aan de slag met de dingen die echt belangrijk zijn voor jouw project.

Je hoeft geen account te hebben om deze images te downloaden en te gebruiken om containers te maken. We gaan een speciaal stukje software gebruiken dat portainer/portainer-ce heet, een programma waarmee we onze Docker-omgeving gemakkelijker kunnen beheren. We hebben het images nodig om er een container van te maken op de Raspberry Pi.

Stap 1: Container met Portainer installeren.

## Stap 1 - Container met Portainer installeren

Vaak zul je verder moeten zoeken op het Internet hoe je een container moet installeren. Op de [PiMyLife](https://pimylifeup.com/raspberry-pi-portainer/) vind je het volgende commando: `sudo docker run -d -p 9000:9000 --name=portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce:latest`.

Met dit commando wordt een container gemaakt, die uitgevoerd wordt in de achtergrond (de -d optie). Poort 9000 van de container wordt gekoppeld aan de poort 9000 van de Raspberry Pi (met de -p optie). Een poort verwijst dus naar een specifieke soort software. De container wordt "portainer" genoemd met de --name optie. De container wordt automatisch herstart na een systeemcrash of een reboot met de --restart optie. Met de -v optie wordt de container gekoppeld aan /var/run/docker.sock). De data van de container wordt opgeslagen in een folder (met de -v optie voor portainer_data).

Als we eenmaal Portainer hebben geinstalleerd kunnen we er ook containers mee installeren.

|Stap        | Actie      | Opmerking |
|:---------- | :---------- |:---------- |
| 1 | ssh ubuntu@<ip-adres Raspberry Pi> | Bijvoorbeeld: `ssh ubuntu@192.168.2.49`. |
| 2 | sudo docker run -d -p 9000:9000 --name=portainer --restart=unless-stopped -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce:latest | Installeren van Portainer. We gebruiken `--restart=unless-stopped` optie om de container eventueel te kunnen verwijderen, bij 'always' lukt dat namelijk niet.|
| 3 | In webbrowser: http://<ip-adres Raspberry Pi>:9000 | Ga naar de web interface, bijvoorbeeld met `192.168.2.49:9000`. |
| 4 | Geef een gebruikersnaam op: admin | Naam wel noteren voor later. |
| 5 | En... een wachtwoord: ... | Mag jezelf bedenken... Wel noteren voor later. |
||


## Samenvatting

Portainer is een programma waarmee je eenvoudiger Docker-omgevingen kunt beheren. Hiermee krijg je inzicht in alle computerprogramma's die in Docker staan en kun je deze programma's eenvoudiger starten en beheren. Je hebt geen account nodig om de 'images' van containers te downloaden. De image van Portainer heet portainer/portainer-ce en wordt gebruikt om een container op een Raspberry Pi te maken. Het commando 'sudo docker run -d -p 9000:9000 --name=portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce:latest' wordt gebruikt om de container te maken. Eenmaal geinstalleerd, kun je er ook containers mee installeren.