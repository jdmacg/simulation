class AddPropertyIdToDevelopment < ActiveRecord::Migration[5.0]
  def change
    add_reference :developments, :property, foreign_key: true
  end
end
