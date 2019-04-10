class CreateAuthorships < ActiveRecord::Migration[5.2]
  def change
    create_table :authorships do |t|
      t.belongs_to :author, null: false
      t.belongs_to :book, null: false

      t.timestamps null: false
    end
  end
end
