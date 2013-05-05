class Booking < ActiveRecord::Base
  attr_accessible :bookingDate, :customerName, :peopleNo, :email, :contactNumber
  validates :peopleNo, :presence => true, :inclusion => { :in => 1..6 }
  validates :email, :presence => true, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create }
  validates :email, :presence => true, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :update }
  validates :customerName, :presence => true, :length => { :maximum => 30 }
  validates :contactNumber, :presence => true, :length =>  { :is => 10 }, :numericality => { :only_integer => true }
  
end
