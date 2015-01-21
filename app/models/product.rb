class Product < ActiveRecord::Base

	has_many :comments, dependent: :destroy

	validates :name, length: {minimum: 5}

end
