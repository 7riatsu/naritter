class CreateMemos < ActiveRecord::Migration
  def change
    create_table :memos do |t|
      t.text :title
      t.text :text
      t.text :image
      t.timestamps
    end
  end
end
