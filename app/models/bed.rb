class Bed < ActiveRecord::Base

  belongs_to :owner, class_name: "User", foreign_key: "owner_id"

  validates_presence_of :owner, :name, :street, :zipcode, :city
  validates_format_of :zipcode,
    with: /\A[0-9]{5}\z/,
    message: "Zip code should be valid" ;

end
