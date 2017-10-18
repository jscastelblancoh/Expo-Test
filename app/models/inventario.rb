class Inventario < ApplicationRecord
  validates :name, :cantidad, :descripcion, presence: true

end
