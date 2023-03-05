class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :year
      t.text :description
      t.string :movie_url
      t.integer :user_id
      t.boolean :originally_fetched
    end
  end
end
