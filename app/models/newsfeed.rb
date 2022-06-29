# == Schema Information
#
# Table name: newsfeeds
#
#  id         :bigint           unsigned, not null, primary key
#  deleted_at :datetime
#  image      :string(255)
#  news_text  :text(65535)      not null
#  created_at :datetime
#  updated_at :datetime
#  course_id  :integer          unsigned, not null
#  user_id    :bigint           unsigned, not null
#
class Newsfeed < ActiveRecord::Base



end
