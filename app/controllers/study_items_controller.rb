class StudyItemsController < ApplicationController
  before_action :set_study_item, only: [:show, :edit, :update, :destroy]

  # GET /study_items
  # GET /study_items.json
  def index
    @study_items = StudyItem.all
  end

  # GET /study_items/1
  # GET /study_items/1.json
  def show
  end

  # GET /study_items/new
  def new
    @study_item = StudyItem.new
  end

  # GET /study_items/1/edit
  def edit
  end

  # POST /study_items
  # POST /study_items.json
  def create
    @study_item = StudyItem.new(study_item_params)

    respond_to do |format|
      if @study_item.save
        format.html { redirect_to @study_item, notice: 'Study item was successfully created.' }
        format.json { render :show, status: :created, location: @study_item }
      else
        format.html { render :new }
        format.json { render json: @study_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /study_items/1
  # PATCH/PUT /study_items/1.json
  def update
    respond_to do |format|
      if @study_item.update(study_item_params)
        format.html { redirect_to @study_item, notice: 'Study item was successfully updated.' }
        format.json { render :show, status: :ok, location: @study_item }
      else
        format.html { render :edit }
        format.json { render json: @study_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /study_items/1
  # DELETE /study_items/1.json
  def destroy
    @study_item.destroy
    respond_to do |format|
      format.html { redirect_to study_items_url, notice: 'Study item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_study_item
      @study_item = StudyItem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def study_item_params
      params.require(:study_item).permit(:title, :category)
    end
end
