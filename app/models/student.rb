class Student < ApplicationRecord
    belongs_to :school
    has_many :course_students
    has_many :courses, through: :course_students
end
