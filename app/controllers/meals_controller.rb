class MealsController < ApplicationController
  before_action :set_meal, only: [:show, :edit, :update, :destroy]

  # GET /meals
  # GET /meals.json
  def index
    @meals = Meal.all
    @restaurant = Restaurant.find(params[:restaurant_id])

  end

  # GET /meals/1
  # GET /meals/1.json
  def show
    @comments = Comment.where(meal_id: params[:meal_id])

  end

  # GET /meals/new
  def new
    @meal = Meal.new
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  # GET /meals/1/edit
  def edit
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  # POST /meals
  # POST /meals.json
  def create
    @meal = Meal.new(meal_params)
    @restaurant = Restaurant.find(params[:restaurant_id])
    @meal.restaurant_id = @restaurant.id

    respond_to do |format|
      if @meal.save
        format.html { redirect_to restaurant_meal_path(@restaurant, @meal), notice: 'Meal was successfully created.' }
        format.json { render :show, status: :created, location: @meal }
      else
        format.html { render :new }
        format.json { render json: @meal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /meals/1
  # PATCH/PUT /meals/1.json
  def update
    authorize @meal
    @restaurant = Restaurant.find(params[:restaurant_id])

    respond_to do |format|
      if @meal.update(meal_params)
        format.html { redirect_to restaurant_meal_path(@restaurant, @meal), notice: 'Meal was successfully updated.' }
        format.json { render :show, status: :ok, location: @meal }
      else
        format.html { render :edit }
        format.json { render json: @meal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /meals/1
  # DELETE /meals/1.json
  def destroy
    @meal.destroy
    respond_to do |format|
      format.html { redirect_to restaurant_meals_url, notice: 'Meal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_meal
      @meal = Meal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def meal_params
      params.require(:meal).permit(:title, :ingredients, :vegetarian, :vegan, :cuisine, :gluten_free, :takeaway, :restaurant_id, :image)
    end
end
