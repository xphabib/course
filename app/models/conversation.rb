# == Schema Information
#
# Table name: conversations
#
#  id           :bigint           unsigned, not null, primary key
#  last_message :text(16777215)   not null
#  status_one   :integer          default(0), unsigned, not null
#  status_two   :integer          default(0), unsigned, not null
#  user_one     :bigint           unsigned, not null
#  user_two     :bigint           unsigned, not null
#  created_at   :datetime
#  updated_at   :datetime
#
class Conversation < ActiveRecord::Base



end
