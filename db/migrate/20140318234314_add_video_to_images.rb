class AddVideoToImages < ActiveRecord::Migration
  def change
    add_column :images, :video, :string
  end
end
