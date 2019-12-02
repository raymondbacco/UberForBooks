class AddLocationToBooks < ActiveRecord::Migration[6.0]
  def change
    add_column :books, :location, :string
  end
end
