class CreateWatsons < ActiveRecord::Migration[5.2]
  def change
    create_table :watsons do |t|

      t.timestamps
    end
  end
end
