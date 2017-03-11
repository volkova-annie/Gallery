class RenameColumnInImages < ActiveRecord::Migration[5.0]
  def change
  	rename_column :images, :av_value, :ave_value
  end
end
