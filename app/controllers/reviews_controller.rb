class ReviewsController < ApplicationController
  before_action :require_user, except: [:show]
    
    def create
      @recipe = Recipe.find(params[:recipe_id])
      @review = @recipe.reviews.new(review_params)
      @review.chef = current_user
      
      respond_to do |format|
        if @review.save
          format.html { redirect_to @recipe, notice: 'Your Review was successfully created.' }
        else
          format.html { render action: "new" }
        end
      end
    end
  
  private
    def review_params
      params.require(:review).permit(:recipe_id, :body, :chef_id)
    end
  
end