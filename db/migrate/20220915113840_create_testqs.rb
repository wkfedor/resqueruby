class CreateTestqs < ActiveRecord::Migration[7.0]
  def change
    create_table :testqs do |t|
      t.integer :countq
      t.integer :nowq
      t.string :commentq

      t.timestamps
    end
  end
end
