# == Schema Information
#
# Table name: course_resources
#
#  id          :bigint           unsigned, not null, primary key
#  description :text(65535)      not null
#  link        :string(255)
#  photo       :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#  course_id   :bigint           unsigned, not null
#  user_id     :bigint           unsigned, not null
#
class CourseResource < ActiveRecord::Base



end
