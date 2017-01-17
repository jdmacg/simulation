class AddDevelopmentToProperties < ActiveRecord::Migration[5.0]
  def change
    add_reference :properties, :development, foreign_key: true
  end
end
