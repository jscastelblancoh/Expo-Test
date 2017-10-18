# README

A continuación se presentan algunas pruebas sobre devise:
 * Instalar y configurar un modelo devise
 * Añadir la gema poltergeist para las pruebas de sistema
 * Si desea utilizar el Spec de minitest recomendamos usar minitest-rails
 * Descargar phantomjs desde [http://phantomjs.org/download.html](http://phantomjs.org/download.html) o con sudo apt-get install phantomjs
 * Utilizar la gema simplecov para visualizar claramente los reportes, la gema crea una carpeta llamada coverage que debe ser añadida al gitignore si se desea (En este ejemplo no se añadirá). Allí se pueden visualizar claramente los reportes generados de cobertura sobre los tests (abrir index.html con el navegador para verlos)

 * NOTA: Se generaron validaciones (modelo inventario) para las pruebas de modelo, se generó un archivo de sistema (test/system/inventarios_test) para simular la creación de un inventario mediante capybara,
