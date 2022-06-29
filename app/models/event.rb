# == Schema Information
#
# Table name: events
#
#  id          :bigint           unsigned, not null, primary key
#  date        :datetime         not null
#  description :text(65535)      not null
#  image_url   :string(255)
#  short_des   :text(65535)      not null
#  status      :integer          default(1), not null
#  title       :string(255)      not null
#  created_at  :datetime
#  updated_at  :datetime
#  user_id     :bigint           unsigned, not null
#
class Event < ActiveRecord::Base



end
