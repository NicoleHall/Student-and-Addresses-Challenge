class ChangesColumnsOnAddress < ActiveRecord::Migration
  def change
    add_column :addresses, :is_current, :boolean, null: false
    add_column :addresses, :street, :string, null: false
    add_column :addresses, :city, :string, null: false
    add_column :addresses, :state, :string, null: false
    remove_column :addresses, :current_address, :text
    remove_column :addresses, :previous_address, :text
  end
end
