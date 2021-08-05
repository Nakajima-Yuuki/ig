class AddUserIdToPosts < ActiveRecord::Migration[6.1]
  def change
    create_table :blogs do |t|
      t.string :title
      t.text :content
      add_reference :posts, :user, foreign_key: true
   end
  end
end
