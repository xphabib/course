# == Schema Information
#
# Table name: websockets_statistics_entries
#
#  id                      :integer          unsigned, not null, primary key
#  api_message_count       :integer          not null
#  peak_connection_count   :integer          not null
#  websocket_message_count :integer          not null
#  created_at              :datetime
#  updated_at              :datetime
#  app_id                  :string(255)      not null
#
class WebsocketsStatisticsEntry < ActiveRecord::Base



end
