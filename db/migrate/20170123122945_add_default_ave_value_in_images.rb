class AddDefaultAveValueInImages < ActiveRecord::Migration[5.0]
  def change
  	change_column_default :images, :ave_value, from: nil, to: 0
  end
end
