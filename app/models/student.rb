class Student < ActiveRecord::Base
  has_many :addresses #this has many can both get and assign addresses
  has_many :enrollments
  has_many :courses, through: :enrollments
end
