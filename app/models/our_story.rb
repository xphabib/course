# == Schema Information
#
# Table name: our_stories
#
#  id          :bigint           unsigned, not null, primary key
#  description :text(65535)      not null
#  headline    :string(255)      not null
#  photo       :string(255)
#  story_date  :date             not null
#  title       :string(255)      not null
#  created_at  :datetime
#  updated_at  :datetime
#
class OurStory < ActiveRecord::Base



end
