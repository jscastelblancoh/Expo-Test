module InventariosHelper
   def link_to_inventario( inventario )
      link_to "#{ inventario.name } #{ inventario.cantidad }",inventario
   end
end
