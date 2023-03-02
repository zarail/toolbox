class AddCityToTools < ActiveRecord::Migration[7.0]
  def change
    add_column :tools, :city, :string
  end
end
