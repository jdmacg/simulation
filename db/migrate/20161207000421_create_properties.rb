class CreateProperties < ActiveRecord::Migration[5.0]
  def change
    create_table :properties do |t|
      t.integer  :team_id
      t.integer :property_type
      t.integer :property_values_id
      t.boolean :in_development
      t.integer :development_id
      t.string :city
      t.string :province
      t.boolean :developed
      t.timestamps
    end
  end
end
