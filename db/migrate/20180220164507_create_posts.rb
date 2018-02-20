class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.date :date
      t.text :Rationale

      t.timestamps
    end
  end
end
