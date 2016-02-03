 require 'rails_helper'

<<<<<<< HEAD
 RSpec.describe Post, type: :model do
   
   let(:topic) { Topic.create!(name: RandomData.random_sentence, description: RandomData.random_paragraph) }

   let(:post) { topic.posts.create!(title: RandomData.random_sentence, body: RandomData.random_paragraph) }
 
   it { is_expected.to belong_to(:topic) }

   describe "attributes" do
     it "responds to title" do
       expect(post).to respond_to(:title)
     end

     it "responds to body" do
       expect(post).to respond_to(:body)
     end
   end
 end
=======
RSpec.describe Post, type: :model do
  let(:post) { Post.create!(title: "New Post Title", body: "New Post Body") }
  
  describe "attributes" do
    it "should respond to title" do
      expect(post).to respond_to(:title)
    end
    
    it "should respond to body" do
      expect(post).to respond_to(:body)
    end
  end
end
>>>>>>> parent of 3c85c92... Merge pull request #1 from mbattur/check-34
