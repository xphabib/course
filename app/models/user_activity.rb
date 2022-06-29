# == Schema Information
#
# Table name: user_activities
#
#  id         :bigint           unsigned, not null, primary key
#  activity   :text(65535)      not null
#  created_at :datetime
#  updated_at :datetime
#  user_id    :bigint           unsigned, not null
#
class UserActivity < ActiveRecord::Base



end
