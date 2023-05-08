using Documenter

makedocs(
    sitename = "RASPIKIDS",
    format = Documenter.HTML(),

    pages = [
        "Toepassingen met de Raspberry Pi" => "index.md",
        "Blog" => "blog.md",
        "Sectie 1 - Basis installaties" => [
            "1 Micro SD-kaartje klaarmaken voor de Raspberry Pi 3B+" => "chapter1.md",
            "2 Communiceren met de Raspberry Pi" => "chapter2.md",
            "3 Docker installeren" => "chapter3.md",
            "4 Portainer installeren" => "chapter4.md",
            "5 Node-RED installeren" => "chapter5.md"
        ],
        "Sectie 2 - Algemene Node-RED toepassingen" => [
            "6 Website bouwen met Node-RED" => "chapter6.md",
        ],
        "Sectie 3 - Sensoren" => [
            "7 MQTT broker installeren" => "chapter7.md",
            "8 Temperatuur meten" => "chapter8.md",
            "9 Node-RED dashboard programma maken" => "chapter9.md"
        ],
        "Sectie 4 - Slimme meter" => [
            "10 Domoticz installeren" => "chapter10.md",
            "11 Slimme meter aansluiten" => "chapter11.md",
            "12 Stroom- en gasverbruik op het dashboard weergeven" => "chapter12.md"
        ],
    #    "Sectie 5 - InfluxDB en Grafana" => [
    #        "13 Grafana en InfluxDB installeren" => "chapter13.md",
    #        "14 Gegevens opslaan in Influx met Node-RED" => "chapter14.md",
    #        "15 Gegevens grafisch weergeven met Grafana" => "chapter15.md"
    #    ],
        "Bijlage" => "appendix.md",
        "References" => "references.md"
    ]
)
