class CreateFrits < ActiveRecord::Migration
  def change
    create_table :frits do |t|
      t.string :prompt
      t.string :limit
      t.text :content
      t.references :user, index: true
      t.datetime :posted_on

      t.timestamps
    end
  end
end
