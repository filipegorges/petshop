class AddTypeToPet < ActiveRecord::Migration[5.0]
  def change
    add_column :pets, :type, :string
  end
end
