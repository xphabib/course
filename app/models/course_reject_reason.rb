# == Schema Information
#
# Table name: course_reject_reasons
#
#  id         :bigint           unsigned, not null, primary key
#  reason     :text(65535)      not null
#  created_at :datetime
#  updated_at :datetime
#  course_id  :bigint           unsigned, not null
#  user_id    :bigint           unsigned, not null
#
class CourseRejectReason < ActiveRecord::Base



end
