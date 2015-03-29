class CreateStudentinfos < ActiveRecord::Migration
  def change
    create_table :studentinfos do |t|

      t.timestamps null: false
    end
  end
end
