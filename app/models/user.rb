class User < ActiveRecord::Base
  has_many :tipis
  validates_uniqueness_of :email
end
