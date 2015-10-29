class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.text :current_address
      t.text :previous_address
    end
  end
end
