# KIDAS OS

Distribution Linux basée sur **Debian 12 (bookworm)** avec le bureau **XFCE** (KIDAS Desktop), construite avec `live-build`.

## Contenu
- XFCE, thème Arc-Dark, icônes Papirus
- Firefox ESR, LibreOffice, VLC, GIMP, Synaptic
- Installeur Calamares, firmwares Wi-Fi/Bluetooth
- Français par défaut (langue, clavier AZERTY, fuseau Europe/Paris)

## Construire
- **GitHub Actions** : onglet *Actions* → *Build KIDAS OS ISO* → *Run workflow*, puis télécharger l'artefact `kidas-os-iso`.
- **En local (Debian/Ubuntu)** : `sudo apt install live-build` puis `make build`.

## Structure
- `auto/` : scripts live-build (config, build, clean)
- `config/package-lists/` : paquets installés
- `config/hooks/live/` : scripts de personnalisation (branding)
- `config/includes.chroot/` : fichiers copiés tels quels dans le système
- `.github/workflows/build.yml` : build automatique de l'ISO

Utilisateur live : `kidas` / mot de passe `live`.
