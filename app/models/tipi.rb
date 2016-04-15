class Tipi < ActiveRecord::Base
  belongs_to :user

  def self.search(query)
    where("LOWER(title) like ?", "%#{query.downcase}%")
  end
end
