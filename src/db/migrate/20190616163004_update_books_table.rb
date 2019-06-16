class UpdateBooksTable < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :year_published, :string
    add_column :books, :format, :string
  end
end
