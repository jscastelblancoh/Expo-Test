require "application_system_test_case"

class InventariosTest < ApplicationSystemTestCase
  # test "visiting the index" do
  #   visit inventarios_url
  #
  #   assert_selector "h1", text: "Inventarios"
  # end
  
  test "nuevo inventario" do
  	visit root_path
  	click_on "Iniciar Sesion"
  	fill_in "Email", with: "daafonsecara@unal.edu.co"
  	fill_in "Password", with: "12345678"
  	click_on "Log in"
  	visit  "inventarios"
  	assert_selector "h1", "Inventarios"

  	click_on "New Inventario"
  	fill_in "Name", with: "Nuevo inventario"
  	fill_in "Cantidad", with: 5
  	fill_in "Descripcion", with: "Este inventario fue creado como prueba"
  	click_on "Create Inventario"

  	assert_selector "p", "Inventario was successfully created."

  end

end
