class Picture < ActiveRecord::Base
	belongs_to :category
	acts_as_voteable
end
