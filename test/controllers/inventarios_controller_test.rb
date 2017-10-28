require "test_helper"

class InventariosControllerTest < ActionDispatch::IntegrationTest
  def inventario
    @inventario ||= inventarios :one #datos del fixture
  end

  def test_index
    get inventarios_url
    assert_response :success
    #conpobamos la ruta
    assert_routing "/inventarios", controller: "inventarios", action: "index"
  end

  def test_new
    get new_inventario_url
    assert_response :success
  end

  def test_create
    assert_difference "Inventario.count" do
      post inventarios_url, params: { inventario: { cantidad: inventario.cantidad, descripcion: inventario.descripcion, name: inventario.name } }
    end

    assert_redirected_to inventario_path(Inventario.last)
  end

  def test_show
    get inventario_url(inventario)
    assert_response :success
  end

  def test_edit
    get edit_inventario_url(inventario)
    assert_response :success
  end

  def test_update
    patch inventario_url(inventario), params: { inventario: { cantidad: inventario.cantidad, descripcion: inventario.descripcion, name: inventario.name } }
    assert_redirected_to inventario_path(inventario)
  end

  def test_destroy
    assert_difference "Inventario.count", -1  do
      delete inventario_url(inventario)
    end

    assert_redirected_to inventarios_path

  end
end
