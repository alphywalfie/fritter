class CreatePrompts < ActiveRecord::Migration
  def change
    create_table :prompts do |t|
      t.string :topic

      t.timestamps
    end
  end
end
