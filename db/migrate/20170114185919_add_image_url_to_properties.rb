class AddImageUrlToProperties < ActiveRecord::Migration[5.0]
  def change
    add_column :properties, :poster_image_url, :text
  end
end
