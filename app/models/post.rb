class Post < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :comments
  has_many :likes
  validates :title, length: { maximum: 250 }
  validates :comments_counter, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :likes_counter, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  def self.update_post_counter(user)
    counter = Post.where("author_id = #{user.id}").count
    user.posts_counter = counter
    user.save
  end

  def self.most_recent_comments(post)
    Comment.where("post_id = #{post.id}").order(created_at: :desc).limit(5)
  end
end
