class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.text :B_id
      t.text :B_title
      t.text :Author
      t.text :Publisher
      t.text :Year

      t.timestamps
    end
  end
end
