class CreateMessagewatsons < ActiveRecord::Migration[5.2]
  def change
    create_table :messagewatsons do |t|

      t.timestamps
    end
  end
end
