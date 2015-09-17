class Person < ActiveRecord::Base

  def self.search_me(query)
    where('name LIKE ? OR age LIKE ?', "%#{query}%", "%#{query}%")
  end
end
