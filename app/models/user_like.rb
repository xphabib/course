# == Schema Information
#
# Table name: user_likes
#
#  id         :bigint           unsigned, not null, primary key
#  like_ip    :string(255)      not null
#  type       :string(255)      not null
#  created_at :datetime
#  updated_at :datetime
#  ref_id     :bigint           unsigned, not null
#  user_id    :bigint           unsigned, not null
#
class UserLike < ActiveRecord::Base


    self.inheritance_column = :ruby_type
end
