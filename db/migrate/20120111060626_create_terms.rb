class CreateTerms < ActiveRecord::Migration
  def change
    create_table :terms do |t|
      t.string :name

      t.timestamps
    end

    add_column :offerings, :term_id, :integer
  end
end
