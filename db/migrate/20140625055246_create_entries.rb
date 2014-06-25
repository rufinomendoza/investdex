class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :title
      t.string :author
      t.text :comments
      t.datetime :publication_date
      t.integer :pages
      t.boolean :data_heavy
      t.boolean :forecast
      t.string :url

      t.timestamps
    end
  end
end
