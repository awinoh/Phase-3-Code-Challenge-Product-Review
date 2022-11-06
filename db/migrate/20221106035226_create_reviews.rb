class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_tables :reviews do |t|
      t.integer :star_rating
      t.string  :comment
      t.integer :product_id
  end
end
end
