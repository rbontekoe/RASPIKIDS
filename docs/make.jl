using Documenter

makedocs(
    sitename = "RASPIKIDS",
    format = Documenter.HTML(),

    pages = [
        "Toepassingen met de Raspberry Pi" => "index.md",
        "Blog" => "blog.md",
        "Sectie 1 - Basis installaties" => [
            "SSD-kaartje klaarmaken voor de Raspberry Pi 3B+" => "chapter1.md",
            "WiFi instellen" => "chapter2.md",
            "Docker installeren" => "chapter3.md",
            "Portainer installeren" => "chapter4.md",
            "Node-RED installeren" => "chapter5.md"
        ],
        "Sectie 2 - Algemene Node-RED toepassingen" => [
            "Website bouwen met Node-RED" => "chapter6.md",
        ],
        "Sectie 3 - Sensoren" => [
            "MQTT broker installeren" => "chapter7.md",
            "Temperatuur meten" => "chapter8.md",
            "Node-RED dashboard programma maken" => "chapter9.md"
        ],
        "Sectie 4 - Slimme meter" => [
            "Domoticz installeren" => "chapter10.md",
            "Slimme meter aansluiten" => "chapter11.md",
            "Stroom- en gasverbruik op het dashboard weergeven" => "chapter12.md"
        ],
        "Sectie 5 - InfluxDB en Grafana" => [
            "Grafana en InfluxDB installeren" => "chapter12.md",
            "Gegevens opslaan in Influx met Node-RED" => "chapter13.md",
            "Gegevens grafisch weergeven met Grafana" => "chapter14.md"
        ],
        "Bijlage" => "appendix.md",
        "References" => "references.md"
    ]
)
