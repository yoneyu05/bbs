class CreateDelrequests < ActiveRecord::Migration[5.1]
  def change
    create_table :delrequests do |t|
      t.string :address
      t.string :del_id
      t.text :reason

      t.timestamps
    end
  end
end
