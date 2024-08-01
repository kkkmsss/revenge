class AddCareToCleans < ActiveRecord::Migration[6.1]
  def change
    add_column :cleans, :care, :integer
    add_column :cleans, :time, :integer
  end
end
