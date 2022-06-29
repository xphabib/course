# == Schema Information
#
# Table name: course_lesson_view_details
#
#  id               :bigint           unsigned, not null, primary key
#  video_time       :integer          not null
#  created_at       :datetime
#  updated_at       :datetime
#  course_id        :bigint           unsigned, not null
#  course_lesson_id :bigint           unsigned, not null
#  user_id          :bigint           unsigned, not null
#
class CourseLessonViewDetail < ActiveRecord::Base
  belongs_to :course_lesson
  belongs_to :course
end
