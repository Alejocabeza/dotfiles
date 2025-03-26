# Dotfiles

## Introduction

Hola mi nombre es **Alejandro Cabeza**, soy un desarrollador **Venezolano** que apasionado por la customización y las automatizaciones de tarea, por lo que durante mucho tiempo he estado buscando la forma de automatizar mi proceso de instalación de mi entorno de configuración. Gracias a mi trabajo como desarrollador estoy constantemente en la terminal y eso me hizo entender el poder de los scripts de automatización y de la importancia de la replicabilidad de mis configuraciones. Creo que todos los que trabajamos con Linux nos pasan que nos cambiamos de **Distro** o de **OS** y nos toca hacer un gran esfuerzo para poder instalar las dependencias y que todo funcione de forma igual a como teníamos en el **Distro** o **OS** pasado. Esta es mi solución. estas configuraciones van más arraigadas a las utilizadas que uso diariamente para poder desembolverme como **back-end developer**, quiero dejar claro que, por primer lugar, lo que se usa en esta configuración es para tener una alta disponibilidad y replicabilidad en todos los entornos de escritorio que he usado y en todos los sistemas operativos en los que me he movido.

## Packages

- **Nix (Package Manager)**
- **Home Manager**
- **NixGL Intel** y **NixGL NVIDIA Bumblebee**
- **Docker**
- **Neovim**
- **Fish**
- **Alacritty**
- **Tmux**
- **Fnm (Fast Node Manage)**

## Commands

### Nix

```bash
nix-env create my-distro
```

### Home Manager

```bash
home-manager init --name my-distro
```

### NixGL Intel/NVIDIA Bumblebee

```bash
nvm install --tree-depth 1 -g nvidia-cuda-toolkit=5.0.0
```

### Docker

```bash
docker pull dockerregistry.my-distro:my-image
```

### Neovim

```bash
nvim my-distro
```

### Fish

```bash
fish my-distro
```

### Alacritty

```bash
alacritty -D my-distro
```

### TMux

```bash
tmux new -g my-distro
```

### Fnm (Fast Node Manage)

```bash
fnm init --name my-distro
```

## Keyboard Shortcuts

Aquí tienes algunos de los hotkeys más comunes que utiiza para acelerar mi trabajo:

- **Ctrl + C**: Copiar
- **Ctrl + V**: Colgar
- **Ctrl + Z**: Cancelar
- **Ctrl + D**:Cerrar
- **Ctrl + F**:Buscar
- **Ctrl + J/K**: Ir alantero/ posterior
- **Ctrl + T**:Términos
- **Ctrl + U**:Ultralímite

## How to Install

1. **Update Nix**  
   `nix update --yes`

2. **Install Home Manager**  
   `home-manager init --name my-distro`

3. **Configure NixGL**  
   `nvm install -g nvidia-cuda-toolkit=5.0.0`

4. **Set Docker**  
   `docker pull dockerregistry.my-distro:my-image`

5. **Launch Neovim**  
   `nvim my-distro`

6. **Start Fish**  
   `$ fish my-distro`

7. **Open Alacritty**  
   `$ alacritty -D my-distro`

8. **Create TMux Session**  
   `$ tmux new -g my-distro`

9. **Initialize Fnm**  
   `$ fnm init --name my-distro`

## Keyboard Shortcuts

Aquí tienes algunos de los hotkeys más comunes que utiiza para acelerar mi trabajo:

- **Ctrl + C**: Copiar
- **Ctrl + V**: Colgar
- **Ctrl + Z**: Cancelar
- **Ctrl + D**:Cerrar
- **Ctrl + F**:Buscar
- **Ctrl + J/K**: Ir alantero/ posterior
- **Ctrl + T**:Términos
- **Ctrl + U**:Ultralímite
