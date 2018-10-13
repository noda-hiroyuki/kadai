class CommentsController < ApplicationController

  def create
    @topic = Topic.find(params[:topic_id])
    @comment = @topic.comments.create(comment_params)
    redirect_to post_path(@topic)


    #binding.pry
  end

    private
    def comment_params
      comment_params = params.require(:comment).permit(:comment)
    end
end
