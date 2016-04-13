class User < ActiveRecord::Base
  has_many :tipis
  validates :name, :uniqueness => true
end
