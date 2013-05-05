class Subscribe < ActiveRecord::Base
  attr_accessible :contactNo, :customerName, :email, :password
  validates :contactNo, :presence => true, :length =>  { :is => 10 }, :numericality => { :only_integer => true }
  validates :customerName, :presence => true, :length => { :maximum => 30 }
  validates :email, :presence => true, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create }
  validates :email, :presence => true, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :update }
end
