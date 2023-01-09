# Installation Instructions

## Introduction

Ik heb een Lenovo Legion Y520 Windows 10 laptop met Ubuntu 22.04 geïnstalleerd op een [Samsung portable SSD T5](#Install-Ubuntu-on-Samsung-T5-and-Lemovo-Legion-Y520-with-Windows-10) schijf. Ik start mijn machine op vanaf deze schijf.

## Installeren PuTTY

Om PuTTY te downloaden en te installeren, moet je de volgende stappen volgen:

1.  Ga naar de website van PuTTY: https://www.putty.org/
2.  Klik op de link 'Download PuTTY' om het installatieprogramma te downloaden.
3.  Zoek het installatieprogramma in je downloads en open het.
4.  Volg de stappen in het installatieprogramma om PuTTY te installeren op je computer.

Zorg ervoor dat je toestemming hebt van een ouder of verantwoordelijke volwassene voordat je iets downloadt op je computer. Als je hulp nodig hebt tijdens het downloaden en installeren, vraag dan aan een ouder of verantwoordelijke volwassene om je te helpen.

## Install Git

Git is een vrij en open source gedistribueerd versiebeheersysteem, ontworpen om alles van kleine tot zeer grote projecten met snelheid en efficiëntie af te handelen.

##### Prerequisites
- Je computer OS is Ubuntu 22.04 64 bit.
- Je hebt een [GitHub account](https://github.com/).

Step        | Action      | Comment |
| :---------- | :---------- | :---------- |
| 1 | sudo apt install git | |
| 2 | git config --global user.email "<your email address>" |  |
| 3 | git config --global user.name "<your first and last name>" | Bijvoorbeeld: "Rob Bontekoe" |
| 4 | git config --global github.user "<yout git hub name>" | Bijvoorbeeld: "rbontekoe" |
| 5 | cat .gitconfig | Laat je git data zien. |
||

## Installeer Thonny

Om Thonny te installeren op Ubuntu 22.04, volg je de volgende stappen:

1.  Open het terminalvenster door op 'Ctrl + Alt + T' te drukken.
2.  Voer het volgende commando uit om Thonny vanuit de softwarebronnen te installeren:

```
sudo apt-get install thonny
```

3.  Voer je wachtwoord in als dat wordt gevraagd.
4.  Wacht tot de installatie is voltooid.
5.  Zoek naar Thonny in het menu 'Start' en open het programma.

Als je Thonny wilt gebruiken, hoef je alleen maar op het icoontje te klikken dat je op je bureaublad of in het menu 'Start' hebt.

## Installeer Docker

Docker is een open containerplatform voor het ontwikkelen, verschepen en uitvoeren van toepassingen.

##### Voorwaarden
- Je computer besturingssysteem is Ubuntu 22.04 of hoger.
- Je hebt `curl` geinstallleerd.

|Stap        | Actie      | Opmerking |
|:---------- | :---------- |:---------- |
| 1 | sudo apt-get update | Update Software Repositories. |
| 2 | sudo apt-get remove docker docker-engine docker.io | Verwijder oudere versions van Docker |
| 3 | curl -sSL https://get.docker.com \| sh| Installeer Docker |
| 4 | sudo systemctl start docker |  |
| 5 | sudo systemctl enable docker |  |
| 6 | sudo docker version | Check Docker Version |
||

## Install NVidia Driver

See: [How to install the NVIDIA drivers on Ubuntu 20.04 Focal Fossa Linux](https://linuxconfig.org/how-to-install-the-nvidia-drivers-on-ubuntu-20-04-focal-fossa-linux)

|Step        | Action      | Comment |
|:---------- | :---------- |:---------- |
| 1 | $ ubuntu-drivers devices | Check drivers |
||
```
== /sys/devices/pci0000:00/0000:00:01.0/0000:01:00.0 ==
modalias : pci:v000010DEd00001C8Dsv000017AAsd000039D1bc03sc02i00
vendor   : NVIDIA Corporation
model    : GP107M [GeForce GTX 1050 Mobile]
driver   : nvidia-driver-390 - distro non-free
driver   : nvidia-driver-450-server - distro non-free
driver   : nvidia-driver-435 - distro non-free
driver   : nvidia-driver-418-server - distro non-free
driver   : nvidia-driver-440-server - distro non-free
driver   : nvidia-driver-450 - distro non-free recommended
driver   : xserver-xorg-video-nouveau - distro free builtin
```
Step        | Action      | Comment |
|:---------- | :---------- |:---------- |
| 2 | $ sudo ubuntu-drivers autoinstall | Install recommended driver. |
| 3 | $ sudo reboot |  |
||

## Install CUDA for Docker Containers

See: [NIVIDIA User guide](https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/user-guide.html)

##### Prerequisites
- You have [Docker installed](#Install-Docker)
- Julia version 1.5.0+

|Step        | Action      | Comment |
|:---------- | :---------- |:---------- |
| 1 | Run the following code below: | Enable GPU support for Docker. |
||
```
sudo mkdir -p /etc/systemd/system/docker.service.d
sudo tee /etc/systemd/system/docker.service.d/override.conf <<EOF
[Service]
ExecStart=
ExecStart=/usr/bin/dockerd --host=fd:// --add-runtime=nvidia=/usr/bin/nvidia-container-runtime
EOF
sudo systemctl daemon-reload
sudo systemctl restart docker
```
|Step        | Action      | Comment |
|:---------- | :---------- |:---------- |
| 2 | sudo docker start test_sshd | Start the container. |
| 2 | ssh rob@172.17.0.2 | Enter the container. |
| 3 | julia | Start Julia. |
| 4 | using Pkg | Start package manager |
| 5 | Pkg.add(["BenchmarkTools", "CUDA", "Flux"])) | Load CUDA, etc. |
| 6 | <Backspace> | Return to Jullia. |
| 7 | using CUDA; has_cuda() | Test whether CUDA is enabled. |
||

TODO: It didn't work for me. Troubleshoot!
- https://github.com/JuliaGPU/docker

## Belangrijke Docker commando's
| Commando    | Opmerking |
|:----------  |:---------- |
| sudo docker images | Toon alle Docker Images. |
| sudo docker ps | Toon alle gestarte containers. |
| sudo docker ps - a | Toon allw containers. |
| sudo docker start <name or id> | Bjvoorbeeld: `docker start domoticz`. |
| sudo docker exec -it <name or id> <command> | Bijvoorbeeld: `docker exec -it test_sshd bash`. |
| sudo docker exec -it <name or id> <command> | Bijvoorbeeld: `docker exec -it test_sshd julia`. |
| Ctrl-D | Verlaat de container |
| sudo docker stop <name or id> | Bijvoorbeeld `docker domoticz`. |
| sudo docker rm -f <name or id> | Verwijder een container. |
| sudo docker rmi <image id> | erwijder een image. |
||

## Installeren van Ubuntu op een Samsung T5 en Lemovo Legion Y520 met Windows 10

The stappen die ik heb gevolgd.

|Stap        | Actie/Response | Comment |
|:---------- | :---------- |:---------- |
| 1 | Download ISO-image van de Ubuntu 22.04. website |  |
| 2 | Kopieer met Rufus naar een [USB-stick](https://github.com/kfechter/LegionY530Ubuntu/blob/master/Sections/CreateBootDrive.md) |  |
| 3 | Start de machine en druk op F2 | Verander de Bios van Lenovo |
||
```
Onder de Boot tab:
Fast Boot disabled
Onder de Security tab:
Secureboot disabled
Zie ook:
https://github.com/kfechter/LegionY530Ubuntu/blob/master/Sections/InstallUbuntu.md
```

|Step        | Action/Response | Comment |
|:---------- | :---------- |:---------- |
| 4 | Start Y520 met Windows 10 and druk op F12 |  |
| 5 | Choose Ubuntu | Herstart via USB. |
| 6 | Na herstart kies voor `install Ubuntu on 500GB portable disk` |  |
| 7 | sudo apt update |  |
| 8 | sudo do-release-upgrade -d | [Upgrade to Ubuntu 20.04](https://ubuntu.com/blog/how-to-upgrade-from-ubuntu-18-04-lts-to-20-04-lts-today). |
||

---