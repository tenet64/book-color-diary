class CreateBooks < ActiveRecord::Migration[8.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :color_code
      t.text :comment
      t.string :impression

      t.timestamps
    end
  end
end
