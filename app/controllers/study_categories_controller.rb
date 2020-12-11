class StudyCategoriesController < ApplicationController
  before_action :set_study_category, only: [:show, :edit, :update, :destroy]

  
  def index
    @study_categories = StudyCategory.all
  end

  def show
  end

  def new
    @study_category = StudyCategory.new
  end

  def edit
  end

  def create
    @study_category = StudyCategory.new(study_category_params)

    respond_to do |format|
      if @study_category.save
        format.html { redirect_to @study_category, notice: 'Uma nova categoria foi definida.' }
        format.json { render :show, status: :created, location: @study_category }
      else
        format.html { render :new }
        format.json { render json: @study_category.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @study_category.update(study_category_params)
        format.html { redirect_to @study_category, notice: 'Categoria atualizada.' }
        format.json { render :show, status: :ok, location: @study_category }
      else
        format.html { render :edit }
        format.json { render json: @study_category.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @study_category.destroy
    respond_to do |format|
      format.html { redirect_to study_categories_url, notice: 'Categoria removida.' }
      format.json { head :no_content }
    end
  end

  private
    def set_study_category
      @study_category = StudyCategory.find(params[:id])
    end

    def study_category_params
      params.require(:study_category).permit(:title)
    end
end
