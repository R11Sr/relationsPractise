class Post < ApplicationRecord
  has_many :post_authorings, foreign_key: :authored_post_id
  has_many :authors, through: :post_authorings, source: :post_author
  belongs_to :editor, class_name: "User"
end
