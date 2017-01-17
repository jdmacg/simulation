class AddDevelopmentTimeToDevelopments < ActiveRecord::Migration[5.0]
  def change
    add_column :developments, :development_time, :decimal
  end
end
