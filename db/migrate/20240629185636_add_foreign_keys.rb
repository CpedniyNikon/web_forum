class AddForeignKeys < ActiveRecord::Migration[7.1]
  def change
    add_foreign_key :articles, :users, column: :user_id
    add_foreign_key :comments, :articles, column: :article_id
    add_foreign_key :comments, :users, column: :user_id
  end
end
