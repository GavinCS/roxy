ActiveAdmin.register ClearancePage do
 
 menu :priority => 2, :label => "Subscribers"

 index :title => 'Subscriptions' do
 
                           
   column 'First Name' , :firstname   
   column 'Last Name' , :lastname
   column 'Gender' , :gender   
   column 'Email' , :email   
   column 'Mobile' , :mobile  
   column 'source' , :source
   column 'created', :created_at
   default_actions
  end

  
end

