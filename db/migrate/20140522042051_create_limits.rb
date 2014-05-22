class CreateLimits < ActiveRecord::Migration
  def change
    create_table :limits do |t|
      t.string :type
      t.number :number
      t.timestamps
    end
  end
end
