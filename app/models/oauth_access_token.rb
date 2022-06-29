# == Schema Information
#
# Table name: oauth_access_tokens
#
#  id         :string(100)      not null, primary key
#  expires_at :datetime
#  name       :string(255)
#  revoked    :boolean          not null
#  scopes     :text(65535)
#  created_at :datetime
#  updated_at :datetime
#  client_id  :bigint           unsigned, not null
#  user_id    :bigint           unsigned
#
# Indexes
#
#  oauth_access_tokens_user_id_index  (user_id)
#
class OauthAccessToken < ActiveRecord::Base



end
