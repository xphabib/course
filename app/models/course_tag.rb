# == Schema Information
#
# Table name: course_tags
#
#  id         :bigint           unsigned, not null, primary key
#  tag        :string(255)      not null
#  created_at :datetime
#  updated_at :datetime
#  course_id  :bigint           unsigned, not null
#
class CourseTag < ActiveRecord::Base



end
