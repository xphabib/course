# == Schema Information
#
# Table name: course_sections
#
#  id         :bigint           unsigned, not null, primary key
#  deleted_at :datetime
#  details    :text(4294967295)
#  name       :string(255)      not null
#  serial     :integer          not null
#  created_at :datetime
#  updated_at :datetime
#  course_id  :bigint           unsigned, not null
#
class CourseSection < ActiveRecord::Base
  belongs_to :course
  has_many :course_lessons
end
