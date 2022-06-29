# == Schema Information
#
# Table name: course_lessons
#
#  id                :bigint           unsigned, not null, primary key
#  approval          :integer          default(0), not null
#  deleted_at        :datetime
#  description       :text(65535)      not null
#  duration          :time
#  privacy           :integer          not null
#  serial            :integer          not null
#  status            :boolean          default(FALSE), not null
#  thumbnail         :string(255)
#  title             :string(255)      not null
#  video_url         :string(255)
#  created_at        :datetime
#  updated_at        :datetime
#  course_id         :bigint           unsigned, not null
#  course_section_id :bigint           unsigned, not null
#
class CourseLesson < ActiveRecord::Base
  belongs_to :course
  belongs_to :course_section
  has_many :course_lesson_view_details
end
