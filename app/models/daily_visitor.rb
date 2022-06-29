# == Schema Information
#
# Table name: daily_visitors
#
#  id         :bigint           unsigned, not null, primary key
#  v_date     :date             not null
#  visitor    :integer          not null
#  created_at :datetime
#  updated_at :datetime
#
class DailyVisitor < ActiveRecord::Base



end
