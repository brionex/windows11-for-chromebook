# 🪟 Instalar Windows 11 (21H2) en Chromebook con Phoenix LiteOS

Este repositorio contiene la guía y archivos necesarios para instalar **Windows 11 (21H2)** usando **Phoenix LiteOS** en un dispositivo **Chromebook**.

> ⚠️ Este método está pensado para usuarios con experiencia básica en instalación de sistemas operativos. No es un procedimiento oficial de Microsoft o Google, y puede implicar riesgos.

---

## ✅ Requisitos

- Un **Chromebook compatible**, idealmente con soporte para modo **UEFI**.
- Una **unidad USB (mínimo 8 GB)** para la instalación.
- Una copia de **Windows 11 Phoenix LiteOS (21H2)**.
- **BIOS deshabilitada con Write Protect removido** (Coreboot o UEFI desbloqueado).
- Acceso a otra computadora para crear el USB booteable.

---

## 📦 Archivos necesarios

- ISO de **Phoenix LiteOS 21H2**
- Herramienta para crear USB booteable:

  - [Rufus](https://rufus.ie) o [Balena Etcher](https://www.balena.io/etcher/)

- Drivers de hardware para tu Chromebook (gráficos, touchpad, Wi-Fi, audio, etc.):

  - 🔗 [https://coolstar.org/chromebook/windows-install.html](https://coolstar.org/chromebook/windows-install.html)

---

## 🛠️ Instalación paso a paso

1. **Desbloquea la BIOS de tu Chromebook**:
   Sigue una guía para quitar el Write Protect físico o por software y habilitar el arranque UEFI.

2. **Crea el USB booteable**:

   - Usa Rufus para grabar el ISO de Phoenix LiteOS en una memoria USB (modo GPT + UEFI).

3. **Arranca desde el USB**:

   - Inserta el USB en el Chromebook y entra al Boot Menu (`Esc` + `Refresh` + `Power` en algunos modelos).
   - Selecciona tu USB desde el menú UEFI.

4. **Instala Phoenix LiteOS** como lo harías con cualquier Windows.

5. **Instala los drivers** específicos para tu Chromebook desde el enlace anterior:

   - Incluye controladores para gráficos Intel HD, sonido, Wi-Fi, teclado, touchpad, brillo, etc.

---

## 📌 Notas adicionales

- Phoenix LiteOS es una versión optimizada de Windows: ligera, rápida y con características eliminadas para mejorar el rendimiento.
- Algunas funciones como el **brillo**, el **touchpad** o el **audio** pueden no funcionar hasta instalar los controladores correctos.
- Puedes usar `pnputil` o el Administrador de dispositivos para instalar `.inf` manualmente.

---

## 🚨 Advertencia

Este proyecto **no tiene soporte oficial**. Haz copia de seguridad de tus datos y procede bajo tu propio riesgo. No todos los Chromebooks son compatibles con Windows, incluso con drivers modificados.

---
