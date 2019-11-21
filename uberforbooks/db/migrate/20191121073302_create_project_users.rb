class CreateProjectUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :project_users do |t|
      t.string :name
      t.references :owns, null: false, foreign_key: true
      t.references :rented, null: false, foreign_key: true

      t.timestamps
    end
  end
end
