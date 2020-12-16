class StudyCommentsController < ApplicationController
  
  def create
    @study_item = StudyItem.find(params[:study_item_id])
    @study_comment = @study_item.study_comments.create(study_comment_params)
    redirect_to study_item_path(@study_item)
  end
    

  def destroy
    @study_item = StudyItem.find(params[:study_item_id])
    @study_comment = @study_item.study_comments.find(params[:id])
    @study_comment.destroy
    redirect_to study_item_path(@study_item)
  end

  private
    def study_comment_params
      params.require(:study_comment).permit(:commenter, :body)
    end

end
