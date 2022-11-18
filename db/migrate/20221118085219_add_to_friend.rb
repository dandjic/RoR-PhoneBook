class AddToFriend < ActiveRecord::Migration[7.0]
  def change
    add_column :friends, :first_name, :string, :limit =>25
    add_column :friends, :last_name,  :string, :limit =>25
    add_column :friends, :email,      :string, :limit =>20
    add_column :friends, :address,    :string 
    add_column :friends, :birth_date, :date
    add_column :friends, :phone,      :string
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
