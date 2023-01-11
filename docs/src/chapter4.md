# Portainer installeren

*Portainer is een programma waarmee we onze Docker-omgeving gemakkelijker kunnen beheren. Dit betekent dat we een overzicht krijgen van alle computerprogramma's die we in Docker hebben staan en dat we deze programma's gemakkelijker kunnen starten en beheren.*

### Contents

```@contents
Pages = ["chapter4.md"]
```

## Wat je nodig hebt


## Wat je gaat do en

Stap 1: Container met Portainer installeren.

## Stap 1 - Container met Portainer installeren

[Docker Hub](https://hub.docker.com/) is een populaire bron voor Docker containers, waar je veel bekende software kunt vinden.Via een zoekopdracht kun je een container vinden, bijvoorbeeld [portainer/portainer-ce](https://hub.docker.com/r/portainer/portainer-ce). 

Vaak zul je verder moeten zoeken op het Internet hoe je een container moet installeren. Op de [PiMyLife](https://pimylifeup.com/raspberry-pi-portainer/) vind je het volgende commando: `sudo docker run -d -p 9000:9000 --name=portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce:latest`.

Met dit commando wordt de container uitgevoerd in de achtergrond (de -d optie), wordt poort 9000 gekoppeld aan de poort 9000 van de Raspberry Pi (met de -p optie). De container "portainer" genoemd met de --name optie. De container wordt automatisch herstart na een systeemcrash of een reboot met de --restart optie. Met de -v optie wordt de container gekoppeld aan /var/run/docker.sock). De data van de container wordt opgeslagen in een folder (met de -v optie voor portainer_data).

Als we eenmaal Portainer hebben geinstalleerd kunnen we er ook containers mee installeren.

|Stap        | Actie      | Opmerking |
|:---------- | :---------- |:---------- |
| 1 | ssh ubuntu@<ip-adres Raspberry Pi> | Bijvoorbeeld: `ssh ubuntu@192.168.2.49`. |
| 2 | sudo docker run -d -p 9000:9000 --name=portainer --restart=unless-stopped -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce:latest | Installeren van Portainer. We gebruiken `--restart=unless-stopped` optie om de container eventueel te kunnen verwijderen, bij 'always' lukt dat namelijk niet.|
| 3 | In webbrowser: http:<ip-adres Raspberry Pi> | Ga naar de web interface, bijvoorbeeld met `192.168.2.49:9000`. |
| 4 | Geef een gebruikersnaam op: admin | Naam wel noteren voor later. |
| 5 | En... een wachtwoord: ... | Mag jezelf bedenken... Wel noteren voor later. |
||


## Samenvatting

