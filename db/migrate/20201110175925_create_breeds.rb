class CreateBreeds < ActiveRecord::Migration[6.0]
  def change
    create_table :breeds do |t|
      t.string :breed
      t.string :activity_level
      t.string :dog_size
      t.string :kid_friendly
      t.string :hypoallergenic

      t.timestamps
    end
  end
end
