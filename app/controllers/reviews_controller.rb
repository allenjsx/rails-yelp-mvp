class ReviewsController < ApplicationController

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = @restaurant.reviews.new(review_params)
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

private

  def review_params
    review_params = params.require(:review).permit(:content, :rating)
  end
  # def restaurant_find
     # @restaurant = Restaurant.find(params[:restaurant_id])
  # end

end
