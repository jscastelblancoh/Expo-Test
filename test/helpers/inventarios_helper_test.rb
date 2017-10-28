class InventariosHelperTest < ActionView::TestCase

  test "retorna si hay productos con nombre primero" do
    inventario = inventarios(:one)
 
    assert_dom_equal %{<a href="/inventarios/#{inventario.id}">primero 2</a>}, link_to_inventario(inventario)
  end
end
