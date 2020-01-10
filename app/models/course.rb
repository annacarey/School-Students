class Course < ApplicationRecord
    belongs_to :teacher
    has_many :students, through: :course_students
    has_many :course_students
end
