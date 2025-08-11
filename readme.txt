INSTRUCCIONES DE EJECUCIÓN

1. Requisitos previos:
   - Tener instalado Java 8 o superior.
   - Tener instalado Maven 3.6 o superior.
   - Tener conexión a Internet (la API de pruebas es pública).

2. Clonar o descargar el repositorio:
   git clone https://github.com/Julian981309/RetoTecnico-Karate.git

3. Ubicarse en la carpeta del proyecto:
   cd RetoTecnico

4. Ejecutar las pruebas:
   - Ubicar el runner de pruebas en src/test/java/PruebaT/pets/PetStoreRunner
   - Dar click derecho y seleccionar "Run PetStoreRunner" (en IDEs como IntelliJ o Eclipse)

5. Ver reporte de resultados:
   Abrir el archivo target/karate-reports/karate-summary.html en un navegador.
   [Ver video de ejecución](evidencias/video.mp4).

Notas:
- El proyecto utiliza Karate Framework con JUnit5.
- La prueba ejecuta de forma automática:
  * Creación de usuario
  * Consulta del usuario
  * Actualización de datos
  * Consulta de datos actualizados
  * Eliminación de usuario
