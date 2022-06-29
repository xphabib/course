# == Schema Information
#
# Table name: user_notifications
#
#  id           :bigint           unsigned, not null, primary key
#  notification :text(16777215)   not null
#  status       :boolean          default(FALSE), not null
#  created_at   :datetime
#  updated_at   :datetime
#  user_id      :bigint           unsigned, not null
#
class UserNotification < ActiveRecord::Base



end
