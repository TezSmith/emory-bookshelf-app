class UpdateAuthorTable < ActiveRecord::Migration[5.2]
  def change
    change_table :authors do |t|
      t.rename :name, :first_name
      t.string :last_name
      t.string :middle_name
     end
  end
end
