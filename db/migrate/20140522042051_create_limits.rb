class CreateLimits < ActiveRecord::Migration
  def change
    create_table :limits do |t|
      t.string :limit

      t.timestamps
    end
  end
end
