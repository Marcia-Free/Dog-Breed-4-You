class CreateUsersBreeds < ActiveRecord::Migration[6.0]
  def change
    create_table :users_breeds do |t|
      t.integer :user_id
      t.integer :breed_id

    end
  end

end
