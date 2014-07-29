class Picture < ActiveRecord::Base
	belongs_to :category
	has_many :votes
	has_many :reviews
	acts_as_voteable
end
