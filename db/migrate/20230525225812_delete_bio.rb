class DeleteBio < ActiveRecord::Migration[7.0]
  def change
    remove_column :animals, :binomial
  end
end
