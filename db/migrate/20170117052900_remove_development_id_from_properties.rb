class RemoveDevelopmentIdFromProperties < ActiveRecord::Migration[5.0]
  def change
    remove_column :properties, :development_id, :int
  end
end
