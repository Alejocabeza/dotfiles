---
id: 20260325-project-social
aliases:
  - project_social
tags: []
---
**Republica Bolivariana de Venezula**
**Ministerio del Poder Popular para la Educación Superior**
**Universidad Politecnica Territorial AgroIndustrial del Estado Tachira**


**Proyecto Sociotecnoligico**


**Autor:**
Abrahan J. Perez U. 30.853.816
Alejandro J. Cabeza S. 26.788.768
Nelbert S. Pérez R. 31.563.684

# Proyecto Numero 1

## 1. Título del Proyecto
**Sistema de Información Basado en IoT para el Monitoreo de Calidad Hídrica de la Distribuidora Zafiro**

## 2. Línea de Investigación
* **Sistema de Control:** Automatización de la captura de datos y retroalimentación de alertas.
* **Sistemas de Información:** Gestión de flujos de datos desde el hardware hacia la interfaz de usuario.

## 3. Contexto
Para optimizar el control de calidad en la Distribuidora Zafiro, implementaremos una solución tecnológica de Internet de las Cosas (IoT). Mediante el uso de microcontroladores **Arduino** y sensores especializados, transformaremos la incertidumbre sobre la calidad del agua en datos fidedignos. La integración de un frontend desarrollado en **TypeScript** permitirá visualizar de forma robusta y en tiempo real parámetros críticos, garantizando un producto seguro y cumpliendo con los estándares de salud exigidos.

---

## 4. Metodología de Implementación (Por Fases)

* **Fase 1: Configuración del Hardware (Arduino Node)**
    * Ensamblaje de sensores (pH, Turbidez, TDS) al microcontrolador Arduino.
    * Programación del firmware para la lectura analógica y conversión a unidades de medida estándar.
* **Fase 2: Capa de Comunicación (Gateway)**
    * Implementación de comunicación serial o vía Wi-Fi (usando módulos como el ESP8266/ESP32).
    * Definición del formato de intercambio de datos (JSON) para asegurar la compatibilidad con el frontend.
* **Fase 3: Desarrollo del Frontend en TypeScript**
    * Configuración del entorno con **Vite** o **React/Angular** usando TypeScript.
    * Creación de interfaces (`interfaces` y `types`) para definir la estructura de los datos del sensor y evitar errores de lógica.
* **Fase 4: Visualización y Dashboard**
    * Consumo de datos en tiempo real mediante **WebSockets** o una API REST.
    * Implementación de gráficos dinámicos (Charts) que muestren el histórico de la calidad del agua.
* **Fase 5: Validación y Calibración**
    * Contraste de las lecturas del sistema frente a reactivos químicos manuales.
    * Optimización del rendimiento de la aplicación web.

---

## 5. Software y Lenguajes a Usar

Esta combinación permite un desarrollo seguro (Type-Safe) y una arquitectura moderna:

| Componente | Tecnología | Descripción |
| :--- | :--- | :--- |
| **Microcontrolador** | **C++ (Arduino)** | Programación de bajo nivel para la interacción directa con los sensores físicos. |
| **Lenguaje Frontend** | **TypeScript** | Para un desarrollo de interfaz estructurado, mantenible y con detección de errores en tiempo de compilación. |
| **Framework Web** | **React.js o Vue.js** | Bibliotecas modernas para construir el dashboard de monitoreo. |
| **Comunicación** | **Socket.io o MQTT** | Para el envío de datos en "tiempo real" desde el Arduino hacia la web sin necesidad de recargar la página. |
| **Estilos** | **Tailwind CSS** | Para un diseño de interfaz profesional, limpio y adaptativo (responsive). |
| **Entorno de Ejecución** | **Node.js** | Actuará como el puente (servidor intermedio) que recibe los datos del Arduino y los sirve al frontend. |


# Proyecto Numero 2
## 1. Título del Proyecto
**Optimización de la Gestión Presupuestaria mediante un Sistema Automatizado de Cotizaciones para la Constructora Grupo Imnova**

## 2. Líneas de Investigación
* **Sistema de Control:** Automatización de reglas de negocio y cálculos de presupuestos.
* **Sistema de Información:** Centralización de catálogos de insumos y proveedores.
* **Control de Datos:** Validación de tipos y consistencia de la información financiera.

## 3. Contexto
La **Constructora Grupo Imnova** requiere modernizar su proceso de preventa para eliminar el error humano en cálculos complejos. Se propone un ecosistema digital íntegramente desarrollado en **TypeScript**. Esta arquitectura permitirá una validación de datos rigurosa desde que el usuario ingresa un costo hasta que se almacena en la base de datos, garantizando que los presupuestos generados sean precisos, estandarizados y entregados en tiempos récord.

---

## 4. Metodología de Implementación (Por Fases)

* **Fase 1: Modelado de Datos con TypeScript**
    * Definición de `Interfaces` y `Types` globales para Materiales, Mano de Obra y Cotizaciones.
    * Creación de esquemas de validación para asegurar que no entren datos nulos o erróneos.
* **Fase 2: Desarrollo del Backend (API REST/GraphQL)**
    * Configuración del servidor para procesar la lógica de los Análisis de Precios Unitarios (APU).
    * Implementación de la conexión a la base de datos mediante un ORM (como Prisma o TypeORM).
* **Fase 3: Desarrollo del Frontend (Dashboard)**
    * Construcción de formularios dinámicos que permitan agregar insumos a una cotización.
    * Consumo de la API desarrollada en la fase anterior, aprovechando el tipado compartido.
* **Fase 4: Motor de Generación de Documentos**
    * Integración de librerías para transformar el JSON de la cotización en un PDF profesional.
    * Implementación de un sistema de "Historial de Versiones" para cada presupuesto.
* **Fase 5: Pruebas de Integración y Despliegue**
    * Pruebas de extremo a extremo (E2E) para verificar el flujo completo de datos.
    * Despliegue en la nube (VPS o Serverless).

---

## 5. Software y Lenguajes a Usar (Stack Fullstack TS)

Al unificar el lenguaje, el equipo de desarrollo es más eficiente y el código es más fácil de mantener:

| Capa | Tecnología | Función |
| :--- | :--- | :--- |
| **Lenguaje Base** | **TypeScript** | Lenguaje principal para todo el ecosistema (Type-safe). |
| **Backend** | **Node.js + NestJS** | NestJS es el estándar de oro para backends robustos con TypeScript. |
| **Frontend** | **React + Vite** | Para una interfaz rápida, modular y altamente reactiva. |
| **Base de Datos** | **PostgreSQL** | Motor relacional robusto para manejar la integridad de los costos. |
| **ORM** | **Prisma** | Herramienta que traduce el código TypeScript a consultas de base de datos de forma automática. |
| **Validación** | **Zod** | Librería para validar que los datos que envía el usuario sean correctos antes de procesarlos. |

---

# Proyecto 3.
## 1. Título del Proyecto
**Plataforma Móvil Autogestionada para la Automatización de Ciclos de Venta y Sorteos Digitales**

## 2. Línea de Investigación
* **Sistemas de Información:** Digitalización de procesos de venta y registro.
* **Control de Datos:** Gestión de inventarios de boletos en tiempo real y trazabilidad de pagos.
* **Sistemas de Control:** Automatización de flujos de validación y entrega de comprobantes.

## 3. Contexto
Actualmente, la empresa gestiona sus sorteos mediante procesos manuales vía WhatsApp, lo que genera cuellos de botella operativos, falta de trazabilidad y una alta dependencia de la intervención humana. El presente proyecto propone el desarrollo de una plataforma robusta basada en **TypeScript** que automatice el ciclo completo: desde el registro del usuario y la selección de boletos en tiempo real, hasta la validación de pagos. Esta solución elimina el error humano y potencia la escalabilidad del negocio mediante una arquitectura móvil nativa y un backend eficiente.

---

## 4. Metodología de Implementación (Por Fases)

* **Fase 1: Análisis de Reglas de Negocio y Base de Datos**
    * Definición del algoritmo de asignación de boletos (evitar colisiones de compra).
    * Diseño del modelo de datos para Sorteos, Boletos, Usuarios y Transacciones.
* **Fase 2: Desarrollo del Backend (API REST)**
    * Construcción de la API con **Express** y TypeScript.
    * Implementación de autenticación segura (JWT) para los usuarios.
    * Integración de un sistema de "bloqueo temporal" de boletos mientras se procesa el pago.
* **Fase 3: Desarrollo del Frontend Móvil (React Native)**
    * Creación de la interfaz de usuario para la selección visual de números/boletos.
    * Implementación de la pasarela de pagos (o carga de comprobantes) dentro de la App.
    * Generación de tickets digitales con códigos QR para validación.
* **Fase 4: Automatización de Notificaciones**
    * Configuración de un servicio de mensajería (Push Notifications o Email) para confirmar la compra.
    * Panel de administración para que la empresa gestione los ganadores y estados de pago.
* **Fase 5: Pruebas de Carga y Despliegue**
    * Simulación de múltiples usuarios comprando boletos simultáneamente.
    * Publicación de la API y preparación de la App para distribución.

---

## 5. Software y Lenguajes a Usar (Fullstack TypeScript)

Este stack garantiza que el sistema sea rápido, escalable y fácil de mantener:

| Capa | Tecnología | Función |
| :--- | :--- | :--- |
| **Lenguaje Base** | **TypeScript** | Unifica el desarrollo de la App y la API bajo un mismo estándar de tipado. |
| **Frontend Móvil** | **React Native** | Permite crear una aplicación nativa para iOS y Android desde un solo código. |
| **Backend / API** | **Express.js** | Framework minimalista y rápido para gestionar las peticiones y la lógica de sorteos. |
| **Base de Datos** | **Postgresql** | Para garantizar transacciones seguras (ACID) y que no haya boletos duplicados. |
| **Estado Global** | **Redux Toolkit o Zustand** | Para manejar el carrito de boletos dentro de la aplicación móvil. |
| **Validación** | **Express-Validator / Zod** | Para asegurar que los datos que llegan a la API sean legítimos. |

