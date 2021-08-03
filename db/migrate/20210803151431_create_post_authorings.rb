class CreatePostAuthorings < ActiveRecord::Migration[6.1]
  def change
    create_table :post_authorings do |t|
      t.references :post_author, null: false, foreign_key: true
      t.references :authored_post, null: false, foreign_key: true

      t.timestamps
    end
  end
end
