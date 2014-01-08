class CreateContactForms < ActiveRecord::Migration
  def change
    create_table :contact_forms do |t|
      t.string :name
      t.string :email
      t.integer :age
      t.string :training_program
      t.text :goals
      t.text :availability

      t.timestamps
    end
  end
end
