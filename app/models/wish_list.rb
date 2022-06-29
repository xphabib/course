# == Schema Information
#
# Table name: wish_lists
#
#  id         :bigint           unsigned, not null, primary key
#  created_at :datetime
#  updated_at :datetime
#  course_id  :bigint           unsigned, not null
#  user_id    :bigint           unsigned, not null
#
class WishList < ActiveRecord::Base



end
