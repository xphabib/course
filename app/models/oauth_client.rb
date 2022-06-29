# == Schema Information
#
# Table name: oauth_clients
#
#  id                     :bigint           unsigned, not null, primary key
#  name                   :string(255)      not null
#  password_client        :boolean          not null
#  personal_access_client :boolean          not null
#  provider               :string(255)
#  redirect               :text(65535)      not null
#  revoked                :boolean          not null
#  secret                 :string(100)
#  created_at             :datetime
#  updated_at             :datetime
#  user_id                :bigint           unsigned
#
# Indexes
#
#  oauth_clients_user_id_index  (user_id)
#
class OauthClient < ActiveRecord::Base



end
