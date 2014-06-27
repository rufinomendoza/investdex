class ChangeEntryPagesDefaultToOne < ActiveRecord::Migration
  def change
    change_column :entries, :pages, :integer, :default => 1
  end
end
