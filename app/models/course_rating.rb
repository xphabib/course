# == Schema Information
#
# Table name: course_ratings
#
#  id         :bigint           unsigned, not null, primary key
#  comment    :text(65535)
#  star       :float(53)        default(0.0), not null
#  created_at :datetime
#  updated_at :datetime
#  course_id  :bigint           unsigned, not null
#  user_id    :bigint           unsigned, not null
#
class CourseRating < ActiveRecord::Base



end
