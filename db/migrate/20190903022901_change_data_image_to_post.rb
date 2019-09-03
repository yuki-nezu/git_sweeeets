class ChangeDataImageToPost < ActiveRecord::Migration[5.2]
  def change
    change_column :post, :image, :string
  end
end
