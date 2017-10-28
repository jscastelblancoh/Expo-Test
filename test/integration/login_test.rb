require "test_helper"

class LoginTest < ActionDispatch::IntegrationTest
  # def test_sanity
  #   flunk "Need real tests"
  # end
  test "ver inventario despues del login" do
  	get "/users/sign_in"
  	assert_response :success

  	@user = User.create(email: "david@mail.com", password: Devise::Encryptor.digest(User, "helloworld"))
  	post "/users/sign_in", params: {user: { email: @user.email, password: @user.password, remember_me: 0}}
  	assert_response :redirect
  	#la aplicación nos redirecciona primero a la ruta raiz
  	#después nos redirecciona a /inventarios
  	follow_redirect! 
  	follow_redirect!

  	assert_equal "/inventarios", path
  	assert_select "h1", "Inventarios"
  end
end
