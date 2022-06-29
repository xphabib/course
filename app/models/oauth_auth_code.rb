# == Schema Information
#
# Table name: oauth_auth_codes
#
#  id         :string(100)      not null, primary key
#  expires_at :datetime
#  revoked    :boolean          not null
#  scopes     :text(65535)
#  client_id  :bigint           unsigned, not null
#  user_id    :bigint           unsigned, not null
#
# Indexes
#
#  oauth_auth_codes_user_id_index  (user_id)
#
class OauthAuthCode < ActiveRecord::Base



end
