class MealCategoriesController < ApplicationController
  # GET /meal_categories
  # GET /meal_categories.json
  def index
    @meal_categories = MealCategory.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @meal_categories }
    end
  end

  # GET /meal_categories/1
  # GET /meal_categories/1.json
  def show
    @meal_category = MealCategory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @meal_category }
    end
  end

  # GET /meal_categories/new
  # GET /meal_categories/new.json
  def new
    @meal_category = MealCategory.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @meal_category }
    end
  end

  # GET /meal_categories/1/edit
  def edit
    @meal_category = MealCategory.find(params[:id])
  end

  # POST /meal_categories
  # POST /meal_categories.json
  def create
    @meal_category = MealCategory.new(params[:meal_category])

    respond_to do |format|
      if @meal_category.save
        format.html { redirect_to @meal_category, notice: 'Meal category was successfully created.' }
        format.json { render json: @meal_category, status: :created, location: @meal_category }
      else
        format.html { render action: "new" }
        format.json { render json: @meal_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /meal_categories/1
  # PUT /meal_categories/1.json
  def update
    @meal_category = MealCategory.find(params[:id])

    respond_to do |format|
      if @meal_category.update_attributes(params[:meal_category])
        format.html { redirect_to @meal_category, notice: 'Meal category was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @meal_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /meal_categories/1
  # DELETE /meal_categories/1.json
  def destroy
    @meal_category = MealCategory.find(params[:id])
    @meal_category.destroy

    respond_to do |format|
      format.html { redirect_to meal_categories_url }
      format.json { head :no_content }
    end
  end
end
