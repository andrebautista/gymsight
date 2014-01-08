class ChangeAgeToString < ActiveRecord::Migration
  def up
    change_table :contact_forms do |t|
     t.change :age, :string
    end
  end

  def down
    change_table :contact_forms do |t|
     t.change :age, :integer
    end
  end
end
