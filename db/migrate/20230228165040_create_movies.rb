class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.date :year
      t.text :description
      t.integer :user_id
    end
  end
end
