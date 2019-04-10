class CreateAuthors < ActiveRecord::Migration[5.2]
  def change
    create_table :authors do |t|
      t.string :name, null: false
      t.string :home_town

      t.timestamps null: false
    end
  end
end
