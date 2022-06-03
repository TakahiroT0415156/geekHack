class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.text :body
      t.string :title
      t.string :word
      t.string :course
      t.string :name

      t.timestamps
    end
  end
end
