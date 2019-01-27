class AddBudgetAndBoxOfficeToMovies < ActiveRecord::Migration[5.2]
  def change
    add_column :movies, :budget, :string
    add_column :movies, :box_office, :string
  end
end
