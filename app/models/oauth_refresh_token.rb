# == Schema Information
#
# Table name: oauth_refresh_tokens
#
#  id              :string(100)      not null, primary key
#  expires_at      :datetime
#  revoked         :boolean          not null
#  access_token_id :string(100)      not null
#
# Indexes
#
#  oauth_refresh_tokens_access_token_id_index  (access_token_id)
#
class OauthRefreshToken < ActiveRecord::Base



end
