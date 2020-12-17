class StudyCategoriesController < ApplicationController
  before_action :set_study_category, only: [:show, :edit, :update, :destroy]

  
  def index
    @study_categories = StudyCategory.all
  end

  def show; end

  def new
    @study_category = StudyCategory.new
  end

  def edit; end

  def create
    @study_category = StudyCategory.new(study_category_params)
      if @study_category.save
        redirect_to @study_category
      else
        render :new
      end
  end

  def update
      if @study_category.update(study_category_params)
        redirect_to @study_category
      else
        render :edit
      end
  end

  def destroy
    @study_category.destroy
    redirect_to study_categories_url
  end

  private
    def set_study_category
      @study_category = StudyCategory.find(params[:id])
    end

    def study_category_params
      params.require(:study_category).permit(:title)
    end
end
