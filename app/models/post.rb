class Post < ActiveRecord::Base
  belong_to :topic
  has_many :comments, dependent: :destroy
end