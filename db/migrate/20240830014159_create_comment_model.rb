class CreateCommentModel < ActiveRecord::Migration[7.2]
  def change
    create_table :comments do |t|
      t.string :author, null: false
      t.text :content, null: false
      t.timestamps
    end
  end 
end
