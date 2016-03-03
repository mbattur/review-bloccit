class FavoriteMailer < ApplicationMailer
  default from: "mbattur@yahoo.com"
  
  def new_comment(user, post, comment)
    headers["Message-ID"] = "<comments/#{comment.id}@agile-lowlands-7216.herokuapp.com>"
    headers["In-Reply-To"] = "<post/#{post.id}@agile-lowlands-7216.herokuapp.com>"
    headers["References"] = "<post/#{post.id}@agile-lowlands-7216.herokuapp.com>"
    
    @user = user
    @post = post
    @comment = comment
    
    mail(to: user.email, subject: "New comment on #{post.title}")
  end
end
