require 'rails_helper'

RSpec.describe Comment, type: :model do

<<<<<<< HEAD
 let(:topic) { Topic.create!(name: RandomData.random_sentence, description: RandomData.random_paragraph) }
 let(:post) { topic.posts.create!(title: RandomData.random_sentence, body: RandomData.random_paragraph) }
=======
 let(:post) { Post.create!(title: "New Post Title", body: "New Post body") }
>>>>>>> parent of 3c85c92... Merge pull request #1 from mbattur/check-34
 let(:comment) { Comment.create!(body: 'Comment Body', post: post) }
 
 describe "attributes" do
   it "should respond to body" do
     expect(comment).to respond_to(:body)
   end
 end
end
