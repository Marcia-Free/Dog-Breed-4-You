class CreateBreedRecommendation < ActiveRecord::Migration[6.0]
  def change
    create_table :pet_recommendations do |t|
      t.string :breed_name
      t.string :activity_level
      t.string :dog_size
      t.boolean :kid_friendly
  end
end
end
