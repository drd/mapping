class CreateOutcomes < ActiveRecord::Migration
  def change
    create_table :outcomes do |t|
      t.string :title
      t.string :key

      t.timestamps
    end
  end
end
