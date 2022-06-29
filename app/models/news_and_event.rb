# == Schema Information
#
# Table name: news_and_events
#
#  id          :bigint           unsigned, not null, primary key
#  description :text(65535)      not null
#  headline    :string(255)      not null
#  photo       :string(255)
#  serial      :integer          not null
#  story_date  :date             not null
#  title       :string(255)      not null
#  type        :integer          not null
#  created_at  :datetime
#  updated_at  :datetime
#
class NewsAndEvent < ActiveRecord::Base


    self.inheritance_column = :ruby_type
end
