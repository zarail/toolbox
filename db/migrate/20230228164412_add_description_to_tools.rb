class AddDescriptionToTools < ActiveRecord::Migration[7.0]
  def change
    add_column :tools, :description, :text
  end
end
