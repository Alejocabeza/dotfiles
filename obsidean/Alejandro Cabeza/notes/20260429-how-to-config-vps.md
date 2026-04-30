---
id: 20260429-how-to-config-vps
aliases:
  - how-to-config-vps
tags: []
---
## 1. Actualización Inicial
Lo primero es asegurarte de que el sistema operativo esté al día. Casi todos los VPS usan Ubuntu o Debian, así que corre esto:

```bash
sudo apt update && sudo apt upgrade -y
```

## 2. Crear un Usuario Protegido
**Nunca** deberías trabajar habitualmente como usuario `root`. Es peligroso porque un error de dedo puede borrar todo el sistema. Crea un usuario con privilegios de administrador (`sudo`):

1.  **Crear usuario:** `adduser nombre_usuario`
2.  **Darle poder:** `usermod -aG sudo nombre_usuario`
3.  **Cambiar a ese usuario:** `su - nombre_usuario`

## 3. Asegurar el acceso por SSH
La contraseña es el eslabón más débil. Lo ideal es usar **Llaves SSH**.

* **Paso A:** En tu computadora local, genera una llave (si no tienes una): `ssh-keygen -t ed25519`.
* **Paso B:** Copia tu llave pública al servidor: `ssh-copy-id nombre_usuario@IP_del_servidor`.

### Endurecer el archivo de configuración
Edita el archivo `/etc/ssh/sshd_config`:
* Cambia `PermitRootLogin` a **no**.
* Asegúrate de que `PasswordAuthentication` esté en **no** (solo después de verificar que tu llave SSH funciona).
* *Opcional:* Cambia el puerto 22 por uno aleatorio (ej. 3482) para evitar ataques de bots básicos.



---

## 4. Configurar el Firewall (UFW)
No dejes todas las puertas abiertas. En Ubuntu, `ufw` es la herramienta más sencilla:

1.  **Permitir SSH:** `sudo ufw allow ssh` (o el puerto que hayas elegido).
2.  **Activar el firewall:** `sudo ufw enable`.
3.  **Ver estado:** `sudo ufw status`.

## 5. Configurar el Timezone
Parece menor, pero si los logs tienen una hora distinta a la tuya, investigar errores será una pesadilla:

```bash
sudo dpkg-reconfigure tzdata
```

---

## 6. Protección contra Fuerza Bruta (Fail2Ban)
Instala **Fail2Ban**. Esta herramienta monitorea los intentos de inicio de sesión fallidos y banea automáticamente las IPs que intentan "adivinar" tu contraseña.

```bash
sudo apt install fail2ban -y
```
Viene configurado por defecto para proteger el SSH, así que con instalarlo ya tienes una capa extra de seguridad.

---

## 7. Swap (Memoria Virtual)
Si tu VPS tiene poca RAM (ej. 1GB o 2GB), es vital crear un archivo **Swap**. Esto permite que el servidor use un poco de espacio del disco como si fuera RAM para evitar que el sistema colapse si se queda sin memoria física.

