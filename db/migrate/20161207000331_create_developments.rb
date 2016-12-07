class CreateDevelopments < ActiveRecord::Migration[5.0]
  def change
    create_table :developments do |t|
      t.integer :cost
      t.boolean :used

      t.timestamps
    end
  end
end
