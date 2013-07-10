class ClearancePage < ActiveRecord::Base
   attr_accessible :firstname, :lastname, :email, :gender, :mobile, :source, :marketing_media

   EMAIL_REGEX = /^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$/i

  validates_presence_of [:firstname, :lastname, :email, :gender, :marketing_media],  :message => "is required"
  validates :email, :format => EMAIL_REGEX
  validates :mobile, :format => { :with => /[0-9]{10,13}+/, :message => "only valid mobile numbers are allowed" }, :allow_blank => true
  validates :source, :presence => true
  validates_uniqueness_of :email, :case_sensitive => false , :message => "address is already subscribed"
end
