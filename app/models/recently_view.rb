# == Schema Information
#
# Table name: recently_views
#
#  id         :bigint           unsigned, not null, primary key
#  course_ids :json             not null
#  created_at :datetime
#  updated_at :datetime
#  user_id    :string(255)      not null
#
class RecentlyView < ActiveRecord::Base



end
