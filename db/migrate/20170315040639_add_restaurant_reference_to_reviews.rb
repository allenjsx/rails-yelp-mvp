class AddRestaurantReferenceToReviews < ActiveRecord::Migration[5.0]
  def change
    add_reference :reviews, :restaurant
  end
end
