class AddDetailsToCleans < ActiveRecord::Migration[6.1]
  def change
    add_column :cleans, :overall, :integer
    add_column :cleans, :light, :integer
    add_column :cleans, :power, :integer
  end
end
