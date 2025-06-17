# 🪟 Instalar Windows 11 (21H2) en Chromebook con Phoenix LiteOS

Este repositorio contiene la guía y los archivos necesarios para instalar **Windows 11 (21H2)** usando **Phoenix LiteOS** en un dispositivo **Chromebook**, con compatibilidad de drivers básicos como gráficos, brillo, sonido y touchpad.

> ⚠️ Este proceso está orientado a usuarios técnicos. No es soportado oficialmente por Microsoft ni Google. Procede bajo tu propio riesgo.

---

## ✅ Requisitos

- Un **Chromebook compatible** (con BIOS desbloqueada o UEFI habilitado).
- Unidad USB de al menos **8 GB**.
- ISO de **Phoenix LiteOS Windows 11 (21H2)**.
- Acceso a otra PC para crear el USB booteable.
- Drivers de hardware para tu Chromebook (especialmente gráficos y ACPI).

---

## 📥 Descargas

### 💽 ISO de Phoenix LiteOS

- 🔗 [Descargar ISO de Phoenix LiteOS (Win11 21H2)](https://drive.google.com/file/d/1Ym5Mr-jiwigTBcaBbFmfhpLLD0o5C7hZ/view?usp=drive_link)

> Recomendado grabarlo en USB con [Rufus](https://rufus.ie), usando **GPT + UEFI (sin CSM)**.

---

### 📁 Driver de gráficos Intel HD (Bay Trail – Celeron N2830)

- 🔗 [Descargar driver de gráficos Intel HD (Bay Trail)](https://drive.google.com/file/d/1l-n6Fk-ytZZ1gTUAzgIPin0wdJBlvCMl/view?usp=drive_link)

Este driver es esencial para que funcionen:

- Control de **brillo**
- Resolución de pantalla completa
- Aceleración gráfica básica

---

## 🛠️ Instalación paso a paso

### 1. Desbloquear el BIOS / UEFI

- Quitar el **write-protect físico o de software** del Chromebook.
- Activar el modo **UEFI boot** (usualmente con firmware de MrChromebox).
- Reiniciar y entrar al **boot menu** (`ESC + Refresh + Power` o según modelo).

---

### 2. Crear USB booteable

- Usar [Rufus](https://rufus.ie) en otro PC.
- Seleccionar:
  - **Sistema de destino**: GPT (UEFI)
  - **Sistema de archivos**: NTFS
  - **Imagen ISO**: Phoenix LiteOS (Win11 21H2)

---

### 3. Instalar Phoenix LiteOS

- Con el USB conectado, inicia el Chromebook desde el menú de arranque.
- Instala Windows normalmente.
- Selecciona eliminar todas las particiones del disco interno.
- Instala Phoenix LiteOS en disco vacío.

---

### 4. Instalar el driver gráfico (Intel HD)

#### Opción A – Instalación automática con `.exe` (si funciona)

1. Extrae el `.zip` descargado del driver.
2. Ejecuta el instalador `setup.exe` como administrador.

#### Opción B – Instalación manual con `.inf`

Si el instalador falla:

1. Extrae el contenido del driver en `C:\Drivers\BayTrail`.
2. Abre **CMD como administrador**.
3. Ejecuta el siguiente comando:

```bat
pnputil /add-driver "C:\Drivers\BayTrail\Graphics\igdlh64.inf" /install /subdirs
```

4. Reinicia el sistema.
5. Verifica en Administrador de dispositivos → Adaptadores de pantalla → “Intel HD Graphics”.

> Si sigue apareciendo "Microsoft Basic Display Adapter", fuerza la instalación desde el Administrador de dispositivos → "Actualizar controlador" → "Buscar en mi equipo" → elige el `.inf`.

---

## 🧩 Solución de problemas comunes

| Problema              | Solución                                                                                   |
| --------------------- | ------------------------------------------------------------------------------------------ |
| El brillo no funciona | Asegúrate de tener instalado el driver gráfico y que el monitor sea "Monitor PnP genérico" |
| No hay audio          | Instala driver de audio desde la misma página de CoolStar                                  |
| Touchpad no responde  | Revisa si aparece en el Administrador de dispositivos como I2C HID device                  |
| No arranca desde USB  | Verifica que el BIOS esté desbloqueado y que el USB esté booteable en modo UEFI            |

---

## 🔗 Recursos adicionales

- Drivers por modelo de Chromebook:
  [https://coolstar.org/chromebook/windows-install.html](https://coolstar.org/chromebook/windows-install.html)

- Firmware personalizado para desbloquear Chromebook:
  [https://mrchromebox.tech](https://mrchromebox.tech)

---

## 🚨 Advertencias finales

- Este procedimiento sobrescribirá **ChromeOS** por completo.
- Phoenix LiteOS está diseñado para rendimiento, pero no es oficial ni estable como Windows normal.
- **Haz una copia de seguridad** antes de comenzar.

---

## ✍️ Créditos

Este proyecto compila información de comunidades como CoolStar y usuarios que han instalado Windows en Chromebooks.
Archivos y drivers recopilados por: **\[Tu nombre o alias]**

---
