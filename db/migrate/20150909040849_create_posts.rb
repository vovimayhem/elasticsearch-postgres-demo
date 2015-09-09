class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.references :author, index: true
      t.text :body

      t.timestamps null: false
    end
    add_reference :people, :author_id
  end
end
