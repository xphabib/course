# == Schema Information
#
# Table name: course_lesson_notes
#
#  id               :bigint           unsigned, not null, primary key
#  note             :text(65535)      not null
#  subject          :string(255)      not null
#  video_time       :integer          not null
#  created_at       :datetime
#  updated_at       :datetime
#  course_lesson_id :bigint           unsigned, not null
#  user_id          :bigint           unsigned, not null
#
class CourseLessonNote < ActiveRecord::Base



end
