require "application_system_test_case"

class InventariosTest < ApplicationSystemTestCase
   test "visiting the index" do
     visit ('inventarios/new') # Moverse a la vista de creacion de un nuevo inventario

     assert_selector "h1", text: "New Inventario" # Verificar el texto del header
     fill_in 'inventario[name]', with: 'Tornillos' # Llenar el campo Name con un nombre
     fill_in 'inventario[cantidad]', with: 4
     fill_in 'inventario[descripcion]', with: 'De estrella'
     click_button 'Create Inventario'

     assert_equal Inventario.count, 2 # verificar el almacenamiento en la base

     assert_equal Inventario.last.name, 'Tornillos' # verificar el nombre almacenado

   end
end
