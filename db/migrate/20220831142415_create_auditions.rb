class CreateAuditions < ActiveRecord::Migration[5.2]
  def change


    create_table :auditions do |t|

      # t.datatype :actual_attribute

      t.string :actor
      t.string :location

      t.boolean :hired

      
      t.integer :phone

      t.integer :role_id
      # A [] >- R
    
    end 


  end
end



# auditions Table

# Column	Type

# actor	    string
# location	string
# phone	    integer
# hired	    boolean
# role_id	  integer