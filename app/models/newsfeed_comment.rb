# == Schema Information
#
# Table name: newsfeed_comments
#
#  id                  :bigint           unsigned, not null, primary key
#  comment             :text(65535)      not null
#  comment_ip          :string(255)      not null
#  image               :string(255)
#  created_at          :datetime
#  updated_at          :datetime
#  newsfeed_comment_id :bigint           unsigned
#  newsfeed_id         :bigint           unsigned, not null
#  user_id             :bigint           unsigned, not null
#
class NewsfeedComment < ActiveRecord::Base



end
