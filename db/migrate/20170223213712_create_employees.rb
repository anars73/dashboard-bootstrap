class CreateEmployees < ActiveRecord::Migration[5.0]
  def change
    create_table :employees do |t|
      t.integer :company_id
      t.string :first_name
      t.string :last_name
      t.integer :personal_code
      t.string :email

      t.timestamps
    end
    add_foreign_key(:companies, :employees)
  end
end
