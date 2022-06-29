# == Schema Information
#
# Table name: withdraw_requests
#
#  id                     :bigint           unsigned, not null, primary key
#  amount                 :float(53)        default(0.0), not null
#  approved_by            :bigint           unsigned
#  reject_reason          :text(65535)
#  status                 :integer          default(0), not null
#  created_at             :datetime
#  updated_at             :datetime
#  user_id                :bigint           unsigned, not null
#  user_payment_method_id :bigint           unsigned, not null
#
class WithdrawRequest < ActiveRecord::Base



end
