class AddPositionToPersonalportfolios < ActiveRecord::Migration[5.2]
  def change
    add_column :personalportfolios, :position, :integer
  end
end
