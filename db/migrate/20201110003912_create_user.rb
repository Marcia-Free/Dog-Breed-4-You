class CreateUser < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :activity_level
      t.string :dog_size
      t.boolean :kid_friendly
  end
end
end
