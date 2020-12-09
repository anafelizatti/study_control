class StudyItemsController < ApplicationController
  before_action :set_study_item, only: [:show, :edit, :update, :destroy]

  def index
    @study_items = StudyItem.all
  end

  def show
  end

  def new
    @study_item = StudyItem.new
  end

  def edit
  end

  def create
    @study_item = StudyItem.new(study_item_params)

    respond_to do |format|
      if @study_item.save
        format.html { redirect_to @study_item, notice: 'Item criado! Vamos estudar :) .' }
        format.json { render :show, status: :created, location: @study_item }
      else
        format.html { render :new }
        format.json { render json: @study_item.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @study_item.update(study_item_params)
        format.html { redirect_to @study_item, notice: 'O tópico foi atualizado com sucesso.' }
        format.json { render :show, status: :ok, location: @study_item }
      else
        format.html { render :edit }
        format.json { render json: @study_item.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @study_item.destroy
    respond_to do |format|
      format.html { redirect_to study_items_url, notice: 'O tópico foi deletado.' }
      format.json { head :no_content }
    end
  end

  private
    def set_study_item
      @study_item = StudyItem.find(params[:id])
    end

    def study_item_params
      params.require(:study_item).permit(:title, :category, :description, :deadline)
    end
end
