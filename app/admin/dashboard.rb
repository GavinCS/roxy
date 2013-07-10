ActiveAdmin.register_page "Dashboard" do

  menu :priority => 1, :label => "Dashboard"

  content :title => 'Roxy - Here is whats been happening recently...'do
   
 columns do

      column do
      end

      column do
        panel "Email Sign Ups" do
           
         strong "Email Signups: " + ClearancePage.count('created_at', :distinct => true).to_s
             
            end
       
          end
        column do
            panel "Download" do
            strong { link_to "Download Subscriptions", clearance_pages_path }
            end
        end
    end


  end #content
end
