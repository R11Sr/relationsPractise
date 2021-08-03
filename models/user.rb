class User < ApplicationRecord
    has_many :post_authorings, foreign_key: :post_author_id
    has_many :authored_posts, through: :post_authorings
    has_many :edited_posts, foreign_key: :editor_id, class_name: "Post"
end
