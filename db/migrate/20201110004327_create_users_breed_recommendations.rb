class CreateUsersBreedRecommendations < ActiveRecord::Migration[6.0]
  def change
    create_table :users_breed_recommendations do |t|
      t.integer :breed_id 
      t.integer :user_id 
    end
  end
end
