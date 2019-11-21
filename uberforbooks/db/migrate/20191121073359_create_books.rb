class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :name
      t.references :owner, null: false, foreign_key: true
      t.string :genre

      t.timestamps
    end
  end
end
