class Post < ApplicationRecord
  has_many :comments, foreign_key: :postId
end