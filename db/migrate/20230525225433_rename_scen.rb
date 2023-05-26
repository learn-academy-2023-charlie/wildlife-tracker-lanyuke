class RenameScen < ActiveRecord::Migration[7.0]
  def change
    rename_column :animals, :scientific, :scientific_binomial
  end
end
