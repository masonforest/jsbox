class CreateScripts < ActiveRecord::Migration
  def change
    create_table :scripts do |t|
      t.string :body
      t.string :name

      t.timestamps
    end
  end
end
