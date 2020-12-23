class CreateEmployees < ActiveRecord::Migration[6.0]
  def change
    create_table :employees do |t|
      t.string :name
      t.text :address
      t.string :email
      t.string :phone
      t.date :dob

      t.timestamps
    end
  end
end
