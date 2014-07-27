class CategoriesController < ApplicationController
	 before_action :set_category, only: [:show, :edit, :update, :destroy]

  # GET /cuisines
  # GET /cuisines.json
  def index
s
  end

  # GET /cuisines/1
  # GET /cuisines/1.json
  def show
    @categories = Category.all
    @category = Category.find(params[:id])
    @pictures_per_category = @category.pictures

  end 

  # GET /cuisines/new
  def new
    @category = Category.new
  end

  # GET /cuisines/1/edit
  def edit
  end

  # POST /cuisines
  # POST /cuisines.json
  def create
    @category = Category.new(category_params)

    respond_to do |format|
      if @category.save
        format.html { redirect_to @category, notice: 'Category was successfully created.' }
        format.json { render :show, status: :created, location: @category }
      else
        format.html { render :new }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cuisines/1
  # PATCH/PUT /cuisines/1.json
  def update
    respond_to do |format|
      if @category.update(cuisine_params)
        format.html { redirect_to @category, notice: 'Category was successfully updated.' }
        format.json { render :show, status: :ok, location: @category }
      else
        format.html { render :edit }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cuisines/1
  # DELETE /cuisines/1.json
  def destroy
    @category.destroy
    respond_to do |format|
      format.html { redirect_to categories_url, notice: 'Cuisine was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category
      @category = Category.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cuisine_params
      params.require(:category).permit(:name)
    end
end
