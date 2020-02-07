class Book < ActiveRecord::Base
  serialize :author_refrences, Array

  attr_accessor :author_refrences

  has_and_belongs_to_many :authors
end
