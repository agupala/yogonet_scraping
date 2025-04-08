# Yogonet Scraper

A Dockerized Python application that scrapes news articles from Yogonet, processes the data, and uploads it to BigQuery.

## Features

- Web scraping using Selenium
- Data processing with Pandas/Polars
- BigQuery integration
- AI-assisted dynamic element detection
- Dockerized deployment
- Cloud Run deployment script

## Prerequisites

- Docker
- Google Cloud SDK
- Python 3.9+
- GCP Service Account with BigQuery permissions

## Setup

1. Clone the repository:

   ```bash
   git clone https://github.com/your-repo/yogonet-scraper.git
   cd yogonet-scraper


## Explicación de la solución

1. **Web Scraping con Selenium**:
   - Usamos Selenium con Chrome en modo headless para scrapear Yogonet
   - Implementamos tanto selectores fijos como el sistema AI dinámico

2. **Post-Processing**:
   - Usamos Pandas para calcular:
     - Conteo de palabras en el título
     - Conteo de caracteres
     - Lista de palabras capitalizadas

3. **Integración con BigQuery**:
   - Implementamos un cliente para subir los datos procesados
   - Usamos autodetección de esquema para simplificar

4. **Dockerización**:
   - Configuramos Chrome y Chromedriver en el contenedor
   - Instalamos todas las dependencias de Python

5. **Script de despliegue**:
   - Automatiza build, push y deploy a Cloud Run

6. **Función avanzada (AI)**:
   - Implementamos un clasificador zero-shot de Hugging Face
   - El modelo analiza el texto para identificar títulos, kickers, etc.
   - Funciona incluso si cambia la estructura del sitio

## Consideraciones adicionales

1. **Manejo de errores**:
   - El código incluye try-catch para manejar errores durante el scraping
   - Logging adecuado para diagnóstico

2. **Escalabilidad**:
   - Cloud Run permite escalado automático
   - Se puede configurar concurrencia

3. **Mejoras posibles**:
   - Agregar tests unitarios
   - Implementar retry para fallos temporales
   - Agregar monitoreo

Esta solución cumple con todos los requisitos del challenge y proporciona una base sólida para futuras mejoras. El enfoque de IA para la detección dinámica de elementos es particularmente innovador y resuelve el problema de los cambios en el layout del sitio.