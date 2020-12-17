class StudyItemsController < ApplicationController
  before_action :set_study_item, only: %i[show edit update destroy concluded unconcluded]

  def index
    @study_items = StudyItem.all
  end

  def show;end

  def new
    @study_item = StudyItem.new
  end

  def edit;end

  def concluded
    @study_item.status = ' ✔ Concluído'
    @study_item.save
    redirect_to study_items_path
  end

  def unconcluded
    @study_item.status = ' ❌ Pendente'
    @study_item.save
    redirect_to study_items_path
  end

  def create
    @study_item = StudyItem.new(study_item_params)
      if @study_item.save
        redirect_to @study_item
      else
        render :new 
      end
  end

  def update
      if @study_item.update(study_item_params)
        redirect_to @study_item
      else
        render :edit
      end
  end

  def destroy
    @study_item.destroy
    redirect_to study_items_url
  end

  private
    def set_study_item
      @study_item = StudyItem.find(params[:id])
    end

    def study_item_params
      params.require(:study_item).permit(:title, :category_id, :description, :deadline, :status)
    end
end
