class CreateCleans < ActiveRecord::Migration[6.1]
  def change
    create_table :cleans do |t|
      t.string :maker
      t.string :name
      t.string :genre
      t.text :about
      t.string :cost

      t.timestamps
    end
  end
end
