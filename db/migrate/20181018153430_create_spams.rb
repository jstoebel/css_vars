class CreateSpams < ActiveRecord::Migration[5.1]
  def change
    create_table :spams do |t|

      t.timestamps
    end
  end
end
