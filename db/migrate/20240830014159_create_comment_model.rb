class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.references :post, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true  # Asegúrate de que esta línea esté presente
      t.string :author
      t.text :content

      t.timestamps
    end
  end
end
