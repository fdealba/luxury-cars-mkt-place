class AddCarToReviews < ActiveRecord::Migration[5.2]
  def change
    add_reference :reviews, :car, foreign_key: true
  end
end