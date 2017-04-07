class RemoveImageUrlFromPet < ActiveRecord::Migration[5.0]
  def change
    remove_column :pets, :image_url, :string
  end
end
