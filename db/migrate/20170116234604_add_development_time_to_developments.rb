class AddDevelopmentTimeToDevelopments < ActiveRecord::Migration[5.0]
  def change
    add_column :development, :development_time, :decimal
  end
end
