# == Schema Information
#
# Table name: messages
#
#  id              :bigint           unsigned, not null, primary key
#  message         :text(16777215)   not null
#  thumbnail       :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#  conversation_id :bigint           unsigned, not null
#  user_id         :bigint           unsigned, not null
#
class Message < ActiveRecord::Base



end
