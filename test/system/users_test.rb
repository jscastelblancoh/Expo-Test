require "application_system_test_case"

class UsersTest < ApplicationSystemTestCase
  # test "visiting the index" do
  #   visit users_url
  #
  #   assert_selector "h1", text: "Users"
  # end


  # EN este test vamos a probar que un suario se puede registrar de manera exitosa
  test "registrar usuario" do
  	visit root_path
  	click_on "Registrarse"

  	fill_in "Email", with: "daafonsecara@unal.edu.co"
  	fill_in "Password", with: "12345678"
  	fill_in "Password confirmation", with: "12345678"

  	click_on "Sign up"

  	assert_selector "p", "Welcome! You have signed up successfully.", "Registro exitoso, como se esperaba"
  end
end
