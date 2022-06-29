# == Schema Information
#
# Table name: oauth_personal_access_clients
#
#  id         :bigint           unsigned, not null, primary key
#  created_at :datetime
#  updated_at :datetime
#  client_id  :bigint           unsigned, not null
#
class OauthPersonalAccessClient < ActiveRecord::Base



end
