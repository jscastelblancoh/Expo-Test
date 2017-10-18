require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def user
    @user ||= User.new
  end

  def test_valid
    assert user.valid?, "Imposible validar el usuario (falla provocada)"
  end

  def test_error_a_proposito
    variable_no_declarada
    assert true, "Error (provocado) por una variable no deseada"
  end

  def test_nulidad_de_password
    assert_not user.encrypted_password.nil?
  end

  def test_uniqueness_email
    assert user.validates_presence_of :email, :encrypted_password #Asegura la generación de los fixture
  end

end
