
# Automatisierte Installation von SmartHomeNG und weiteren Tools

In diesem Repository sind die Dateien abgelegt, die für eine automatisierte Installation von SmartHomeNG, smartVISU und unterstützender Tools auf einem Rechner benötigt werden.

Aktuell wird die automatisierte Installation auf Raspberry Pis unterstützt, wobei auch das Betriebssystem  **Raspberry Pi OS** mit installiert wird.


# Installation auf einem Raspberry Pi

## Automatisch installierte Komponenten (work in Progress)

Folgende Komponenten werden auf einem Raspberry Pi installiert:

- Die aktuelle Version von  **Raspberry Pi OS Lite** (also ohne Desktop)
- Apache2
- SmartHomeNG - wahlweise aktueller master oder aktueller develop branch
- knxd (aktuelle Version)
- mqtt broker mosquitto
- 1-wire Unterstützung owserver, owhttpd
- smartVISU - wahlweise aktueller master oder aktueller develop branch
- smartVISU v2.8 (für alle, die ihre Widgets noch nicht auf v2.9 angepasst haben)

Zu Beginn muss nur ein Zip Archiv von ca. 50 MByte Größe heruntergeladen werden. Alle weiteren Komponenten (inclusive Betriebssystem) werden in der jeweils aktuellen Version aus dem Internet nachgeladen.

## Ablauf der Installation

- Eine SD Card (8 GByte oder größer) mit dem Dateisystem FAT formatieren
- Tastatur und Monitor an den Raspberry Pi anschließen (es geht, wie weiter unten beschrieben, mit Hilfe eines VNC Viewers auch ohne angeschlossene Tastatur und Monitor)
- Den Inhalt des Archives **PINN-lite-shng.zip** aus dem Ordner **rasppi** dieses Repositories auf die SD Card kopieren. Die Dateien aus dem Archiv müssen in das Root-Verzeichnis der SD Card kopiert werden. Es kann auch ein Tool wie **Etcher** genutzt werden, um den Inhalt des Archives auf die SD Card zu übertragen.
- Den Raspberry Pi von dieser SD Card booten. Es erscheint ein Auswahl Menü:\
![Alt text](doc/images/PINN-menu.jpg?raw=true "PINN Menü")\
Am unteren Bildschirmrand kann die Sprache und das Tastatur Layout des Betriebssystems ausgewählt werden.\
\
**ACHTUNG:** Zur Zeit bitte nur Auswahl 2 oder 3 nutzen, die den develop Branch von SmartHomeNG installieren. Mit dem aktuellen master (v1.7.2) funktioniert der benötigte Restart des SmartHomeNG Service nicht sauber.
- Nachdem die Betriebssystem Installation abgeschlossen ist, erscheint folgender Dialog:\
![Alt text](doc/images/PINN-installationcomplete.jpg?raw=true "PINN Installation abgeschlossen")\
Nachdem der Dialog bestätigt wurde, bootet der Raspberrry Pi das **Raspberry Pi OS** Betriebssystem und beginnt mit dem Post-Install Prozess, der SmartHomeNG und die benötigten Komponenten installiert und konfiguriert. Dieses dauert eine Weile. Aus einem Raspberry Pi 4 nimmt dieser Vorgang ca. 12 bis 15 Minuten in Anspruch.
- Nun kann die Installation genutzt werden. Der Zugriff kann folgendermaßen erfolgen:
  - Mit dem Browser auf die AdminGUI von SmartHomeNG: ``http://<IP des Pi>:8383``
  - Mit dem Browser auf die smartVISU: ``http://<IP des Pi>/smartvisu``
  - Mit dem Browser auf die smartVISU v2.8: ``http://<IP des Pi>/smartvisu28``
  - Mit ssh auf das Betriebssystem ``ssh pi@<IP des PI>`` Das konfigurierte Password für den User ist **shng**

## Installation ohne Monitor und Tastatur

(Die Beschreibung folgt später)
